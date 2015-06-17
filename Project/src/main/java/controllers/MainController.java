package controllers;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.IndexDAO;
import dto_vo.Board.Board;

@Controller
@RequestMapping("/main/")
public class MainController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "main.htm")
	public String index(Model model) throws ClassNotFoundException, SQLException
	{
		IndexDAO recentlyNotice = sqlSession.getMapper(IndexDAO.class);
		List<Board> RecentlyNotice= recentlyNotice.recentlyNotice();
		model.addAttribute("RecentlyNotice", RecentlyNotice);
		return "main.main";

	}
}
