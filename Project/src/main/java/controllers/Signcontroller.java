package controllers;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.Principal;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.print.attribute.standard.SheetCollate;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.View;

import dao.AttendanceDAO;
import dao.ScheduleDAO;
import dao.SignDAO;
import dto_vo.Board.File;
import dto_vo.Board.PagingUtil;
import dto_vo.Emp.Dept;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Position;
import dto_vo.Emp.Team;
import dto_vo.Schedule.Schcategory;
import dto_vo.Schedule.Schedule;
import dto_vo.Sign.Biztripcost;
import dto_vo.Sign.Biztripdoc;
import dto_vo.Sign.Biztriprep;
import dto_vo.Sign.Draftingdoc;
import dto_vo.Sign.Holidaydoc;
import dto_vo.Sign.Orderdoc;
import dto_vo.Sign.Sign;
import dto_vo.Sign.Signline;

@Controller
@RequestMapping("/sign/")
public class Signcontroller {

	@Autowired
	private SqlSession sqlsession;
	@Autowired
	private View jsonView;
	
	// 전자 결재 메인 페이지 보기
	@RequestMapping(value = "SignMain.htm")
	public String SignMain(Model model, Principal principal)
			throws ClassNotFoundException, SQLException {

		System.out.println("전자결재 메인 페이지 열람");
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		// 최신 문서 3개씩
		List<Sign> unsignlist = signdao.getUnSigns(principal.getName(), 0, 3);
		List<Sign> sendsignlist = signdao.getSendSigns(principal.getName(), 0, 3, 0);

		model.addAttribute("unsignlist", unsignlist);
		model.addAttribute("sendsignlist", sendsignlist);
		return "sign.SignMain";
	}
	
	// 받은 결재 문서함 > 미결재 / 결재 문서함 페이지 보기
	@RequestMapping(value = "ReceiveSignList.htm")
	public String ReceiveSignList(Model model, @RequestParam(value="cpage", defaultValue="1") int cpage, Principal principal, int type)
			throws ClassNotFoundException, SQLException {

		System.out.println("받은 페이지 열람");
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		String userid = principal.getName();	
		List<Sign> signlist = null;
		
		int pagesize = 5;
		int start = cpage * pagesize - (pagesize - 1);
		int end = cpage * pagesize;
		int listcount = 0;
		if(type == 1){			// 받은 결재 리스트
			System.out.println("받은 미 문서 페이지 열람");
			signlist = signdao.getReceiveSigns(userid, start, end);
			listcount = signdao.getCountReceiveSigns(userid);
		} else if(type == 2){	// 받은 미결재 리스트 
			System.out.println("받은 문서 페이지 열람");
			signlist = signdao.getUnSigns(userid, start, end);
			listcount = signdao.getCountUnsigns(userid);
		}	
		
		PagingUtil pagingUtil =  new PagingUtil(cpage, listcount, pagesize, 3);
		
		model.addAttribute("paging", pagingUtil);
		model.addAttribute("type", type);
		model.addAttribute("signlist", signlist);
		return "sign.ReceiveSignList";
	}
	
	// 올린 결재 문서함 > 상신 문서 페이지 보기
	@RequestMapping(value = "SendsignsList.htm")
	public String SendsignsList(Model model,@RequestParam(value="cpage", defaultValue="1") int cpage, Principal principal)
			throws ClassNotFoundException, SQLException {

		System.out.println("상신 문서 페이지 열람");
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		String userid = principal.getName();
		
		int pagesize = 5;
		int start = cpage * pagesize - (pagesize - 1);
		int end = cpage * pagesize;
		 
		int listcount = signdao.getCountSendSigns(userid, 0);
   		System.out.println("start: "+start+"/ end: "+end);
   		List<Sign> sendsignlist = signdao.getSendSigns(userid, start, end, 0);
   		System.out.println("상신문서 페이지 열람:");
		System.out.println(sendsignlist.toString());
   		
		PagingUtil pagingUtil =  new PagingUtil(cpage, listcount, pagesize, 3);
		
		model.addAttribute("paging", pagingUtil);
   		model.addAttribute("listcount",listcount); 
		model.addAttribute("sendsignlist", sendsignlist);
		
		return "sign.SendsignsList";
	}
	
