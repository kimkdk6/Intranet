package controllers;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.MessageDAO;
import dto_vo.Board.PagingUtil;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Message;

//ReceiveDetail

@Controller
@RequestMapping("/message/")
public class Messagecontroller {

	@Autowired
	private SqlSession sqlsession;
	
	
	@RequestMapping(value = "WriteMessage.htm" , method=RequestMethod.GET)
	public String WriteMessage(Model model,HttpSession session,
			@RequestParam(value="userid",required=false)String receiveid) throws ClassNotFoundException,SQLException {
		
		model.addAttribute("receiveid", receiveid);

		return "message.MSGWrite";
	}	

	@RequestMapping(value = "WriteMessage.htm" , method=RequestMethod.POST)
	@ResponseBody()
	public String WriteMessageOK(Model model,HttpSession session,
			Message message) throws ClassNotFoundException,SQLException {
		System.out.println(message);
		MessageDAO messageDao = sqlsession.getMapper(MessageDAO.class);
		messageDao.insertNewMessage(message);
	//	return "message.MSGWrite";
		return "  <script> "
				+ "alert( 'success' );"
				+ "window.close();"
				+ "</script>";
	}	


	// 메인 페이지 보기
	@RequestMapping(value = "ReceiveMessage.htm")
	public String RecieveMessage(Model model,HttpSession session,
			@RequestParam(value="cpage", defaultValue="1") int cpage
			) throws ClassNotFoundException,SQLException {
		
		int pagesize = 10;
		Emp myemp = (Emp)session.getAttribute("myemp");
		String userid = myemp.getUserid();

		MessageDAO messageDao = sqlsession.getMapper(MessageDAO.class);

		int startmessage = cpage * pagesize - (pagesize - 1);
		int endmessage = cpage * pagesize;

		System.out.println("startmessage: " +startmessage);
		System.out.println("endmessage: " +endmessage);

		
		List<Message> messagelist = messageDao.RMessage(userid, startmessage, endmessage);
		int totalCount = messageDao.totalReceiveCount(userid);
		
		
		
		PagingUtil pagingUtil = new PagingUtil(cpage, totalCount, pagesize, 5);

		model.addAttribute("messagelist", messagelist);
		model.addAttribute("paging", pagingUtil);

		return "message.RMSGList";
	}	
	
	
	@RequestMapping(value = "SendMessage.htm")
	public String SendMessage(Model model,HttpSession session,
			@RequestParam(value="cpage", defaultValue="1") int cpage
			) throws ClassNotFoundException,SQLException {
		
		int pagesize = 10;
		Emp myemp = (Emp)session.getAttribute("myemp");
		String userid = myemp.getUserid();

		MessageDAO messageDao = sqlsession.getMapper(MessageDAO.class);

		int startmessage = cpage * pagesize - (pagesize - 1);
		int endmessage = cpage * pagesize;

		System.out.println("startmessage: " +startmessage);
		System.out.println("endmessage: " +endmessage);

		
		List<Message> messagelist = messageDao.SMessage(userid, startmessage, endmessage);
		int totalCount = messageDao.totalSendCount(userid);
		
		
		
		PagingUtil pagingUtil = new PagingUtil(cpage, totalCount, pagesize, 5);

		model.addAttribute("messagelist", messagelist);
		model.addAttribute("paging", pagingUtil);

		return "message.SMSGList";
	}
	
	//게시판 메인 페이지 보기
	@RequestMapping(value = "ReceiveDetail.htm")
	public String ReceiveDetail(Model model,HttpSession session,
			@RequestParam(value="msgnum") int msgnum
			) throws ClassNotFoundException,SQLException {
		
		MessageDAO messageDao = sqlsession.getMapper(MessageDAO.class);
		
		
		Message message = messageDao.getMessage(msgnum);
		
		
		model.addAttribute("message", message);
		
		return "message.RMSDetail";
	}	
	
	
	@RequestMapping(value = "SendDetail.htm")
	public String SendDetail(Model model,HttpSession session,
			@RequestParam(value="msgnum") int msgnum
			) throws ClassNotFoundException,SQLException {
		
		MessageDAO messageDao = sqlsession.getMapper(MessageDAO.class);
		
		
		Message message = messageDao.getMessage(msgnum);
		
		
		model.addAttribute("message", message);
		
		return "message.SMSDetail";
	}	
	
	
	
	@RequestMapping(value = "ReceiveDelete.htm")
	public String ReceiveDelete(Model model,HttpSession session,
			@RequestParam(value="msgnum") int msgnum
			) throws ClassNotFoundException,SQLException {
		
		MessageDAO messageDao = sqlsession.getMapper(MessageDAO.class);
		
		
		messageDao.deleteRMessage(msgnum);
		
		
		
		return "redirect:ReceiveMessage.htm";
	}
	
	
	@RequestMapping(value = "SendDelete.htm")
	public String SendDelete(Model model,HttpSession session,
			@RequestParam(value="msgnum") int msgnum
			) throws ClassNotFoundException,SQLException {
		
		MessageDAO messageDao = sqlsession.getMapper(MessageDAO.class);
		
		
		messageDao.deleteRMessage(msgnum);
		
		
		
		return "redirect:SendMessage.htm";
	}	
	
}


