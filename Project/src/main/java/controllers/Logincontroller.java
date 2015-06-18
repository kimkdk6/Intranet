package controllers;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.EmpDAO;
import dao.MainDAO;
import dto_vo.Board.Board;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Empinfo;

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
	public String login(Emp emp, Empinfo empinfo, Model model, HttpServletRequest request) throws ClassNotFoundException, SQLException 
	{
		
		System.out.println("id : " + emp.getUserid());
		System.out.println("pwd : " + emp.getEmppwd());
		
		String inputPwd = emp.getEmppwd();
		HttpSession session = request.getSession();
			
		EmpDAO empDao = sqlSession.getMapper(EmpDAO.class);
		emp = empDao.isMember(emp);
		empinfo = empDao.isMemberInfo(empinfo);
		
		/*System.out.println(emp.getUserid());
		System.out.println(emp.getEmppwd());
		System.out.println(emp.getEname());*/
			
		if ( emp != null && inputPwd.equals( emp.getEmppwd() ) ) {
			MainDAO recently = sqlSession.getMapper(MainDAO.class);
			
			List<Board> RecentlyNotice= recently.recentlyNotice();
			model.addAttribute("RecentlyNotice", RecentlyNotice);
				
			List<Board> RecentlyBoard= recently.recentlyBoard();
			model.addAttribute("RecentlyBoard", RecentlyBoard);
			
			/*System.out.println("emp.getUserid() : " + emp.getUserid());
			System.out.println("emp.getEmppwd() : " + emp.getEmppwd());
			System.out.println("empinfo.getUseremail() : " + empinfo.getUseremail());
			System.out.println("empinfo.getUseraddr() : " + empinfo.getUseraddr());
			*/
			// 로그인 성공
			session.setAttribute("emp", emp);
			session.setAttribute("empinfo", empinfo);
			
			return "main.main";
		} else { 
			
			return "login.loginFail";
		}
	}	
}
