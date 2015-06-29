package controllers;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.View;

import dao.AttendanceDAO;

@Controller
@RequestMapping("/admin/")
public class Admincontroller {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private View jsonView;

	// 게시판 관리 페이지
	@RequestMapping(value = "communityAdmin.htm", method=RequestMethod.GET)
	public String communityAdmin(Model model,Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		
		// 게시판 목록
		
		return "admin.communityAdmin";
	}
	
	
	// 회원 관리 페이지
	@RequestMapping(value = "empAdmin.htm", method=RequestMethod.GET)
	public String empAdmin(Model model,Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		
		// 회원 목록
		System.out.println("회원 관리 페이지 ");
		return "admin.empAdmin";
	}
	
	
	
	
}
