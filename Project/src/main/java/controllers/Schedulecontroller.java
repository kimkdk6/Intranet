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
import dto_vo.Schedule.ScheduleView;


@Controller
@RequestMapping("/schedule/")
public class Schedulecontroller {
   @Autowired
   private SqlSession sqlsession;
   
   @Autowired
    private View jsonView;
   

   //게시판 메인 페이지 보기
      @RequestMapping(value = "ScheduleMain.htm")
      public String ScheduleMain(Model model, HttpSession session) throws ClassNotFoundException,SQLException {

         Emp emp = (Emp)session.getAttribute("myemp");
         //  System.out.println();
         System.out.println(emp);
              
         String userid = emp.getUserid();
         
         ScheduleDAO scheduleDAO = sqlsession.getMapper(ScheduleDAO.class);
         
          List<Schcategory> getSchCategoryDept = scheduleDAO.getSchCategoryDept(userid);
          List<Schcategory> getSchCategoryTeam = scheduleDAO.getSchCategoryTeam(userid);
          List<Schcategory> getSchCategoryUser = scheduleDAO.getSchCategoryUser(userid);
         
          System.out.println(getSchCategoryDept.toString());
          System.out.println(getSchCategoryTeam.toString());
          System.out.println(getSchCategoryUser.toString());
          
          model.addAttribute("getSchCategoryDept", getSchCategoryDept);
          model.addAttribute("getSchCategoryTeam", getSchCategoryTeam);
          model.addAttribute("getSchCategoryUser", getSchCategoryUser);
          
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
         
         List<ScheduleView> schedule = scheduleDAO.getSchedule(userid);
         List<Schcategory> schcategory = scheduleDAO.getSchCategory(userid);
         
         List<Schcategory> getStartSchedule = scheduleDAO.getStartSchedule(userid);
         List<Schcategory> getEndSchedule = scheduleDAO.getEndSchedule(userid);
         
        /* System.out.println("aaaaaaa" + getStartSchedule.toString());
         System.out.println("bbbbbbb" + getEndSchedule.toString());
         System.out.println(schedule.get(1).getSchnum());
         System.out.println(schedule.get(1).getScstart());
         
         System.out.println(schcategory.toString());
         System.out.println(schedule.toString());*/
         
         model.addAttribute("schedule", schedule);
         model.addAttribute("schcategory", schcategory);
         
         model.addAttribute("StartSchedule", getStartSchedule);
         model.addAttribute("EndSchedule", getEndSchedule);
       
         return jsonView;
       }
}


   