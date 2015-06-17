package controllers;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.EmpDAO;
import dto_vo.Emp.Emp;

@Controller
public class Logincontroller {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("index.htm")
	public String login()
	{
		return "login.login";

	}
	
	@RequestMapping(value="index.htm", method=RequestMethod.POST)
	public String login(Emp emp) throws ClassNotFoundException, SQLException 
	{
		/*
		System.out.println("id : " + emp.getUserid());
		System.out.println("pwd : " + emp.getEmppwd());
		*/
		String inputPwd = emp.getEmppwd();
		
		EmpDAO empDao = sqlSession.getMapper(EmpDAO.class);
		emp = empDao.isMember(emp);
		
		System.out.println(emp.getEmppwd());
		System.out.println(emp.getEname());
		
		if( inputPwd.equals(emp.getEmppwd()))
		{
			// 메인 페이지 url
			return "main.main";
		} else {
			return "login.login";
		}
	} 
}
