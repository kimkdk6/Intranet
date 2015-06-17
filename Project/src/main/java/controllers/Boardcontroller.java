package controllers;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//import dao.BoardListDAO;

@Controller
@RequestMapping("/board/")
public class Boardcontroller {

	@Autowired
	private SqlSession sqlsession;

	//게시판 메인 페이지 보기
	@RequestMapping(value = "BoardMain.htm")
	public String BoardMain() throws ClassNotFoundException,SQLException {

		System.out.println("게시판 메인 페이지 열람");

		//			BoardListDAO Boarddao = sqlsession.getMapper(BoardListDAO.class);
		//			List<Sign> unsignlist = signdao.getUnSigns("m3");
		//			List<Sign> sendsignlist = signdao.getSendSigns("m4");
		//			System.out.println(unsignlist.toString());
		//			model.addAttribute("unsignlist", unsignlist);
		//			model.addAttribute("sendsignlist", sendsignlist);

		return "board.BoardMain";
	}
}

