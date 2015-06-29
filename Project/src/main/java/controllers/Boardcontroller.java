package controllers;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import dao.BoardDAO;
import dao.BoardListDAO;
import dao.ReplyDAO;
import dto_vo.Board.Board;
import dto_vo.Board.BoardList;
import dto_vo.Board.PagingUtil;
import dto_vo.Board.Reply;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Empinfo;

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


		BoardDAO boarddao = sqlsession.getMapper(BoardDAO.class);


		List<List<Board>> boards = new ArrayList<List<Board>>() ;

		for(BoardList bl : boardList){
			System.out.println(bl.toString());
			boards.add(boarddao.getBoardRecent5(bl.getBoardcode()));

		}

		model.addAttribute("boards", boards);
		return "board.BoardMain";
	}
	//게시판 상세보기
	@RequestMapping(value = "BoardDetail.htm")
	public String BoardDetail(@RequestParam(value="boardnum") int boardnum, Model model)throws ClassNotFoundException,SQLException{

		BoardDAO boarddao = sqlsession.getMapper(BoardDAO.class);
		BoardListDAO boardlistdao = sqlsession.getMapper(BoardListDAO.class);
		ReplyDAO replydao = sqlsession.getMapper(ReplyDAO.class);
		boarddao.updateCount(boardnum);

		BoardList boardlist = boardlistdao.getBoardList(boardnum);
		Board board = boarddao.getBoard(boardnum);
		List<Reply> replylist = replydao.getReply(boardnum);
		List<Emp> emplist = replydao.getReplyEmp(boardnum);
		List<Empinfo> empinfolist = replydao.getReplyEmpinfo(boardnum);
		Emp boardemp = boarddao.getBoardEmp(boardnum);
		Empinfo boardempinfo = boarddao.getBoardEmpinfo(boardnum);

		model.addAttribute("board", board);
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("replylist", replylist);
		model.addAttribute("emplist", emplist);
		model.addAttribute("empinfolist", empinfolist);
		model.addAttribute("boardemp", boardemp);
		model.addAttribute("boardempinfo", boardempinfo);
		return "board.BoardDetail";

	}
	//게시판 목록보기
	@RequestMapping(value = "BoardList.htm")
	public String BoardList(@RequestParam(value="boardcode") int boardcode,
			@RequestParam(value="cpage", defaultValue="1") int cpage,
			@RequestParam(value="pagesize", defaultValue="15")int pagesize,
			Model model)throws ClassNotFoundException,SQLException{

		int startboard = cpage * pagesize - (pagesize - 1);
		int endboard = cpage * pagesize;

		System.out.println("startboard: " +startboard);
		System.out.println("endboard: " +endboard);

		BoardDAO boarddao = sqlsession.getMapper(BoardDAO.class);
		BoardListDAO boardlistdao = sqlsession.getMapper(BoardListDAO.class);

		BoardList boardlist = boardlistdao.getBoardListforCode(boardcode);
		List<Board> boardlistlist = boarddao.getBoardList(boardcode, startboard, endboard);
		List<Board> noticelist = boarddao.getNoticeBoard(boardcode);
		
		for(Board notice : noticelist){
			System.out.println(notice);
		}
		
		
		
		int allcount = boarddao.getAllBoardCount(boardcode);

		System.out.println(boardcode+"코드 게시판 총 게시글 수"+allcount);

		model.addAttribute("boardlist", boardlist);//게시판 이름 코드
		model.addAttribute("boardlistlist", boardlistlist);//게시글 리스트
		model.addAttribute("allcount", allcount);
		model.addAttribute("noticelist", noticelist);//게시판 이름 코드
		
		PagingUtil pagingUtil =  new PagingUtil(cpage, allcount, pagesize, 5);

		model.addAttribute("paging", pagingUtil);
		model.addAttribute("pagesize", pagesize);
		return "board.BoardList";

	}
	//게시판 내 댓글 달기
	@RequestMapping(value = "BoardReply.htm")
	public String BoardReply(Reply reply, Model model)throws ClassNotFoundException,SQLException{

		System.out.println(reply);

		ReplyDAO replydao = sqlsession.getMapper(ReplyDAO.class);
		replydao.insertReply(reply);

		int boardnum  = reply.getBoardnum();
		BoardDAO boarddao = sqlsession.getMapper(BoardDAO.class);
		BoardListDAO boardlistdao = sqlsession.getMapper(BoardListDAO.class);


		BoardList boardlist = boardlistdao.getBoardList(boardnum);
		Board board = boarddao.getBoard(boardnum);
		List<Reply> replylist = replydao.getReply(boardnum);
		List<Emp> emplist = replydao.getReplyEmp(boardnum);
		List<Empinfo> empinfolist = replydao.getReplyEmpinfo(boardnum);
		Emp boardemp = boarddao.getBoardEmp(boardnum);
		Empinfo boardempinfo = boarddao.getBoardEmpinfo(boardnum);

		model.addAttribute("board", board);
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("replylist", replylist);
		model.addAttribute("emplist", emplist);
		model.addAttribute("empinfolist", empinfolist);
		model.addAttribute("boardemp", boardemp);
		model.addAttribute("boardempinfo", boardempinfo);

		return "board.BoardDetail";

	}

	@RequestMapping(value = "BoardWrite.htm")
	public String BoardWrite(@RequestParam(value="boardcode")int boardcode, Model model)throws ClassNotFoundException,SQLException {

		System.out.println("게시판 글쓰기 boardcode: " +boardcode);


		//BoardDAO boarddao = sqlsession.getMapper(BoardDAO.class);
		BoardListDAO boardlistdao = sqlsession.getMapper(BoardListDAO.class);

		BoardList boardlist =  boardlistdao.getBoardListforCode(boardcode);
		model.addAttribute("boardlist", boardlist);
		return "board.BoardWrite";
	}


	@RequestMapping(value = "BoardWriteOk.htm")
	public String BoardWriteOk(Board board, Model model,HttpServletRequest request)throws ClassNotFoundException,SQLException, IOException {
		//MultipartHttpServletRequest request
		System.out.println("게시판 글쓰기 boardcode: " +board.getBoardcode());
		System.out.println(board);



		BoardDAO boarddao = sqlsession.getMapper(BoardDAO.class);
		BoardListDAO boardlistdao = sqlsession.getMapper(BoardListDAO.class);
		BoardList boardlist =  boardlistdao.getBoardListforCode(board.getBoardcode());

		Calendar cal = Calendar.getInstance();
		
		
		CommonsMultipartFile file =board.getFile();
	//	file.getName();
		
		System.out.println(file);
		
		String fileName = null;
		if(!file.isEmpty()){
			//이 경우라면 최소 한개는 파일첨부

			String fname = cal.getTimeInMillis()+file.getOriginalFilename();
			//String path = request.getServletContext().getRealPath("/Upload/BoardFile/");
			String path = finaldata.path+"BoardFile";
			String fullpath = path + "\\" + fname;
			System.out.println(fullpath);
			if(!fname.equals("")){
				//서버에 물리적 경로 파일쓰기작업
				FileOutputStream fs = new FileOutputStream(fullpath);
				fs.write(file.getBytes());
				fs.close();
			}
			fileName = fname; //파일의 이름만 별도 관리
		}


		//DB insert (파일명)


		board.setBoardfilesrc(fileName);
		boarddao.insertNewBoard(board);

		//request.setAttribute("boardcode", board.getBoardcode());
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("boardcode", board.getBoardcode());

		//	board/BoardList.jsp?boardcode=1

		//	      return "redirect:BoardList.htm?boardcode="+board.getBoardcode();
		return "redirect:BoardList.htm";//신기하네...
	}





	@RequestMapping(value = "BoardReWrite.htm")
	public String BoardReWrite(@RequestParam(value="boardnum")int boardnum, Model model,HttpServletRequest request)throws ClassNotFoundException,SQLException {

		System.out.println("게시판 수정하기 boardnum: " +boardnum);


		BoardDAO boarddao = sqlsession.getMapper(BoardDAO.class);
		BoardListDAO boardlistdao = sqlsession.getMapper(BoardListDAO.class);

		
		Board board = boarddao.getBoard(boardnum);
		BoardList boardlist = boardlistdao.getBoardList(boardnum);

		System.out.println(board);

		model.addAttribute("boardlist", boardlist);
		model.addAttribute("board", board);

		return "board.BoardReWrite";
	}


	@RequestMapping(value = "BoardReWriteOk.htm")
	public String BoardReWriteOk(Board board, Model model, HttpServletRequest request)throws ClassNotFoundException,SQLException, IOException {

		System.out.println("게시판 수정 boardnum: " +board.getBoardcode());
		System.out.println(board);
		
		
		BoardDAO boarddao = sqlsession.getMapper(BoardDAO.class);
		String filesrc = boarddao.getBoard(board.getBoardnum()).getBoardfilesrc();
		
		
		Calendar cal = Calendar.getInstance();
		
		CommonsMultipartFile file =board.getFile();
		
		System.out.println("filesrc: " + filesrc);
		System.out.println("getfilesrc: "+file.getName());
		
		
		if(!filesrc.equals(file.getName())){
			String fileName = null;
			if(!file.isEmpty()){
		
				String fname = cal.getTimeInMillis()+file.getOriginalFilename();
				//String path = request.getServletContext().getRealPath("/Upload/BoardFile/");
				String path = finaldata.path+"BoardFile";
				String fullpath = path + "\\" + fname;

				if(!fname.equals("")){
					//서버에 물리적 경로 파일쓰기작업
					FileOutputStream fs = new FileOutputStream(fullpath);
					fs.write(file.getBytes());
					fs.close();
				}
				fileName = fname; //파일의 이름만 별도 관리
			}
			board.setBoardfilesrc(fileName);
		}
		

		BoardListDAO boardlistdao = sqlsession.getMapper(BoardListDAO.class);
		BoardList boardlist =  boardlistdao.getBoardListforCode(board.getBoardcode());
		boarddao.updateBoard(board);
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("boardcode", board.getBoardcode());

		return "redirect:BoardDetail.htm?boardnum="+board.getBoardnum();//신기하네...
	}


	@RequestMapping(value = "BoardDelete.htm")
	public String BoardDelete(@RequestParam(value="boardnum")int boardnum, Model model)throws ClassNotFoundException,SQLException {


		BoardDAO boarddao = sqlsession.getMapper(BoardDAO.class);
		BoardListDAO boardlistdao = sqlsession.getMapper(BoardListDAO.class);
		int boardcode = boarddao.getBoard(boardnum).getBoardcode();
		boarddao.deleteBoard(boardnum);

		return "redirect:BoardList.htm?boardcode="+boardcode;
	}


	@RequestMapping("download.htm")
	public void download(@RequestParam(value="f")String f,
			HttpServletRequest request , 
			HttpServletResponse response) throws IOException{

		String fname = new String(f.getBytes("euc-kr"),"8859_1");

		response.setHeader("Content-Disposition", "attachment;filename=" + fname +";");
		//String fullpath = request.getServletContext().getRealPath("/Upload/" + p + "/" + f);
		//String fullpath = request.getServletContext().getRealPath("/Upload/BoardFile/" + f);
		
		
		String fullpath = finaldata.path + "BoardFile\\"+f;
		System.out.println(fullpath);
		FileInputStream fin = new FileInputStream(fullpath);

		ServletOutputStream sout = response.getOutputStream();
		byte[] buf = new byte[1024]; //전체를 다읽지 않고 1204byte씩 읽어서
		int size = 0;
		while((size=fin.read(buf,0,buf.length)) != -1) //buffer 에 1024byte 담고
		{                                              //마지막 남아있는 byte 담고  그다음 없으면 탈출
			sout.write(buf, 0, size); //1kbyte씩 출력 
		}
		fin.close();
		sout.close();
	}
	
	@RequestMapping("BoardNotice.htm")
	public String BoardNotice(@RequestParam(value="boardnum")int boardnum,@RequestParam(value="notice",required=true)int boardnotice) throws IOException, ClassNotFoundException, SQLException{
		
		BoardDAO boarddao = sqlsession.getMapper(BoardDAO.class);
		boarddao.updateNotice(boardnotice, boardnum);
		
		
//		if(boardnotice == 1){
//			boarddao.updateNotice(boardnotice, boardnum);
//		}else if(boardnotice ==0 ){
//			boarddao.updateNotice(boardnotice, boardnum);
//		}else{
//			System.out.println("error");
//		}
		
		return "redirect:BoardDetail.htm?boardnum="+boardnum;
		
	}
}

