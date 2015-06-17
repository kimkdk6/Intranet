package controllers;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.MainDAO;
import dto_vo.Board.Board;

@Controller
@RequestMapping("/main/")
public class MainController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "main.htm")
	public String index(Model model) throws ClassNotFoundException, SQLException
	{
		MainDAO recently = sqlSession.getMapper(MainDAO.class);
		
		List<Board> RecentlyNotice= recently.recentlyNotice();
		model.addAttribute("RecentlyNotice", RecentlyNotice);
		
		List<Board> RecentlyBoard= recently.recentlyBoard();
		model.addAttribute("RecentlyBoard", RecentlyBoard);

		return "main.main";

	}
}