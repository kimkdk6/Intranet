package controllers;

import java.io.FileOutputStream;
import java.security.Principal;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.View;

import dao.AttendanceDAO;
import dao.BoardListDAO;
import dao.EmpDAO;
import dao.MypageDAO;
import dto_vo.Board.File;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Empinfo;

@Controller
@RequestMapping("/mypage/")
public class Mypagecontroller {

	@Autowired
	private SqlSession sqlsession;

	@Autowired
	private View jsonView;

	// 마이 페이지
	@RequestMapping(value = "EditMypage.htm", method = RequestMethod.GET)
	public String EditMypage(Model model, Principal principal,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws Exception {
		Emp emp = (Emp) session.getAttribute("myemp");

		String userid = emp.getUserid();

		// 마이 페이지

		//EmpDAO empdao = sqlsession.getMapper(EmpDAO.class);
		MypageDAO empdao = sqlsession.getMapper(MypageDAO.class);
		
		Emp emp2 = empdao.getEmp(userid);
		Empinfo empinfo = empdao.getEmpInfo(userid);
		
		System.out.println(empinfo);
		
		model.addAttribute("emp", emp2);
		model.addAttribute("empinfo", empinfo);

		return "mypage.EditMypage";
	}

	// 마이 페이지
	@RequestMapping(value = "EditMypage.htm", method = RequestMethod.POST)
	public String InfoMypage(Model model, Principal principal,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session,Emp emp,Empinfo empinfo,File File) throws Exception {
		
	//	EmpDAO empdao = sqlsession.getMapper(EmpDAO.class);
		MypageDAO mypDao = sqlsession.getMapper(MypageDAO.class);
		//Emp emp = (Emp) session.getAttribute("myemp");

		String userid = emp.getUserid();
		System.out.println(emp);
		System.out.println(empinfo);
		
		
		
		// 첨부 파일 
		CommonsMultipartFile file = File.getFile();
	      Calendar cal = Calendar.getInstance();
	      String fileName = null;
	      if(!file.isEmpty()){
				//이 경우라면 최소 한개는 파일첨부
				String fname = cal.getTimeInMillis()+file.getOriginalFilename();
				//String path = request.getServletContext().getRealPath("/Upload/ProfilePhoto/");
				String path = finaldata.path+"ProfilePhoto";
				
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
		
	    empinfo.setUserphoto(fileName);

		
	    mypDao.updateuser(emp);
		mypDao.updateuserinfo(empinfo);
		
		
		model.addAttribute("emp", mypDao.getEmp(userid));
		model.addAttribute("empinfo", mypDao.getEmpInfo(userid));

		return "redirect:EditMypage.htm";
	}

}