	// 올린 결재 문서함 > 반려/결재 완료 문서 페이지 보기
	@RequestMapping(value = "signsList.htm")
	public String signsList(Model model, Principal principal, @RequestParam(value="cpage", defaultValue="1") int cpage, int type)
			throws ClassNotFoundException, SQLException {

		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		String userid = principal.getName();		 
		List<Sign> signlist = null;
		
		int pagesize = 5;
		int start = cpage * pagesize - (pagesize - 1);
		int end = cpage * pagesize;
		int listcount = 0;
		
		if(type == 1){			// 결재 승인 리스트
			System.out.println("승인 문서 페이지 열람");
			signlist = signdao.getSendSigns(userid, start, end, 1);
			listcount = signdao.getCountSendSigns(userid, 1);
		} else if(type == 2){	// 결재 반려 리스트 
			System.out.println("반려 문서 페이지 열람");
			signlist = signdao.getSendSigns(userid, start, end, 2);
			listcount = signdao.getCountSendSigns(userid, 2);
		}		
		
		PagingUtil pagingUtil =  new PagingUtil(cpage, listcount, pagesize, 3);
		
		model.addAttribute("paging", pagingUtil);
		
		model.addAttribute("type", type);
		model.addAttribute("signlist", signlist);
		return "sign.signsList";
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
			Signline signline, Principal principal, File File)
			throws ClassNotFoundException, SQLException, IOException {
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
		
		// 첨부 파일 
		CommonsMultipartFile file = File.getFile();
	      Calendar cal = Calendar.getInstance();
	      String fileName = null;
	      if(!file.isEmpty()){
				//이 경우라면 최소 한개는 파일첨부
				String fname = cal.getTimeInMillis()+file.getOriginalFilename();
				//String path = request.getServletContext().getRealPath("/Upload/ProfilePhoto/");
				String path = finaldata.path+"SignFile";
				
				String fullpath = path + "\\" + fname;
				System.out.println(fullpath);
				if(!fname.equals("")){
					//서버에 물리적 경로 파일쓰기작업
					FileOutputStream fs = new FileOutputStream(fullpath);
					fs.write(file.getBytes());
					fs.close();
				}
				fileName = fname; //파일의 이름만 별도 관리
			}
		
	    sign.setSignfilesrc(fileName);  
		
		System.out.println(signline.toString());
		signdao.insertSign(sign);
		signdao.insertSignline(signline);
		signdao.insertDrafting(drafting);

		return "redirect:SignMain.htm";
	}

	// 기안서 상세 페이지 보기
	@RequestMapping(value = "DraftingDetail.htm", method = RequestMethod.GET)
	public String DraftingDetail(String docnum,@RequestParam(value="cpage", defaultValue="1") int cpage, Model model)
			throws ClassNotFoundException, SQLException {
		System.out.println("기안서 상세페이지 보기");
		List<Emp> signerlist = new ArrayList<Emp>();
		
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		// 결재 문서(기본 내용)
		Sign sign = signdao.getSign(docnum);
		// 기안서
		Draftingdoc draftingdoc = signdao.getDraftingdoc(docnum);
		// 결재라인
		Signline signline = signdao.getSignline(docnum);
		 
		 
		signerlist.add(signdao.getEmp(sign.getSigner1()));
		signerlist.add(signdao.getEmp(sign.getSigner2()));
		if(sign.getSigner3() != null){
			signerlist.add(signdao.getEmp(sign.getSigner3()));
		}
		if(sign.getSigner4() != null){
			signerlist.add(signdao.getEmp(sign.getSigner4()));
		}
		if(sign.getSigner5() != null){
			signerlist.add(signdao.getEmp(sign.getSigner5()));
		}
		
		System.out.println("signerlist 객체: "+signerlist.toString());
		model.addAttribute("sign", sign);
		model.addAttribute("draftingdoc", draftingdoc);
		model.addAttribute("signline", signline);
		model.addAttribute("signerlist", signerlist);
		model.addAttribute("cpage", cpage);
		return "sign.DraftingDetail";
	}
	
