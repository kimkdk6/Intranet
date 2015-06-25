package controllers;

import java.security.Principal;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.SignDAO;
import dto_vo.Emp.Dept;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Position;
import dto_vo.Emp.Team;
import dto_vo.Sign.Draftingdoc;
import dto_vo.Sign.Sign;
import dto_vo.Sign.Signline;

@Controller
@RequestMapping("/sign/")
public class Signcontroller {

	@Autowired
	private SqlSession sqlsession;

	
	
	// 전자 결재 메인 페이지 보기
	@RequestMapping(value = "SignMain.htm")
	public String SignMain(Model model, Principal principal)
			throws ClassNotFoundException, SQLException {

		System.out.println("전자결재 메인 페이지 열람");
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		List<Sign> unsignlist = signdao.getUnSigns(principal.getName());
		List<Sign> sendsignlist = signdao.getSendSigns(principal.getName());

		model.addAttribute("unsignlist", unsignlist);
		model.addAttribute("sendsignlist", sendsignlist);
		return "sign.SignMain";
	}
	
	// 올린 결재 문서함 > 상신 문서 페이지 보기
		@RequestMapping(value = "SendsignsList.htm")
		public String SendsignsList(Model model, Principal principal)
				throws ClassNotFoundException, SQLException {

			System.out.println("상신 문서 페이지 열람");
			SignDAO signdao = sqlsession.getMapper(SignDAO.class);
			 
			List<Sign> sendsignlist = signdao.getSendSigns(principal.getName());
			 
			model.addAttribute("sendsignlist", sendsignlist);
			return "sign.SendsignsList";
		}

	// 기안서 작성 페이지 보기
	@RequestMapping(value = "DraftingReg.htm", method = RequestMethod.GET)
	public String DraftingReg(Model model) throws ClassNotFoundException,
			SQLException {
		System.out.println("기안서 작성 페이지 열람");
		// 부서
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		List<Dept> dept = signdao.getDepts();
		// 팀
		List<Team> team = signdao.getTeams();
		// 사원
		List<Emp> emp = signdao.getEmps();
		// 직급
		List<Position> pos = signdao.getPositions();

		model.addAttribute("dept", dept);
		model.addAttribute("emp", emp);
		model.addAttribute("team", team);
		model.addAttribute("pos", pos);

		return "sign.DraftingReg";
	}

	// 기안서 작성
	@Transactional
	@RequestMapping(value = "DraftingReg.htm", method = RequestMethod.POST)
	public String DraftingReg(Sign sign, Draftingdoc drafting,
			Signline signline, Principal principal)
			throws ClassNotFoundException, SQLException {
		int totalsign=0;
		System.out.println("기안서 작성");
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		System.out.println(drafting.toString());
		
		// 결재인 넣기 
		sign.setSigner1(principal.getName());
		sign.setUserid(principal.getName());
		System.out.println(sign.toString());
		
		// 결재라인 : 1>승인 2>반려 3>대기
		signline.setSignok1(1);
		if (sign.getSigner2() != null) {
			signline.setSignok2(3);
			totalsign++;
		}
		if (sign.getSigner3() != null) {
			signline.setSignok3(3);
			totalsign++;
		}
		if (sign.getSigner4() != null) {
			signline.setSignok4(3);
			totalsign++;
		}
		if (sign.getSigner5() != null) {
			signline.setSignok5(3);
			totalsign++;
		}
		
		// sign: totalsign
		System.out.println("totalsign: "+totalsign);
		sign.setTotalsign(totalsign);
		
		// signline: signning 
		
		signline.setSignning(sign.getSigner2());
		
		System.out.println(signline.toString());
		signdao.insertSign(sign);
		signdao.insertSignline(signline);
		signdao.insertDrafting(drafting);

		return "redirect:SignMain.htm";
	}

	// 기안서 상세 페이지 보기
	@RequestMapping(value = "DraftingDetail.htm", method = RequestMethod.GET)
	public String DraftingDetail(String docnum, Model model)
			throws ClassNotFoundException, SQLException {
		System.out.println("기안서 상세페이지 보기");

		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		// 결재 문서(기본 내용)
		Sign sign = signdao.getSign(docnum);
		// 기안서
		Draftingdoc draftingdoc = signdao.getDraftingdoc(docnum);
		// 결재라인
		Signline signline = signdao.getSignline(docnum);

		model.addAttribute("sign", sign);
		model.addAttribute("draftingdoc", draftingdoc);
		model.addAttribute("signline", signline);
		return "sign.DraftingDetail";
	}
	
