package controllers;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.EmpDAO;
import dto_vo.Emp.Emp;

@Controller
@RequestMapping("/joinus/")
public class Joincontroller {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="join.htm", method=RequestMethod.GET)
	public String join() 
	{
		return "login.join";
	}
	
	@RequestMapping(value="join.htm", method=RequestMethod.POST)
	public String join(Emp emp) throws ClassNotFoundException, SQLException 
	{
		System.out.println("id : " + emp.getUserid());
		System.out.println("pwd : " + emp.getEmppwd());
		System.out.println("name : " + emp.getEname());
		
		EmpDAO empDAO = sqlSession.getMapper(EmpDAO.class);
		empDAO.joinMember(emp);
		
		return "login.login";
	
		/*	String inputPwd = emp.getEmppwd();
		
		EmpDao empDao = sqlSession.getMapper(EmpDao.class);
		emp = empDao.isMember(emp);
		
		System.out.println(emp.getEmppwd());
		System.out.println(emp.getEname());
		
		if( inputPwd.equals(emp.getEmppwd()))
		{
			// 메인 페이지 url
			return "login.join";
		} else {
			return "login.login";
		}*/
	} 
	
}
