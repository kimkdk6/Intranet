package controllers;

import java.sql.SQLException;
import java.util.List;

import org.springframework.ui.Model;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.Test;
import dto_vo.Emp.Emp;

@Controller
public class Indexcontroller {

/*	@RequestMapping("index.htm")
	public String index()
	{
		return "home.index";

	}*/
	@Autowired
	private SqlSession sqlSession;
	private String uid="m1";
	
	@RequestMapping("index.htm")
	public String index(Model model) throws ClassNotFoundException, SQLException
	{
		Test getEmp = sqlSession.getMapper(Test.class);
		List<Emp> empList= getEmp.getEmp(uid);
		model.addAttribute("empList", empList);
		return "home.index";

	}
}
