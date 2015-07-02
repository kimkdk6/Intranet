package controllers;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



	@Controller
	@RequestMapping("/message/")
	public class Messagecontroller {

		@Autowired
		private SqlSession sqlsession;

		//게시판 메인 페이지 보기
		@RequestMapping(value = "ReceiveMessage.htm")
		public String RecieveMessage(Model model) throws ClassNotFoundException,SQLException {

//			System.out.println("게시판 메인 페이지 열람");
//
//			BoardListDAO boardlistdao = sqlsession.getMapper(BoardListDAO.class);
//
//			List<BoardList> boardList= boardlistdao.getAllBoardList();
//
//			model.addAttribute("boardList", boardList);
//
//
//			BoardDAO boarddao = sqlsession.getMapper(BoardDAO.class);
//
//
//			List<List<Board>> boards = new ArrayList<List<Board>>() ;
//
//			for(BoardList bl : boardList){
//				System.out.println(bl.toString());
//				boards.add(boarddao.getBoardRecent5(bl.getBoardcode()));
//
//			}
//
//			model.addAttribute("boards", boards);
			return "message.RMSGList";
		}	
	}


