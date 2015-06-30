package controllers;

import java.security.Principal;
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
import org.springframework.web.servlet.View;

import dao.AttendanceDAO;
import dao.BoardListDAO;
import dao.EmpDAO;
import dao.MypageDAO;
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

		EmpDAO empdao = sqlsession.getMapper(EmpDAO.class);

		model.addAttribute("emp", empdao.getEmp(userid));
		model.addAttribute("empinfo", empdao.getEmpInfo(userid));

		return "mypage.EditMypage";
	}

	// 마이 페이지
	@RequestMapping(value = "EditMypage.htm", method = RequestMethod.POST)
	public String InfoMypage(Model model, Principal principal,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session,Emp emp,Empinfo empinfo) throws Exception {
		
		EmpDAO empdao = sqlsession.getMapper(EmpDAO.class);
		MypageDAO mypDao = sqlsession.getMapper(MypageDAO.class);
		//Emp emp = (Emp) session.getAttribute("myemp");

		String userid = emp.getUserid();
		
		mypDao.updateuser(emp);
		mypDao.updateuserinfo(empinfo);
		
		model.addAttribute("emp", empdao.getEmp(userid));
		model.addAttribute("empinfo", empdao.getEmpInfo(userid));

		return "redirect:EditMypage.htm";
	}

}