	@RequestMapping(value = "signerlist.htm", method = RequestMethod.GET)
	public @ResponseBody Emp signer(String userid, Model model)
			throws ClassNotFoundException, SQLException {
		System.out.println("signer 상세페이지 보기: userid: "+userid);
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		// 결재 문서(기본 내용)
		
		// 결재자 정보
		Emp signer = signdao.getEmp(userid);
		System.out.println("결재자정보: "+signer.toString());
		 
		return signer;
	}
	
	// 결재문서 승인
	@Transactional
	@RequestMapping(value = "signOK.htm", method = RequestMethod.POST)
	public String signOK(String docnum, String signtype)
			throws ClassNotFoundException, SQLException {
		System.out.println("결재 승인");
		System.out.println("승인처리된 결재 문서: "+docnum+"/ signtype= "+signtype);
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		Sign sign = signdao.getSign(docnum);
		ScheduleDAO schedao = sqlsession.getMapper(ScheduleDAO.class);
		//
		int totalsign = sign.getTotalsign();
		int currsign = sign.getCurrsign();
		
		if(currsign == totalsign-1){// 현재 결재수가 총 결재수보다 하나 작으면 최종 결재자까지 갔다
			signdao.updateSignline("signok"+String.valueOf(currsign+2), "결재완료", docnum, 1);
			// sign => currsign ..
			signdao.updateSignCurr(docnum);
			// sign => singstate-> 바뀜
			signdao.updateSignState(docnum, "1");
			
			// 결재 완료 시 휴가계일때
			if(sign.getSigntype() == 2){
				 Holidaydoc holdoc = signdao.getHolidaydoc(docnum);
				 DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
				    try {
				        Date startdate = df.parse(holdoc.getHolstart());
				        Date enddate = df.parse(holdoc.getHolend());
				        
				        long diff = enddate.getTime() - startdate.getTime();
				        long diffDays = diff / (24 * 60 * 60 * 1000)+1;
				        
				        System.out.println("날 수: "+ diffDays);
				        
				        // 근태에
				        // 첫 날 휴가
				        System.out.println("휴가 첫 날: "+startdate);
				        signdao.checkin(sign.getUserid(), holdoc.getHolstart());
				        signdao.addholiday(sign.getUserid(), holdoc.getHolstart(), holdoc.getHolreason());
				        Calendar cal = Calendar.getInstance();
				        cal.setTime(startdate);
				        // 그 뒤 휴가 
				        for(int i=1; i<diffDays; i++){
				        	 cal.add(Calendar.DATE, 1);
				        	 String hd = df.format(cal.getTime());
				        	System.out.println("휴가 날: "+hd);
				        	signdao.checkin(sign.getUserid(), hd);
				        	signdao.addholiday(sign.getUserid(), hd, holdoc.getHolreason());
				        }
				         
				    } catch (ParseException e) {
				        e.printStackTrace();
				    }
				    
				    // 스케쥴에 휴가 추가
				    Schedule schedule = new Schedule();
				    System.out.println(sign.getUserid());
				    System.out.println("팀 코드"+signdao.getTeamcode(sign.getUserid()));
				    System.out.println("카테고리 코드"+signdao.getCateCode(signdao.getTeamcode(sign.getUserid()),"휴가"));
				    schedule.setCatecode(signdao.getCateCode(signdao.getTeamcode(sign.getUserid()),"휴가"));
				    schedule.setUserid(sign.getUserid());
				    schedule.setScstart(holdoc.getHolstart()+" 09:00:00");
				    schedule.setScend(holdoc.getHolend()+" 18:00:00");
				    schedule.setSctitle(sign.getEname()+" "+sign.getPosname()+" : 휴가");
				    schedule.setSccontent(sign.getEname()+" "+sign.getPosname()+" : 휴가");
				    
				    schedao.InsertSchedule(schedule);
			}
			
			// 결제 완료시 출장계
			if(sign.getSigntype() == 4){
				Biztripdoc bizdoc = signdao.getBizTripdoc(docnum);
				DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			    try {
			        Date startdate = df.parse(bizdoc.getBizstart());
			        Date enddate = df.parse(bizdoc.getBizend());
			        
			        long diff = enddate.getTime() - startdate.getTime();
			        long diffDays = diff / (24 * 60 * 60 * 1000)+1;
			        
			        System.out.println("날 수: "+ diffDays);
			        
			        // 근태에
			        // 출장 휴가
			        System.out.println("출장 첫 날: "+startdate);
			        signdao.checkin(sign.getUserid(), bizdoc.getBizstart());
			        signdao.addbiztrip(sign.getUserid(), bizdoc.getBizstart(), bizdoc.getBizpur());
			        Calendar cal = Calendar.getInstance();
			        cal.setTime(startdate);
			        // 그 뒤 휴가 
			        for(int i=1; i<diffDays; i++){
			        	 cal.add(Calendar.DATE, 1);
			        	 String hd = df.format(cal.getTime());
			        	System.out.println("출장 날: "+hd);
			        	signdao.checkin(sign.getUserid(), hd);
			        	signdao.addbiztrip(sign.getUserid(), hd, bizdoc.getBizpur());
			        }
			         
			    } catch (ParseException e) {
			        e.printStackTrace();
			    }
			    
			 // 스케쥴에 출장 추가
			    Schedule schedule = new Schedule();
			    System.out.println(sign.getUserid());
			    System.out.println("팀 코드"+signdao.getTeamcode(sign.getUserid()));
			    System.out.println("카테고리 코드"+signdao.getCateCode(signdao.getTeamcode(sign.getUserid()),"출장"));
			    schedule.setCatecode(signdao.getCateCode(signdao.getTeamcode(sign.getUserid()),"출장"));
			    schedule.setUserid(sign.getUserid());
			    schedule.setScstart(bizdoc.getBizstart()+" 09:00:00");
			    schedule.setScend(bizdoc.getBizend()+" 18:00:00");
			    schedule.setSctitle(sign.getEname()+" "+sign.getPosname()+" : 출장");
			    schedule.setSccontent(sign.getEname()+" "+sign.getPosname()+" : 출장");
			    
			    schedao.InsertSchedule(schedule);
			}
			
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

	// 발주서 작성
	@Transactional
	@RequestMapping(value = "OrderDocReg.htm", method = RequestMethod.POST)
	public String OrderDocReg(Sign sign, Orderdoc orderdoc,
			Signline signline, Principal principal)
			throws ClassNotFoundException, SQLException, IOException {
		System.out.println("발주서 작성");
		int totalsign=0;
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		
		System.out.println("결재 라인: "+signline.toString());
		
		// 결재인 넣기 
		sign.setSigner1(principal.getName());
		sign.setUserid(principal.getName());
		
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
			
		System.out.println("발주서 결재 파일: "+sign.toString());
		System.out.println("결재 라인: "+signline.toString());
		signdao.insertSign(sign);
		signdao.insertSignline(signline);
		List<Orderdoc> list = orderdoc.getOrderlist();
		for(int i=0; i<list.size(); i++){
			System.out.println(list.get(i).getProduct()+"/"+list.get(i).getAmount());
			signdao.insertOrderDoc(list.get(i));
		}
			
		return "redirect:SignMain.htm";
	}	
	
	// 발주서 상세 페이지 보기
	@RequestMapping(value = "OrderDocDetail.htm", method = RequestMethod.GET)
	public String OrderDocDetail(String docnum,@RequestParam(value="cpage", defaultValue="1") int cpage, Model model)
			throws ClassNotFoundException, SQLException {
		System.out.println("발주서 상세페이지 보기");
		List<Emp> signerlist = new ArrayList<Emp>();

		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		// 결재 문서(기본 내용)
		Sign sign = signdao.getSign(docnum);
		// 발주서
		List<Orderdoc> orderdoc = signdao.getOrderdoc(docnum);
		// 결재라인
		Signline signline = signdao.getSignline(docnum);

		signerlist.add(signdao.getEmp(sign.getSigner1()));
		signerlist.add(signdao.getEmp(sign.getSigner2()));
		if(sign.getSigner3() != null){
			signerlist.add(signdao.getEmp(sign.getSigner3()));
		}
		if(sign.getSigner4() != null){
			signerlist.add(signdao.getEmp(sign.getSigner4()));
		}
		if(sign.getSigner5() != null){
			signerlist.add(signdao.getEmp(sign.getSigner5()));
		}
		
		model.addAttribute("sign", sign);
		model.addAttribute("orderdoc", orderdoc);
		model.addAttribute("signline", signline);
		model.addAttribute("signerlist", signerlist);
		model.addAttribute("cpage", cpage);
		return "sign.OrderDocDetail";
	}

	// 휴가계 작성 페이지 보기
	@RequestMapping(value = "HolidayDocReg.htm", method = RequestMethod.GET)
	public String HolidayDocReg(Model model, Principal principal) throws ClassNotFoundException,
			SQLException {
		System.out.println("휴가계 작성 페이지 열람");
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		
		//List<Sign> usignholbiz = signdao.UnsignedHolBiz(principal.getName());
		
	/*	if(usignholbiz.size() > 0){
			return "  <script> "
					+ "alert( '승인처리되지 않은 휴가계나 출장 신청서가 있습니다.' );"
					+ "</script>";
		}*/
		
		// 부서
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
    
	// 휴가계 작성
	@Transactional
	@RequestMapping(value = "HolidayDocReg.htm", method = RequestMethod.POST)
	public String HolidayDocReg(Sign sign, Holidaydoc holidaydoc,
			Signline signline, Principal principal)
			throws ClassNotFoundException, SQLException, IOException {
		System.out.println("휴가계 작성");
		int totalsign=0;
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		
				
		// 결재인 넣기 
		sign.setSigner1(principal.getName());
		sign.setUserid(principal.getName());
		
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
		
		System.out.println("휴가계 결재 파일: "+sign.toString());
		System.out.println("휴가계 파일: "+holidaydoc.toString());
		System.out.println("결재 라인: "+signline.toString());
		signdao.insertSign(sign);
		signdao.insertSignline(signline);
		signdao.insertHolidaydoc(holidaydoc);
		
		return "redirect:SignMain.htm";
	}
	
	// 휴가계 상세 페이지 보기
	@RequestMapping(value = "HolidayDocDetail.htm", method = RequestMethod.GET)
	public String HolidayDocDetail(String docnum,@RequestParam(value="cpage", defaultValue="1") int cpage, Model model)
			throws ClassNotFoundException, SQLException {
		System.out.println("휴가계 상세페이지 보기");
		List<Emp> signerlist = new ArrayList<Emp>();

		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		// 결재 문서(기본 내용)
		Sign sign = signdao.getSign(docnum);
		// 휴가계
		Holidaydoc holidaydoc = signdao.getHolidaydoc(docnum);
		// 결재라인
		Signline signline = signdao.getSignline(docnum);

		signerlist.add(signdao.getEmp(sign.getSigner1()));
		signerlist.add(signdao.getEmp(sign.getSigner2()));
		if(sign.getSigner3() != null){
			signerlist.add(signdao.getEmp(sign.getSigner3()));
		}
		if(sign.getSigner4() != null){
			signerlist.add(signdao.getEmp(sign.getSigner4()));
		}
		if(sign.getSigner5() != null){
			signerlist.add(signdao.getEmp(sign.getSigner5()));
		}
		
		model.addAttribute("sign", sign);
		model.addAttribute("holidaydoc", holidaydoc);
		model.addAttribute("signline", signline);
		model.addAttribute("signerlist", signerlist);
		model.addAttribute("cpage", cpage);
		return "sign.HolidayDocDetail";
	}

	// 출장 신청서 작성 페이지 보기
	@RequestMapping(value = "BizTripDocReg.htm", method = RequestMethod.GET)
	public String BizTripDocReg(Model model, Principal principal) throws ClassNotFoundException,
			SQLException {
		System.out.println("출장 신청서 작성 페이지 열람");
		
		// 부서
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		//List<Sign> usignholbiz = signdao.UnsignedHolBiz(principal.getName());
		
		/*if(usignholbiz.size() > 0){
			return "  <script> "
					+ "alert( '승인처리되지 않은 휴가계나 출장 신청서가 있습니다.' );"
					+ "</script>";
		}*/
		
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

	// 출장 신청서 작성
	@Transactional
	@RequestMapping(value = "BizTripDocReg.htm", method = RequestMethod.POST)
	public String BizTripDocReg(Sign sign, Biztripdoc biztripdoc,
			Signline signline, Principal principal)
			throws ClassNotFoundException, SQLException, IOException {
		System.out.println("출장 신청서 작성");
		int totalsign=0;
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		
		// 결재인 넣기 
		sign.setSigner1(principal.getName());
		sign.setUserid(principal.getName());
			
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
		
		System.out.println("출장 보고서 결재 파일: "+sign.toString());
		System.out.println("출장 보고서 파일: "+biztripdoc.toString());
		System.out.println("결재 라인: "+signline.toString());
		
		signdao.insertSign(sign);
		signdao.insertSignline(signline);
		signdao.insertBizTripDoc(biztripdoc);
			
		return "redirect:SignMain.htm";
	}
	
	// 출장 신청서 상세 페이지 보기
	@RequestMapping(value = "BizTripDocDetail.htm", method = RequestMethod.GET)
	public String BizTripDocDetail(String docnum,@RequestParam(value="cpage", defaultValue="1") int cpage, Model model)
			throws ClassNotFoundException, SQLException {
		System.out.println("출장 신청서 상세페이지 보기");
		List<Emp> signerlist = new ArrayList<Emp>();
		
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		// 결재 문서(기본 내용)
		Sign sign = signdao.getSign(docnum);
		// 출장 신청서
		Biztripdoc biztripdoc = signdao.getBizTripdoc(docnum);
		// 결재라인
		Signline signline = signdao.getSignline(docnum);

		signerlist.add(signdao.getEmp(sign.getSigner1()));
		signerlist.add(signdao.getEmp(sign.getSigner2()));
		if(sign.getSigner3() != null){
			signerlist.add(signdao.getEmp(sign.getSigner3()));
		}
		if(sign.getSigner4() != null){
			signerlist.add(signdao.getEmp(sign.getSigner4()));
		}
		if(sign.getSigner5() != null){
			signerlist.add(signdao.getEmp(sign.getSigner5()));
		}
		
		model.addAttribute("sign", sign);
		model.addAttribute("biztripdoc", biztripdoc);
		model.addAttribute("signline", signline);
		model.addAttribute("signerlist", signerlist);
		model.addAttribute("cpage", cpage);
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

	// 출장 결과 보고서 작성
	@Transactional
	@RequestMapping(value = "BizTripRepReg.htm", method = RequestMethod.POST)
	public String BizTripRepReg(Sign sign, Biztriprep biztriprep, Biztripcost biztripcost,
			Signline signline, Principal principal)
			throws ClassNotFoundException, SQLException, IOException {
		System.out.println("출장 결과 보고서 작성");
		int totalsign=0;
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		List<Biztripcost> list = biztripcost.getCostlist();
			
		// 결재인 넣기 
		sign.setSigner1(principal.getName());
		 sign.setUserid(principal.getName());
				
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
		
		System.out.println("출장 결과 보고서 결재 파일: "+sign.toString());
		System.out.println("출장 결과 보고서: "+biztriprep.toString());
		System.out.println("출장 결과 보고서 파일: "+biztriprep.toString());
		
		for(int i=0; i<list.size(); i++){
			System.out.println("costlist: "+list.get(i).getBizcostnum()+"/"+list.get(i).getBizcostdetail());
		}

		System.out.println("결재 라인: "+signline.toString());
			
		signdao.insertSign(sign);
		signdao.insertSignline(signline);
		signdao.insertBizTripRep(biztriprep);
		for(int i=0; i<list.size(); i++){
			signdao.insertBizTripCost(list.get(i));
		}
		return "redirect:SignMain.htm";
	}
	
	// 출장 결과 보고서 상세 페이지 보기
	@RequestMapping(value = "BizTripRepDetail.htm", method = RequestMethod.GET)
	public String BizTripRepDetail(String docnum,@RequestParam(value="cpage", defaultValue="1") int cpage, Model model)
			throws ClassNotFoundException, SQLException {
		System.out.println("출장 결과 보고서 상세페이지 보기");
		List<Emp> signerlist = new ArrayList<Emp>();
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		// 결재 문서(기본 내용)
		Sign sign = signdao.getSign(docnum);
		// 출장 결과 보고서
		Biztriprep biztriprep = signdao.getBiztriprep(docnum);
		List<Biztripcost> biztripcost = signdao.getBiztripCost(docnum);
		// 결재라인
		Signline signline = signdao.getSignline(docnum);

		signerlist.add(signdao.getEmp(sign.getSigner1()));
		signerlist.add(signdao.getEmp(sign.getSigner2()));
		if(sign.getSigner3() != null){
			signerlist.add(signdao.getEmp(sign.getSigner3()));
		}
		if(sign.getSigner4() != null){
			signerlist.add(signdao.getEmp(sign.getSigner4()));
		}
		if(sign.getSigner5() != null){
			signerlist.add(signdao.getEmp(sign.getSigner5()));
		}
		
		model.addAttribute("sign", sign);
		model.addAttribute("biztriprep", biztriprep);
		model.addAttribute("biztripcost", biztripcost);
		model.addAttribute("signline", signline);
		model.addAttribute("signerlist", signerlist);
		model.addAttribute("cpage", cpage);
		return "sign.BizTripRepDetail";
	}

	// 휴가랑 출장 날짜가 겹치는지 
	@Transactional
	@RequestMapping(value = "CheckDate.htm", method = RequestMethod.POST)
	public View CheckDate(Principal principal, String startdate, String enddate, Model model)
			throws ClassNotFoundException, SQLException, IOException {
		System.out.println("날짜 확인");
		int result = 0; // 날짜가 존재하면 1 , 존재하지 않으면 0
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		System.out.println("선택된 시작날짜: "+startdate);	
		System.out.println("선택된 종료날짜: "+enddate);
		// holdate 목록
		List<String> holdates = signdao.allmyHol(principal.getName());
		List<String> bizdates = signdao.allmyBiz(principal.getName());
		// 날짜마다 계산하기 시발
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	    try {
	        Date sd = df.parse(startdate);
	        Date ed = df.parse(enddate);
	        
	        long diff = ed.getTime() - sd.getTime();
	        long diffDays = diff / (24 * 60 * 60 * 1000)+1;
	        
	        Calendar cal = Calendar.getInstance();
	        cal.setTime(sd);
	        // 휴가 검사
	        for(int i=1; i<diffDays; i++){
	        	 cal.add(Calendar.DATE, 1);
	        	 String hd = df.format(cal.getTime());
	        	 for(String d : holdates){
	      			System.out.println(d);
	      			if(startdate.equals(d) || hd.equals(d)){
	      				result = 1;
	      				break;
	      			}
	      		}
	        }
	        // 출장 검사
	        for(int i=1; i<diffDays; i++){
	        	 cal.add(Calendar.DATE, 1);
	        	 String hd = df.format(cal.getTime());
	        	 for(String d : bizdates){
	      			System.out.println(d);
	      			if(startdate.equals(d) || hd.equals(d)){
	      				result = 1;
	      				break;
	      			}
	      		}
	        }
	        
	    } catch (ParseException e) {
	        e.printStackTrace();
	    }
	        
		System.out.println("result: "+result);
		model.addAttribute("result", result);
		return jsonView;
	}
	
	// 프린트 페이지 보기
	@RequestMapping(value = "PrintPage.htm", method = RequestMethod.GET)
	public String PrintPage(Model model)
			throws ClassNotFoundException, SQLException {
		System.out.println("프린트 페이지 보기");

		return "print.PrintPage";
	}

	@RequestMapping("download.htm")
	public void download(@RequestParam(value="f")String f,
			HttpServletRequest request , 
			HttpServletResponse response) throws IOException{

		String fname = new String(f.getBytes("euc-kr"),"8859_1");

		response.setHeader("Content-Disposition", "attachment;filename=" + fname +";");
		//String fullpath = request.getServletContext().getRealPath("/Upload/" + p + "/" + f);
		//String fullpath = request.getServletContext().getRealPath("/Upload/BoardFile/" + f);
		
		
		String fullpath = finaldata.path + "SignFile\\"+f;
		System.out.println(fullpath);
		FileInputStream fin = new FileInputStream(fullpath);

		ServletOutputStream sout = response.getOutputStream();
		byte[] buf = new byte[1024]; //전체를 다읽지 않고 1204byte씩 읽어서
		int size = 0;
		while((size=fin.read(buf,0,buf.length)) != -1) //buffer 에 1024byte 담고
		{                                              //마지막 남아있는 byte 담고  그다음 없으면 탈출
			sout.write(buf, 0, size); //1kbyte씩 출력 
		}
		fin.close();
		sout.close();
	}
}
