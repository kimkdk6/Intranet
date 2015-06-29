package controllers;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.View;

import dao.ScheduleDAO;
import dto_vo.Emp.Emp;
import dto_vo.Schedule.Schcategory;
import dto_vo.Schedule.Schedule;


@Controller
@RequestMapping("/schedule/")
public class Schedulecontroller {
	@Autowired
	private SqlSession sqlsession;
	
	@Autowired
    private View jsonView;
	

	//게시판 메인 페이지 보기
	@RequestMapping(value = "ScheduleMain.htm")
	public String ScheduleMain(Model model) throws ClassNotFoundException,SQLException {

		return "schedule.schedule";
	}
	
	 @RequestMapping(value="getSchedule.htm")
	    View getTeamName(Model model, HttpServletResponse response,HttpSession session) throws ClassNotFoundException, SQLException, UnsupportedEncodingException 
	    {
		 
		  Emp emp = (Emp)session.getAttribute("myemp");
		//  System.out.println();
		  System.out.println(emp);
		  
		  String userid = emp.getUserid();
		 
	      System.out.println("getSchedule.htm >> userid : " + userid);
	      response.setContentType("text/html;charset=UTF-8");
	      
	      ScheduleDAO scheduleDAO = sqlsession.getMapper(ScheduleDAO.class);
	      
	      List<Schedule> schedule = scheduleDAO.getSchedule(userid);
	      List<Schcategory> schcategory = scheduleDAO.getSchCategory(userid);
	      
	      System.out.println(schcategory.toString());
	      System.out.println(schedule.toString());
	      
	      model.addAttribute("schedule", schedule);
	      model.addAttribute("schcategory", schcategory);
	        
	      return jsonView;
	    }
}


	