	// 결재문서 승인
	@Transactional
	@RequestMapping(value = "signOK.htm", method = RequestMethod.POST)
	public String signOK(String docnum)
			throws ClassNotFoundException, SQLException {
		System.out.println("결재 승인");
		System.out.println("승인처리된 결재 문서: "+docnum);
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		Sign sign = signdao.getSign(docnum);
		//
		int totalsign = sign.getTotalsign();
		int currsign = sign.getCurrsign();
		
		if(currsign == totalsign-1){// 현재 결재수가 총 결재수보다 하나 작으면 최종 결재자까지 갔다
			signdao.updateSignline("signok"+String.valueOf(currsign+2), "결재완료", docnum, 1);
			// sign => currsign ..
			signdao.updateSignCurr(docnum);
			// sign => singstate-> 바뀜
			signdao.updateSignState(docnum, "1");
		}else if(currsign < totalsign){
			if(currsign == 0){
				// signlign=> signok2 가 바뀜 -> 1
				// signning=> signning => signer3 
				signdao.updateSignline("signok2", sign.getSigner3(), docnum, 1);
				// sign=> currsign -> 1 update
				signdao.updateSignCurr(docnum);
			}else if(currsign == 1){
				// signok3 가 바뀜
				signdao.updateSignline("signok3", sign.getSigner4(), docnum, 1);
				signdao.updateSignCurr(docnum);
			}else if(currsign == 2){
				// signok4 가 바뀜
				signdao.updateSignline("signok4", sign.getSigner5(), docnum, 1);
				signdao.updateSignCurr(docnum);
			}
		} 
	
		return "redirect:SignMain.htm";
	}

	// 결재문서 반려
	@Transactional
	@RequestMapping(value = "reject.htm", method = RequestMethod.POST)
	public String reject(String docnum)
			throws ClassNotFoundException, SQLException {
		System.out.println("결재 반려");
		System.out.println("반려처리된 결재 문서: "+docnum);
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		Sign sign = signdao.getSign(docnum);
		
		int totalsign = sign.getTotalsign();
		int currsign = sign.getCurrsign();
			
		if(currsign < totalsign){
			signdao.updateSignline("signok"+String.valueOf(currsign+2), "결재반려", docnum, 2);
			// sign => singstate-> 바뀜
			signdao.updateSignState(docnum,"2");
		}
		
		return "redirect:SignMain.htm";
	}
	
	// 발주서 작성 페이지 보기
	@RequestMapping(value = "OrderDocReg.htm", method = RequestMethod.GET)
	public String OrderDocReg(Model model) throws ClassNotFoundException,
			SQLException {
		System.out.println("발주서 작성 페이지 열람");
		// 부서
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		List<Dept> dept = signdao.getDepts();
		// 팀
		List<Team> team = signdao.getTeams();
		// 사원
		List<Emp> emp = signdao.getEmps();
		// 직급
		List<Position> pos = signdao.getPositions();

		model.addAttribute("dept", dept);
		model.addAttribute("emp", emp);
		model.addAttribute("team", team);
		model.addAttribute("pos", pos);

		return "sign.OrderDocReg";
	}

	// 발주서 상세 페이지 보기
	@RequestMapping(value = "OrderDocDetail.htm", method = RequestMethod.GET)
	public String OrderDocDetail(String docnum, Model model)
			throws ClassNotFoundException, SQLException {
		System.out.println("발주서 상세페이지 보기");

		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		// 결재 문서(기본 내용)
		Sign sign = signdao.getSign(docnum);
		// 기안서
		Draftingdoc draftingdoc = signdao.getDraftingdoc(docnum);
		// 결재라인
		Signline signline = signdao.getSignline(docnum);

		model.addAttribute("sign", sign);
		model.addAttribute("draftingdoc", draftingdoc);
		model.addAttribute("signline", signline);
		return "sign.OrderDocDetail";
	}

	// 휴가계 작성 페이지 보기
	@RequestMapping(value = "HolidayDocReg.htm", method = RequestMethod.GET)
	public String HolidayDocReg(Model model) throws ClassNotFoundException,
			SQLException {
		System.out.println("휴가계 작성 페이지 열람");
		// 부서
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		List<Dept> dept = signdao.getDepts();
		// 팀
		List<Team> team = signdao.getTeams();
		// 사원
		List<Emp> emp = signdao.getEmps();
		// 직급
		List<Position> pos = signdao.getPositions();

		model.addAttribute("dept", dept);
		model.addAttribute("emp", emp);
		model.addAttribute("team", team);
		model.addAttribute("pos", pos);

		return "sign.HolidayDocReg";
	}

