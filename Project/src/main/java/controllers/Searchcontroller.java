package controllers;

import java.security.Principal;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.EmpDAO;

import dto_vo.Emp.Emp;

@Controller

/*회원 리스트 보기*/
@RequestMapping("/search/")
public class Searchcontroller {
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value = "SearchEmp.htm")
	public String SearchEmp(Model model, Principal principal) throws ClassNotFoundException, SQLException {
		System.out.println("회원 검색 페이지 열람");
		EmpDAO empdao = sqlsession.getMapper(EmpDAO.class);
		
		// String userid = principal.getName();
		List<Emp> emplist = empdao.getEmplist();
		
		model.addAttribute("emplist", emplist);
		
		return "search.SearchEmp";
	}
	
	/*@RequestMapping(value = "SearchEmpDetail.htm")
	public String SearchEmpDetail(Model model, Principal principal) throws ClassNotFoundException, SQLException {
		EmpDAO emplistdetail = sqlsession.getMapper(EmpDAO.class);
		
		
		
	}*/
	
	
}
