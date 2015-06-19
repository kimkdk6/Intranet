package controllers;

import java.security.Principal;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
		System.out.println(unsignlist.toString());

		model.addAttribute("unsignlist", unsignlist);
		model.addAttribute("sendsignlist", sendsignlist);
		return "sign.SignMain";
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
/*
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		// 결재 문서(기본 내용)
		Sign sign = signdao.getSign(docnum);
		// 기안서
		Draftingdoc draftingdoc = signdao.getDraftingdoc(docnum);
		// 결재라인
		Signline signline = signdao.getSignline(docnum);

		model.addAttribute("sign", sign);
		model.addAttribute("draftingdoc", draftingdoc);
		model.addAttribute("signline", signline);*/
		return "sign.HolidayDocDetail";
	}

	// 프린트 페이지 보기
	@RequestMapping(value = "PrintPage.htm", method = RequestMethod.GET)
	public String PrintPage(String docnum, Model model)
			throws ClassNotFoundException, SQLException {
		System.out.println("프린트 페이지 보기");

		return "sign.PrintPage";
	}

	// 출장 결과 페이지 상세 보기
	@RequestMapping(value = "BizTripRepDetail.htm", method = RequestMethod.GET)
	public String BizTripRepDetail(String docnum, Model model)
			throws ClassNotFoundException, SQLException {
		System.out.println("출장 결과 페이지 상세보기");

		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		Sign sign = signdao.getSign(docnum);

		return "sign.BizTripRepDetail";
	}
}
