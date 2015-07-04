package controllers;

import java.io.FileOutputStream;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Calendar;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.View;

import dao.AdminDAO;
import dao.AttendanceDAO;
import dao.BoardListDAO;
import dao.ScheduleDAO;
import dao.SignDAO;
import dto_vo.Board.Board;
import dto_vo.Board.BoardList;
import dto_vo.Board.File;
import dto_vo.Emp.Dept;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Empinfo;
import dto_vo.Emp.Position;
import dto_vo.Emp.Team;
import dto_vo.Schedule.Schcategory;

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
		List<Integer> boardnlist = new ArrayList<Integer>();
		
		for(int i=0; i<boardtypelist.size(); i++){
			int bnum = admindao.getBoardofNum(boardtypelist.get(i).getBoardcode());
			boardnlist.add(bnum);
		}
		
		model.addAttribute("boardtypelist", boardtypelist);
		model.addAttribute("boardnlist", boardnlist);
		return "admin.communityAdmin";
	}
	
	// 게시판 추가 
	@RequestMapping(value = "communityAdd.htm", method=RequestMethod.POST)
	public String communityAdd(BoardList boardlist, HttpSession session) throws Exception
	{
		System.out.println("게시판 추가 기능");
		AdminDAO admindao = sqlSession.getMapper(AdminDAO.class);
		// 게시판 삽입
		admindao.insertBoard(boardlist);
		
		// aside boardlist 세션 가져오기
		BoardListDAO boardlistDao = sqlSession.getMapper(BoardListDAO.class);
		List<BoardList> boardli = boardlistDao.getAllBoardList();
								
		session.setAttribute("boardNameList", boardli);
		
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
	public String empAdmin(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		AdminDAO admindao = sqlSession.getMapper(AdminDAO.class);
		// 회원 목록
		System.out.println("회원 관리 페이지 ");
		List<Emp> emplist = admindao.getEmps();
		
		model.addAttribute("emplist", emplist);
		return "admin.empAdmin";
	}
	
	// 회원 정보 수정 페이지
	@RequestMapping(value = "EmpEditAdmin.htm")
	public String EmpEditAdmin(Model model, 
		@RequestParam(value="userid",required=true)	String userid) throws Exception
	{
		System.out.println(userid);
		
		AdminDAO admindao = sqlSession.getMapper(AdminDAO.class);
		SignDAO signdao = sqlSession.getMapper(SignDAO.class);
		// 회원 목록
		System.out.println("회원 정보 수정 페이지 ");
		Emp emp = admindao.getEmp(userid);
		Empinfo empinfo = admindao.getEmpInfo(userid);
		List<Dept> deptlist = signdao.getDepts();
		List<Position> poslist = signdao.getPositions();
		int deptcode = 0;
		for(Dept l : deptlist){
			if(emp.getDeptcode().equals(l.getDeptname())){
				deptcode = l.getDeptcode();
			}
		}
		List<Team> teamlist = admindao.getTeamList(deptcode);
		
		System.out.println(emp);
		System.out.println(empinfo);
		
		model.addAttribute("emp", emp);
		model.addAttribute("empinfo", empinfo);
		model.addAttribute("deptlist", deptlist);
		model.addAttribute("poslist", poslist);
		model.addAttribute("teamlist", teamlist);
		return "admin.EmpEditAdmin";
	}
	
	// 회원 정보 수정
	@RequestMapping(value = "EmpEdit.htm", method=RequestMethod.POST)
	public String EmpEditAdmin(Model model, Emp emp) throws Exception
	{
		AdminDAO admindao = sqlSession.getMapper(AdminDAO.class);
		// 회원 정보
		System.out.println("회원 정보 수정");
		System.out.println(emp.getEmptel()+"/"+emp.getDeptcode()+"/"+emp.getTeamcode()+"/"+emp.getPoscode());
		// 회원 정보 수정
		admindao.updateEmp(emp.getUserid(), emp.getEmptel(), 
					emp.getDeptcode(), emp.getTeamcode(), emp.getPoscode());
		
		return "forward:EmpEditAdmin.htm?userid="+emp.getUserid();
	}

	// 회원 승인
	@Transactional
	@RequestMapping(value = "EmpApproveAdmin.htm", method=RequestMethod.POST)
	public String EmpApproveAdmin(Model model, String userid, String emptel) throws Exception
	{
		AdminDAO admindao = sqlSession.getMapper(AdminDAO.class);
		// 회원 목록
		System.out.println("회원 승인");
		System.out.println(userid+"/"+emptel);
		admindao.updateEmpApprove(userid, emptel);
		// 회원 권한
		admindao.insertEmpauth(userid);
		return "forward:EmpEditAdmin.htm?userid="+userid;
	}
	
	// 팀 관리 페이지
	@RequestMapping(value = "teamAdmin.htm", method=RequestMethod.GET)
	public String teamAdmin(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		System.out.println("팀 관리 페이지");
		AdminDAO admindao = sqlSession.getMapper(AdminDAO.class);
		SignDAO signdao = sqlSession.getMapper(SignDAO.class);
		// 부서 목록
		List<Dept> deptlist = signdao.getDepts();
		// 팀 목록
		List<Team> teamlist = signdao.getTeams();
			
		List<Integer> teamnlist = new ArrayList<Integer>();
		
		 
		
		for(int i=0; i<teamlist.size(); i++){
			teamnlist.add(admindao.getEmpofTeam(teamlist.get(i).getTeamcode()));
		}
		
		/*for(Dept d : deptlist){
			List<Team> tl = new ArrayList<Team>();
			for(Team t : teamlist){
				if(d.getDeptcode() == t.getDeptcode()){
					tl.add(t);
				}
			}
			deptteam.add(tl);
		}*/
		
		model.addAttribute("deptlist", deptlist);
		model.addAttribute("teamlist", teamlist);
		model.addAttribute("teamnlist", teamnlist);
		 
		return "admin.teamAdmin";
	}	
	
	// 팀 추가 
	@Transactional
	@RequestMapping(value = "teamAdd.htm", method=RequestMethod.POST)
	public String teamAdd(Dept dept, Team team, HttpSession session) throws Exception
	{
		System.out.println("팀 추가 기능");
		AdminDAO admindao = sqlSession.getMapper(AdminDAO.class);
		ScheduleDAO schedao = sqlSession.getMapper(ScheduleDAO.class);
		// 팀 삽입
		System.out.println("dept/team:  "+dept.getDeptcode()+"/"+team.getTeamname());
		admindao.insertTeam(dept.getDeptcode(), team.getTeamname());
		
		// 팀 휴가 카테고리 추가
		System.out.println("팀 코드: "+ admindao.getTeamcode(dept.getDeptcode()));
		Schcategory schcategoryH = new Schcategory();
		schcategoryH.setCatename(team.getTeamname()+":휴가");
		schcategoryH.setTeamcode(admindao.getTeamcode(dept.getDeptcode()));
		schcategoryH.setUserid("admin");
		schcategoryH.setCatecontent("휴가");
		schcategoryH.setColor("#dd4b39");
		schedao.InsertTeamCategory(schcategoryH);
		// 출장 카테고리
		Schcategory schcategoryB = new Schcategory();
		schcategoryB.setCatename(team.getTeamname()+":출장");
		schcategoryB.setTeamcode(admindao.getTeamcode(dept.getDeptcode()));
		schcategoryB.setUserid("admin");
		schcategoryB.setCatecontent("출장");
		schcategoryB.setColor("#3c8dbc");
		schedao.InsertTeamCategory(schcategoryB);
		
		return "redirect:teamAdmin.htm";
	}
	// 팀 삭제
	@Transactional
	@RequestMapping(value = "teamRemove.htm", method=RequestMethod.POST)
	public String teamRemove(String teamcode, HttpSession session) throws Exception
	{
		System.out.println("팀 삭제 기능");
		AdminDAO admindao = sqlSession.getMapper(AdminDAO.class);
		ScheduleDAO schedao = sqlSession.getMapper(ScheduleDAO.class);
		// 팀 휴가 카테고리 / 팀 삭제
		System.out.println("teamcode:  "+teamcode);
		int catecodeH = admindao.getTeamHolCate(teamcode);
		int catecodeB = admindao.getTeamBizCate(teamcode);
		System.out.println("삭제할 휴가/출장 카테고리 코드: "+catecodeH+"/"+catecodeB);
		schedao.DeleteCategory(catecodeH);
		schedao.DeleteCategory(catecodeB);
		admindao.deleteTeam(teamcode);
			
		return "redirect:teamAdmin.htm";
	}
	// 팀 수정
	@Transactional
	@RequestMapping(value = "teamModify.htm", method=RequestMethod.POST)
	public String teamModify(String teamcode, String teamname, HttpSession session) throws Exception
	{
		System.out.println("팀 명 수정 기능");
		AdminDAO admindao = sqlSession.getMapper(AdminDAO.class);
		// 팀 명 수정
		System.out.println("teamcode/teamname:  "+teamcode+"/"+teamname);
		
		admindao.updateTeam(teamcode, teamname);
		int catecodeH = admindao.getTeamHolCate(teamcode);
		int catecodeB = admindao.getTeamBizCate(teamcode);
		System.out.println("catecodeH/B : "+catecodeH+"/"+catecodeB);
		String catenameH = teamname+":휴가";
		String catenameB = teamname+":출장";
		admindao.updateTeamCate(catecodeH, catenameH);
		admindao.updateTeamCate(catecodeB, catenameB);
		return "redirect:teamAdmin.htm";
	}
}