	// 휴가계 상세 페이지 보기
	@RequestMapping(value = "HolidayDocDetail.htm", method = RequestMethod.GET)
	public String HolidayDocDetail(String docnum, Model model)
			throws ClassNotFoundException, SQLException {
		System.out.println("휴가계 상세페이지 보기");

		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		// 결재 문서(기본 내용)
		Sign sign = signdao.getSign(docnum);
		// 기안서
		Draftingdoc draftingdoc = signdao.getDraftingdoc(docnum);
		// 결재라인
		Signline signline = signdao.getSignline(docnum);

		model.addAttribute("sign", sign);
		model.addAttribute("draftingdoc", draftingdoc);
		model.addAttribute("signline", signline);
		return "sign.HolidayDocDetail";
	}

	// 출장 신청서 작성 페이지 보기
	@RequestMapping(value = "BizTripDocReg.htm", method = RequestMethod.GET)
	public String BizTripDocReg(Model model) throws ClassNotFoundException,
			SQLException {
		System.out.println("출장 신청서 작성 페이지 열람");
		// 부서
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		List<Dept> dept = signdao.getDepts();
		// 팀
		List<Team> team = signdao.getTeams();
		// 사원
		List<Emp> emp = signdao.getEmps();
		// 직급
		List<Position> pos = signdao.getPositions();

		model.addAttribute("dept", dept);
		model.addAttribute("emp", emp);
		model.addAttribute("team", team);
		model.addAttribute("pos", pos);

		return "sign.BizTripDocReg";
	}

	// 출장 신청서 상세 페이지 보기
	@RequestMapping(value = "BizTripDocDetail.htm", method = RequestMethod.GET)
	public String BizTripDocDetail(String docnum, Model model)
			throws ClassNotFoundException, SQLException {
		System.out.println("출장 신청서 상세페이지 보기");

		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		// 결재 문서(기본 내용)
		Sign sign = signdao.getSign(docnum);
		// 기안서
		Draftingdoc draftingdoc = signdao.getDraftingdoc(docnum);
		// 결재라인
		Signline signline = signdao.getSignline(docnum);

		model.addAttribute("sign", sign);
		model.addAttribute("draftingdoc", draftingdoc);
		model.addAttribute("signline", signline);
		return "sign.BizTripDocDetail";
	}

	// 출장 결과 보고서 작성 페이지 보기
	@RequestMapping(value = "BizTripRepReg.htm", method = RequestMethod.GET)
	public String BizTripRepReg(Model model) throws ClassNotFoundException,
			SQLException {
		System.out.println("출장 결과 보고서 작성 페이지 열람");
		// 부서
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		List<Dept> dept = signdao.getDepts();
		// 팀
		List<Team> team = signdao.getTeams();
		// 사원
		List<Emp> emp = signdao.getEmps();
		// 직급
		List<Position> pos = signdao.getPositions();

		model.addAttribute("dept", dept);
		model.addAttribute("emp", emp);
		model.addAttribute("team", team);
		model.addAttribute("pos", pos);

		return "sign.BizTripRepReg";
	}

	// 출장 결과 보고서 상세 페이지 보기
	@RequestMapping(value = "BizTripRepDetail.htm", method = RequestMethod.GET)
	public String BizTripRepDetail(String docnum, Model model)
			throws ClassNotFoundException, SQLException {
		System.out.println("출장 결과 보고서 상세페이지 보기");

		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		// 결재 문서(기본 내용)
		Sign sign = signdao.getSign(docnum);
		// 기안서
		Draftingdoc draftingdoc = signdao.getDraftingdoc(docnum);
		// 결재라인
		Signline signline = signdao.getSignline(docnum);

		model.addAttribute("sign", sign);
		model.addAttribute("draftingdoc", draftingdoc);
		model.addAttribute("signline", signline);
		return "sign.BizTripRepDetail";
	}

	// 프린트 페이지 보기
	@RequestMapping(value = "PrintPage.htm", method = RequestMethod.GET)
	public String PrintPage(String docnum, Model model)
			throws ClassNotFoundException, SQLException {
		System.out.println("프린트 페이지 보기");

		return "sign.PrintPage";
	}

}
