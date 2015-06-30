package controllers;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.View;

import dao.AdminDAO;
import dao.AttendanceDAO;
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
	public String communityAdmin(Model model,Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
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
	public String communityAdd(BoardList boardlist,Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		System.out.println("게시판 추가 기능");
		AdminDAO admindao = sqlSession.getMapper(AdminDAO.class);
		// 게시판 삽입
		
		
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
