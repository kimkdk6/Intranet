package controllers;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.MessageDAO;
import dto_vo.Board.PagingUtil;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Message;



@Controller
@RequestMapping("/message/")
public class Messagecontroller {

	@Autowired
	private SqlSession sqlsession;

	//게시판 메인 페이지 보기
	@RequestMapping(value = "ReceiveMessage.htm")
	public String RecieveMessage(Model model,HttpSession session,
			@RequestParam(value="cpage", defaultValue="1") int cpage,
			@RequestParam(value="pagesize", defaultValue="10")int pagesize
			) throws ClassNotFoundException,SQLException {
		
		
		Emp myemp = (Emp)session.getAttribute("myemp");
		String userid = myemp.getUserid();

		MessageDAO messageDao = sqlsession.getMapper(MessageDAO.class);

		int startmessage = cpage * pagesize - (pagesize - 1);
		int endmessage = cpage * pagesize;

		System.out.println("startmessage: " +startmessage);
		System.out.println("endmessage: " +endmessage);

		
		List<Message> messagelist = messageDao.RMessage(userid, startmessage, endmessage);
		int totalCount = messageDao.totalCount(userid);
		
		
		
		PagingUtil pagingUtil = new PagingUtil(cpage, totalCount, pagesize, 5);

		model.addAttribute("messagelist", messagelist);
		model.addAttribute("paging", pagingUtil);

		return "message.RMSGList";
	}	
}


