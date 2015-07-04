package controllers;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
   

   //寃뚯떆�뙋 硫붿씤 �럹�씠吏� 蹂닿린
      @RequestMapping(value = "ScheduleMain.htm")
      public String ScheduleMain(Model model, HttpSession session) throws ClassNotFoundException,SQLException {
    	  
    	  
    	 System.out.println("ScheduleMain>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
         Emp emp = (Emp)session.getAttribute("myemp");
         //  System.out.println();
//         System.out.println(emp);
              
         String userid = emp.getUserid();
         
         ScheduleDAO scheduleDAO = sqlsession.getMapper(ScheduleDAO.class);
        
         int deptcode = scheduleDAO.getDeptCode(userid);
         int teamcode = scheduleDAO.getTeamCode(userid);
         
         List<Schcategory> getSchCategoryDept = scheduleDAO.getSchCategoryDept(deptcode);
         List<Schcategory> getSchCategoryTeam = scheduleDAO.getSchCategoryTeam(teamcode);
         List<Schcategory> getSchCategoryUser = scheduleDAO.getSchCategoryUser(userid);
          
         model.addAttribute("getSchCategoryDept", getSchCategoryDept);
         model.addAttribute("getSchCategoryTeam", getSchCategoryTeam);
         model.addAttribute("getSchCategoryUser", getSchCategoryUser);
          
         return "schedule.schedule";
      }
   
    @RequestMapping(value="getSchedule.htm")
       View getTeamName(Model model, HttpServletResponse response,HttpSession session) throws ClassNotFoundException, SQLException, UnsupportedEncodingException 
       {
    	
    	System.out.println("getSchedule>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
        Emp emp = (Emp)session.getAttribute("myemp");
//  	System.out.println();
//      System.out.println(emp);
        
        String userid = emp.getUserid();
       
//      System.out.println("getSchedule.htm >> userid : " + userid);
        response.setContentType("text/html;charset=UTF-8");
         
        ScheduleDAO scheduleDAO = sqlsession.getMapper(ScheduleDAO.class);
         
        int deptcode = scheduleDAO.getDeptCode(userid);
        int teamcode = scheduleDAO.getTeamCode(userid);
        
        
        System.out.println("deptcode : " + deptcode);
        System.out.println("teamcode : " + teamcode);
        
        List<ScheduleView> schedule = scheduleDAO.getSchedule(deptcode, teamcode, userid);
         
        System.out.println("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb " + schedule.toString());
         /*
         List<Schcategory> schcategory = scheduleDAO.getSchCategory(userid);
         List<Schcategory> getStartSchedule = scheduleDAO.getStartSchedule(userid);
         List<Schcategory> getEndSchedule = scheduleDAO.getEndSchedule(userid);
          */         
       /*  System.out.println("schedule : " + schedule.toString());
         System.out.println("start : " + getStartSchedule.toString());
         System.out.println("end : " + getEndSchedule.toString());
         System.out.println(schedule.get(1).getSchnum());
         System.out.println(schedule.get(1).getScstart());
         
         System.out.println(schcategory.toString());
         System.out.println(schedule.toString());*/
         
         
         model.addAttribute("schedule", schedule);
        
         
         //model.addAttribute("schcategory", schcategory);
       
         /* model.addAttribute("StartSchedule", getStartSchedule);
         model.addAttribute("EndSchedule", getEndSchedule);*/
       
         return jsonView;
       }
    
    // 스케줄 추가
    @RequestMapping(value = "insertSchedule.htm")
    public String InsertSchedule(Model model, HttpSession session, HttpServletRequest request) throws ClassNotFoundException, SQLException {
    	
    	
    	System.out.println("insertSchedule>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
       Emp emp = (Emp) session.getAttribute("myemp");
       System.out.println(emp);

       String userid = emp.getUserid();
       int catecode = Integer.parseInt(request.getParameter("catecode"));
       String scstart = request.getParameter("scstart");
       String scend = request.getParameter("scend");
       String sctitle = request.getParameter("sctitle");
       String sccontent = request.getParameter("sccontent");
       
       /*System.out.println("catecode : " + catecode);
       System.out.println("scstart : " + scstart);*/
       
 /*      System.out.println("insertSchedule.htm >> " + request.getParameter("catecode"));
       System.out.println("insertSchedule.htm >> " + request.getParameter("scstart"));
       System.out.println("insertSchedule.htm >> " + request.getParameter("scend"));t
       System.out.println("insertSchedule.htm >> " + request.getParameter("sctitle"));
       System.out.println("insertSchedule.htm >> " + request.getParameter("sccontent"));*/
       
       ScheduleDAO scheduleDAO = sqlsession.getMapper(ScheduleDAO.class);
       
       Schedule schedule = new Schedule();
       schedule.setUserid(userid);
       schedule.setCatecode(catecode);
       schedule.setScstart(scstart);
       schedule.setScend(scend);
       schedule.setSctitle(sctitle);
       schedule.setSccontent(sccontent);
       
       //System.out.println(schedule);
       
       scheduleDAO.InsertSchedule(schedule);
       
       return "schedule.schedule";
    }  
    
    @RequestMapping(value = "deleteSchedule.htm", method= RequestMethod.GET)
    public @ResponseBody void DeleteSchedule(Model model, @RequestParam(value="schnum")int schnum, HttpServletRequest request) throws ClassNotFoundException, SQLException {

    	//System.out.println("schnum : " + schnum);
    	System.out.println("deleteSchedule>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
    	ScheduleDAO scheduleDAO = sqlsession.getMapper(ScheduleDAO.class);
    	scheduleDAO.DeleteSchedule(schnum);
    }   
    
    // 카테고리 추가
    @RequestMapping(value = "insertCategory.htm")
    public String InsertCategory(Model model, HttpSession session, HttpServletRequest request) throws ClassNotFoundException, SQLException, UnsupportedEncodingException {

    	System.out.println("insertCategory>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		Emp emp = (Emp) session.getAttribute("myemp");
		
		String userid = emp.getUserid();
		String catename = request.getParameter("catename");
		//catename = new String(catename.getBytes("ISO-8859-1"),"UTF-8");
		String catecontent = request.getParameter("catecontent");
		//catecontent = new String(catecontent.getBytes("ISO-8859-1"),"UTF-8");
		String cateshare = request.getParameter("cateshare");

		String color = request.getParameter("catecode2");
		
		System.out.println("catename : " + catename);
		System.out.println("catecontent : " + catecontent);
		System.out.println("color : " + color);
		
		// String color = request.getParameter("currColor");
		// System.out.println("color : " + color);

		ScheduleDAO scheduleDAO = sqlsession.getMapper(ScheduleDAO.class);

		int deptcode = scheduleDAO.getDeptCode(userid);
        int teamcode = scheduleDAO.getTeamCode(userid);
        
		Schcategory schcategory = new Schcategory();
		schcategory.setUserid(userid);
		schcategory.setCatename(catename);
		schcategory.setCatecontent(catecontent);
		schcategory.setColor(color);
		
		//System.out.println(schcategory.getColor());
		
		if( cateshare.equals("d") )
		{
			schcategory.setDeptcode(deptcode);
			scheduleDAO.InsertDeptCategory(schcategory);
			
		} else if( cateshare.equals("t") ) {
			
			schcategory.setTeamcode(teamcode);
			scheduleDAO.InsertTeamCategory(schcategory);
		} else {
			
			scheduleDAO.InsertUserCategory(schcategory);
		}
		
		List<Schcategory> getSchCategoryDept = scheduleDAO.getSchCategoryDept(deptcode);
        List<Schcategory> getSchCategoryTeam = scheduleDAO.getSchCategoryTeam(teamcode);
        List<Schcategory> getSchCategoryUser = scheduleDAO.getSchCategoryUser(userid);
        
         
        model.addAttribute("getSchCategoryDept", getSchCategoryDept);
        model.addAttribute("getSchCategoryTeam", getSchCategoryTeam);
        model.addAttribute("getSchCategoryUser", getSchCategoryUser);

		return "schedule.schedule";
	}
    
    // 카테고리 삭제
    @RequestMapping(value = "deleteCategory.htm")
    public String DeleteCategory(Model model, HttpServletRequest request, HttpSession session) throws ClassNotFoundException, SQLException {

    	//System.out.println("schnum : " + schnum);
    	System.out.println("deleteSchedule>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
    	
    	int catecode = Integer.parseInt(request.getParameter("catecode1"));
    	Emp emp = (Emp) session.getAttribute("myemp");

		String userid = emp.getUserid();
		
    	System.out.println("catecode : " + catecode);
    	
    	
    	ScheduleDAO scheduleDAO = sqlsession.getMapper(ScheduleDAO.class);
    	
    	int deptcode = scheduleDAO.getDeptCode(userid);
        int teamcode = scheduleDAO.getTeamCode(userid);
    	
    	scheduleDAO.DeleteScheduleCategory(catecode);
    	scheduleDAO.DeleteCategory(catecode);
    	
    	List<Schcategory> getSchCategoryDept = scheduleDAO.getSchCategoryDept(deptcode);
        List<Schcategory> getSchCategoryTeam = scheduleDAO.getSchCategoryTeam(teamcode);
        List<Schcategory> getSchCategoryUser = scheduleDAO.getSchCategoryUser(userid);
        
         
        model.addAttribute("getSchCategoryDept", getSchCategoryDept);
        model.addAttribute("getSchCategoryTeam", getSchCategoryTeam);
        model.addAttribute("getSchCategoryUser", getSchCategoryUser);
    	
        return "schedule.schedule";
    }   
}

   