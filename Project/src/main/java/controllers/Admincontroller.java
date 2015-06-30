package controllers;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.View;

import dao.AdminDAO;
import dao.AttendanceDAO;
import dao.BoardListDAO;
import dto_vo.Board.Board;
import dto_vo.Board.BoardList;

@Controller
@RequestMapping("/admin/")
public class Admincontroller {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private View jsonView;

	// 게시판 관리 페이지
	@RequestMapping(value = "communityAdmin.htm", method=RequestMethod.GET)
	public String communityAdmin(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		System.out.println("게시판 관리 페이지");
		AdminDAO admindao = sqlSession.getMapper(AdminDAO.class);
		// 게시판 목록
		List<BoardList> boardtypelist = admindao.getBoardListType();
		
		// 게시판타입이랑 게시판 갯수
		Map<BoardList, Integer> boardmap = new HashMap<BoardList, Integer>();
		
		for(int i=0; i<boardtypelist.size(); i++){
			int bnum = admindao.getBoardofNum(boardtypelist.get(i).getBoardcode());
			boardmap.put(boardtypelist.get(i), bnum);
		}
		
		model.addAttribute("boardmap", boardmap);
		return "admin.communityAdmin";
	}
	
	// 게시판 추가 
	@RequestMapping(value = "communityAdd.htm", method=RequestMethod.POST)
	public String communityAdd(BoardList boardlist, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		System.out.println("게시판 추가 기능");
		AdminDAO admindao = sqlSession.getMapper(AdminDAO.class);
		// 게시판 삽입
		admindao.insertBoard(boardlist);
		
		return "redirect:communityAdmin.htm";
	}
	
	// 게시판 삭제
	@Transactional
	@RequestMapping(value = "communityRemove.htm", method=RequestMethod.POST)
	public String communityRemove(String boardcode, HttpSession session) throws Exception
	{
		System.out.println("게시판 삭제 기능");
		AdminDAO admindao = sqlSession.getMapper(AdminDAO.class);
		// 게시판 삭제
		// 게시판에 있는 게시물 리스트 
		List<Board> boardli = admindao.getBoardListbyType(boardcode);
		
		// 각 게시물의 댓글 삭제 후 게시물 삭제 
		for(int i=0; i<boardli.size(); i++){
			int boardnum = boardli.get(i).getBoardnum();
			admindao.deleteReply(boardnum);
			admindao.deleteBoard(boardnum);
		}
		// 게시판(boardlist) 삭제
		admindao.deleteBoardlist(boardcode);
		
		// aside boardlist 세션 가져오기
		BoardListDAO boardlistDao = sqlSession.getMapper(BoardListDAO.class);
		List<BoardList> boardlist = boardlistDao.getAllBoardList();
						
		session.setAttribute("boardNameList", boardlist);
		
		return "redirect:communityAdmin.htm";
	}
	
	// 게시판 수정
	@RequestMapping(value = "communityModify.htm")
	public String communityModify(String boardcode, String boardname, HttpSession session) throws Exception
	{
		System.out.println("게시판 수정 기능");
		AdminDAO admindao = sqlSession.getMapper(AdminDAO.class);
		// 게시판  수정
		System.out.println("게시판 수정 기능: "+boardcode+"/"+boardname);
		admindao.updateBoardName(boardcode, boardname);
		
		// aside boardlist 세션 가져오기
		BoardListDAO boardlistDao = sqlSession.getMapper(BoardListDAO.class);
		List<BoardList> boardlist = boardlistDao.getAllBoardList();
				
		session.setAttribute("boardNameList", boardlist);
				
		return "redirect:communityAdmin.htm";
	}	
	
	// 회원 관리 페이지
	@RequestMapping(value = "empAdmin.htm", method=RequestMethod.GET)
	public String empAdmin(Model model,Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		
		// 회원 목록
		System.out.println("회원 관리 페이지 ");
		return "admin.empAdmin";
	}
	
	
	
	
}
