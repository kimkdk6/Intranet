package controllers;

import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.View;

import dao.EmpDAO;
import dto_vo.Emp.Dept;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Empinfo;
import dto_vo.Emp.Position;
import dto_vo.Emp.Team;

@Controller

/*회원 리스트 보기*/
@RequestMapping("/search/")
public class Searchcontroller {
	@Autowired
	private SqlSession sqlsession;
	
	@Autowired
	private View jsonView;
	
	@RequestMapping(value = "SearchEmp.htm")
	public String SearchEmp(Model model, String ename) throws ClassNotFoundException, SQLException {
		System.out.println("회원 검색 페이지 열람");
		EmpDAO empdao = sqlsession.getMapper(EmpDAO.class);
		
		List<Emp> emplist = empdao.getEmplist(ename); // List<Emp> 리스트 는 EmpDAO.java
		List<Dept> DeptInfo =  empdao.getDeptName();
		List<Position> PosName = empdao.getPosName();
		
		model.addAttribute("emplist", emplist);
		model.addAttribute("DeptInfo", DeptInfo);
	    model.addAttribute("PosName", PosName);
	    
		return "search.SearchEmp";
	}
	
	// 상세보기
	@RequestMapping(value = "SearchEmpDetail.htm")
	public String SearchEmpDetail(Model model, String userid) throws ClassNotFoundException, SQLException {
		System.out.println("회원 검색해서 상세보기");
		EmpDAO empdao = sqlsession.getMapper(EmpDAO.class);
		
		Empinfo empinfo = empdao.getEmpInfo2(userid);
		
		model.addAttribute("empinfo", empinfo);
		
		return "message.SearchEmpDetail";
	}
	
	@RequestMapping(value = "searchTeamName.htm")
	View searchTeamName (Model model, int deptcode, HttpServletResponse response) throws ClassNotFoundException, SQLException, UnsupportedEncodingException {
		EmpDAO empdao = sqlsession.getMapper(EmpDAO.class);
		response.setContentType("text/html;charset=UTF-8");
		System.out.println("팀 이름 보기");
		
		List<Team> teaminfo = empdao.getTeamName(deptcode);
		
		model.addAttribute("teaminfo", teaminfo);
		
		return jsonView;
	}
	// 부서
	@RequestMapping(value = "searchDeptName.htm")
	View searchDeptName (Model model, Dept dept, HttpServletResponse response) throws ClassNotFoundException, SQLException, UnsupportedEncodingException {
		EmpDAO empdao = sqlsession.getMapper(EmpDAO.class);
		response.setContentType("text/html;charset=UTF-8");
		System.out.println("부서 이름 보기");
		
		List<Dept> deptinfo = empdao.getDeptName();
		model.addAttribute("deptinfo", deptinfo);
		
		return jsonView;
	}
	
	// 처음에 전체 리스트 보기
	@RequestMapping(value = "SearchEmpList.htm")
	View SearchEmpList (Model model, Emp emp, String ename, HttpServletResponse response) throws ClassNotFoundException, SQLException, UnsupportedEncodingException {
		EmpDAO empdao = sqlsession.getMapper(EmpDAO.class);
		response.setContentType("text/html;charset=UTF-8");
		
		List<Emp> emplist2 = empdao.getEmplist(ename);
		// List<Emp> emplist3 = empdao.getEmplist2(ename);
		
		model.addAttribute("emplist2", emplist2);
		// model.addAttribute("emplist3", emplist3);
		
		return jsonView;
	}
	
	/*@RequestMapping(value = "SearchEmpList2.htm")
	View SearchEmpList (Model model, Emp emp, String ename, HttpServletResponse response) throws ClassNotFoundException, SQLException, UnsupportedEncodingException {
		EmpDAO empdao = sqlsession.getMapper(EmpDAO.class);
		response.setContentType("text/html;charset=UTF-8");
		System.out.println("버튼클릭했다" + ename);
		// List<Emp> emplist2 = empdao.getEmplist();
		List<Emp> emplist3 = empdao.getEmplist2(ename);
		
		// model.addAttribute("emplist2", emplist2);
		model.addAttribute("emplist3", emplist3);
		
		return jsonView;
	}
	*/
	
	
	@RequestMapping(value = "SearchDeptList.htm")
	View SearchDeptList (Model model, int deptcode, HttpServletResponse response) throws ClassNotFoundException, SQLException, UnsupportedEncodingException {
		EmpDAO empdao = sqlsession.getMapper(EmpDAO.class);
		response.setContentType("text/html;charset=UTF-8");
		System.out.println("SearchDeptList: "+deptcode);
		
		List<Emp> empdeptlist = empdao.getEmpDept2(deptcode);
		// List<Emp> empteamlist = empdao.getEmpTeam2(teamcode);
		
		model.addAttribute("empdeptlist", empdeptlist);
		
		return jsonView;
	}
	
	@RequestMapping(value = "SearchTeamList.htm")
	View SearchTeamList (Model model, int deptcode, int teamcode, HttpServletResponse response) throws ClassNotFoundException, SQLException, UnsupportedEncodingException {
		EmpDAO empdao = sqlsession.getMapper(EmpDAO.class);
		response.setContentType("text/html;charset=UTF-8");
		
		System.out.println("SearchDeptList:111 "+deptcode);
		System.out.println("SearchTeamList: "+teamcode);
		
		List<Emp> empteamlist = empdao.getEmpTeam2(deptcode, teamcode);
		
		model.addAttribute("empteamlist", empteamlist);
		
		return jsonView;
	}
	

}
