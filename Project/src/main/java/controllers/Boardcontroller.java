package controllers;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.BoardDAO;
import dao.BoardListDAO;
import dto_vo.Board.Board;
import dto_vo.Board.BoardList;
import dto_vo.Emp.Emp;

//import dao.BoardListDAO;

@Controller
@RequestMapping("/board/")
public class Boardcontroller {

	@Autowired
	private SqlSession sqlsession;

	//게시판 메인 페이지 보기
	@RequestMapping(value = "BoardMain.htm")
	public String BoardMain(Model model) throws ClassNotFoundException,SQLException {

		System.out.println("게시판 메인 페이지 열람");
		BoardListDAO boardlistdao = sqlsession.getMapper(BoardListDAO.class);
		List<BoardList> boardList= boardlistdao.getAllBoardList();
		model.addAttribute("boardList", boardList);
		
//		for(BoardList bl : boardList){
//			System.out.println(bl.toString());
//		}
		
//		BoardDAO boarddao = sqlsession.getMapper(BoardDAO.class);
//		//boarddao.getBoardRecent5(boardcode)
//		
//		List<List<Board>> boards = new ArrayList<List<Board>>() ;
//		
//		for(BoardList bl : boardList){
//			System.out.println(bl.toString());
//			boards.add(boarddao.getBoardRecent5(bl.getBoardcode()));
//			
//		}
		
//		model.addAttribute("boards", boards);
		return "board.BoardMain";
	}
}

