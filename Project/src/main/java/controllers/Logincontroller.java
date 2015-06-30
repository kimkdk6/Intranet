package controllers;

import java.security.Principal;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.AttendanceDAO;
import dao.BoardListDAO;
import dao.EmpDAO;
import dao.MainDAO;
import dto_vo.Board.Board;
import dto_vo.Board.BoardList;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Empinfo;

@Controller
public class Logincontroller {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "index.htm")
	public String loginFrom()
	{
		
		return "login.login";

	}
	
	@RequestMapping(value = "errorpage.htm")
	public String errorpage()
	{
		
		return "error.errorpage";

	}
	
	@RequestMapping(value="login.htm")
	public String Main(Principal principal, Model model, HttpSession session, Emp emp, Empinfo empinfo, HttpServletRequest request ) throws ClassNotFoundException, SQLException {
		
		System.out.println("메인 페이지 ");
		
		MainDAO maindao = sqlSession.getMapper(MainDAO.class);
		AttendanceDAO attcheck = sqlSession.getMapper(AttendanceDAO.class);
		
		List<Board> RecentlyNotice= maindao.recentlyNotice();
		model.addAttribute("RecentlyNotice", RecentlyNotice);
			
		List<Board> RecentlyBoard= maindao.recentlyBoard();
		model.addAttribute("RecentlyBoard", RecentlyBoard);
		
		List<Board> RecentlyPhoto= maindao.recentlyPhoto();
		model.addAttribute("RecentlyPhoto", RecentlyPhoto);
		
		String Checkin= attcheck.checkincheck(principal.getName());
		
		model.addAttribute("Checkin", Checkin); 
		
		String Checkout= attcheck.checkoutcheck(principal.getName());
		model.addAttribute("Checkout", Checkout);
		
		String Latecheck = attcheck.latecheck(principal.getName());
		System.out.println(Latecheck);
		model.addAttribute("Latecheck", Latecheck);
		
		String Leavecheck = attcheck.leavecheck(principal.getName());
		model.addAttribute("Leavecheck", Leavecheck);
		
		String Checkname = maindao.checkname(principal.getName());
		model.addAttribute("Checkname", Checkname);
		
		String UserPhoto = maindao.userPhoto(principal.getName());
		model.addAttribute("UserPhoto", UserPhoto);
		
		int getUnSigns = maindao.getUnSigns(principal.getName());
		model.addAttribute("getUnSigns", getUnSigns);
		
		int getReceiveSigns = maindao.getReceiveSigns(principal.getName());
		model.addAttribute("getReceiveSigns", getReceiveSigns);
		
		
		// 로그인 성공
		session.setAttribute("emp", principal.getName());
		
		// emp, empinfo 정보 세션 가져오기
		EmpDAO empDao = sqlSession.getMapper(EmpDAO.class);
		emp = empDao.getEmp(principal.getName());
		empinfo = empDao.getEmpInfo(principal.getName());
		String dept = empDao.getEmpDept(principal.getName());
		String team = empDao.getEmpTeam(principal.getName());
		String pos = empDao.getEmpPos(principal.getName());
		
		
		session.setAttribute("myemp", emp);
		session.setAttribute("empinfo", empinfo);
		session.setAttribute("dept", dept);
		session.setAttribute("team", team);
		session.setAttribute("pos", pos);
		
		// aside boardlist 세션 가져오기
		BoardListDAO boardlistDao = sqlSession.getMapper(BoardListDAO.class);
		List<BoardList> boardlist = boardlistDao.getAllBoardList();
		
		session.setAttribute("boardNameList", boardlist);
		
		
		return "main.main";
	}
	
	/*@RequestMapping("login.htm")
	public String login(Principal principal, Model model, HttpSession session) throws ClassNotFoundException, SQLException{
		
			System.out.println("로그인 페이지 ");
		 	
		return "redirect:main.htm";
	}
	*/
/*	
	@RequestMapping(value="login.htm", method=RequestMethod.POST)
	public String login(Emp emp, Empinfo empinfo, Model model, HttpServletRequest request) throws ClassNotFoundException, SQLException 
=======
	@RequestMapping(value="index.htm", method=RequestMethod.POST)
	public String login(String userid, Emp emp, Empinfo empinfo, Model model, HttpServletRequest request) throws ClassNotFoundException, SQLException 
>>>>>>> branch 'master' of https://github.com/kimkdk6/Intranet.git
	{
		userid="m5";
		System.out.println("id : " + emp.getUserid());
		System.out.println("pwd : " + emp.getEmppwd());
		
		String inputPwd = emp.getEmppwd();
		HttpSession session = request.getSession();
			
		EmpDAO empDao = sqlSession.getMapper(EmpDAO.class);
		emp = empDao.isMember(emp);
		empinfo = empDao.isMemberInfo(empinfo);
		
		System.out.println(emp.getUserid());
		System.out.println(emp.getEmppwd());
		System.out.println(emp.getEname());
			
		if ( emp != null && inputPwd.equals( emp.getEmppwd() ) ) {
			MainDAO recently = sqlSession.getMapper(MainDAO.class);
			AttendanceDAO attcheck = sqlSession.getMapper(AttendanceDAO.class);
			
			List<Board> RecentlyNotice= recently.recentlyNotice();
			model.addAttribute("RecentlyNotice", RecentlyNotice);
				
			List<Board> RecentlyBoard= recently.recentlyBoard();
			model.addAttribute("RecentlyBoard", RecentlyBoard);
			
<<<<<<< HEAD
			System.out.println("emp.getUserid() : " + emp.getUserid());
=======
			
			
			/*System.out.println("emp.getUserid() : " + emp.getUserid());
>>>>>>> branch 'master' of https://github.com/kimkdk6/Intranet.git
			System.out.println("emp.getEmppwd() : " + emp.getEmppwd());
			System.out.println("empinfo.getUseremail() : " + empinfo.getUseremail());
			System.out.println("empinfo.getUseraddr() : " + empinfo.getUseraddr());
			
			// 로그인 성공
			session.setAttribute("emp", emp);
			session.setAttribute("empinfo", empinfo);
			
			return "main.main";
		} else { 
			
			return "login.loginFail";
		}
	}	*/
}
