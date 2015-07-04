package controllers;

import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.sql.SQLException;
import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.View;

import dao.AttendanceDAO;
import dao.EmpDAO;
import dao.ScheduleDAO;
import dto_vo.Attendance.Absence;
import dto_vo.Attendance.Biztrip;
import dto_vo.Attendance.Holiday;
import dto_vo.Attendance.Lateness;
import dto_vo.Attendance.Leave;
import dto_vo.Emp.Emp;
import dto_vo.Schedule.Schcategory;
import dto_vo.Schedule.ScheduleView;

@Controller
@RequestMapping("/attendance/")
public class Attendancecontroller {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	   private View jsonView;

	@RequestMapping(value = "AttendanceCheck.htm")
	public String AttendanceCheck(@RequestParam(value="yy",defaultValue="")String yy, @RequestParam(value="mm",defaultValue="")String mm, @RequestParam(value="dd",defaultValue="")String dd, Model model,Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		GregorianCalendar now = new GregorianCalendar();
		String date = String.format("%TF",now);
		if(yy.equals("")){
			yy = date.split("-")[0];
			mm = date.split("-")[1];
			dd = date.split("-")[2];
		}

		AttendanceDAO attdao = sqlSession.getMapper(AttendanceDAO.class);
		List<String> all = attdao.allmember(yy,mm,dd);
		
		int offlateness = attdao.offlateness(yy,mm,dd);
		int devellateness = attdao.devellateness(yy,mm,dd);
		int manalateness = attdao.manalateness(yy,mm,dd);
		int busilateness = attdao.busilateness(yy,mm,dd);
		int alllateness = attdao.alllateness(yy,mm,dd);

		model.addAttribute("all", all);
		
		model.addAttribute("offlateness", offlateness);
		model.addAttribute("devellateness", devellateness);
		model.addAttribute("manalateness", manalateness);
		model.addAttribute("busilateness", busilateness);
		model.addAttribute("alllateness", alllateness);
		
		int offleave = attdao.offleave(yy,mm,dd);
		int develleave = attdao.develleave(yy,mm,dd);
		int manaleave = attdao.manaleave(yy,mm,dd);
		int busileave = attdao.busileave(yy,mm,dd);
		int allleave = attdao.allleave(yy,mm,dd);
		
		model.addAttribute("offleave", offleave);
		model.addAttribute("develleave", develleave);
		model.addAttribute("manaleave", manaleave);
		model.addAttribute("busileave", busileave);
		model.addAttribute("allleave", allleave);
		
		int offabsence = attdao.offabsence(yy,mm,dd);
		int develabsence = attdao.develabsence(yy,mm,dd);
		int manaabsence = attdao.manaabsence(yy,mm,dd);
		int busiabsence = attdao.busiabsence(yy,mm,dd);
		int allabsence = attdao.allabsence(yy,mm,dd);
		
		model.addAttribute("offabsence", offabsence);
		model.addAttribute("develabsence", develabsence);
		model.addAttribute("manaabsence", manaabsence);
		model.addAttribute("busiabsence", busiabsence);
		model.addAttribute("allabsence", allabsence);
		
		int offholiday = attdao.offholiday(yy,mm,dd);
		int develholiday = attdao.develholiday(yy,mm,dd);
		int manaholiday = attdao.manaholiday(yy,mm,dd);
		int busiholiday = attdao.busiholiday(yy,mm,dd);
		int allholiday = attdao.allholiday(yy,mm,dd);
		
		model.addAttribute("offholiday", offholiday);
		model.addAttribute("develholiday", develholiday);
		model.addAttribute("manaholiday", manaholiday);
		model.addAttribute("busiholiday", busiholiday);
		model.addAttribute("allholiday", allholiday);
		
		int offbiztrip = attdao.offbiztrip(yy,mm,dd);
		int develbiztrip = attdao.develbiztrip(yy,mm,dd);
		int manabiztrip = attdao.manabiztrip(yy,mm,dd);
		int busibiztrip = attdao.busibiztrip(yy,mm,dd);
		int allbiztrip = attdao.allbiztrip(yy,mm,dd);
		
		model.addAttribute("offbiztrip", offbiztrip);
		model.addAttribute("develbiztrip", develbiztrip);
		model.addAttribute("manabiztrip", manabiztrip);
		model.addAttribute("busibiztrip", busibiztrip);
		model.addAttribute("allbiztrip", allbiztrip);
		
		return "attendance.AttendanceCheck";
	}
	
	@RequestMapping(value = "checkin.htm")
	public @ResponseBody String checkin(Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
	
		AttendanceDAO checkin = sqlSession.getMapper(AttendanceDAO.class);

		checkin.checkin(principal.getName());
		String Checkincheck= checkin.checkincheck(principal.getName());

		return Checkincheck;
	}
	
	@RequestMapping(value = "checkincheck.htm")
	public @ResponseBody String checkincheck(Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		AttendanceDAO checkin = sqlSession.getMapper(AttendanceDAO.class);
		String Checkin= checkin.checkincheck(principal.getName());
		return Checkin;
	}
	
	@RequestMapping(value = "checkout.htm")
	public @ResponseBody String checkout(Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		
		AttendanceDAO checkout = sqlSession.getMapper(AttendanceDAO.class);
		
		checkout.checkout(principal.getName());
		String Checkoutcheck= checkout.checkoutcheck(principal.getName());
		return Checkoutcheck;
	}
	
	@RequestMapping(value = "checkoutcheck.htm")
	public @ResponseBody String checkoutcheck(Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		
		AttendanceDAO checkout = sqlSession.getMapper(AttendanceDAO.class);
		

		String Checkout= checkout.checkoutcheck(principal.getName());

		return Checkout;
	}
	
	@RequestMapping(value = "latecheck.htm")
	public @ResponseBody String latecheck(Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		
		AttendanceDAO latecheck = sqlSession.getMapper(AttendanceDAO.class);
		String Latecheck= latecheck.latecheck(principal.getName());
		System.out.println(Latecheck);
		return Latecheck;
	}
	
	/*지각 여부*/
	@RequestMapping(value = "latereason.htm")
	public @ResponseBody void latereason(Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		
		AttendanceDAO Latereason = sqlSession.getMapper(AttendanceDAO.class);
		Latereason.letereason(principal.getName(),request.getParameter("reason"));
		
	}
	/*조퇴 여부*/
	@RequestMapping(value = "leavereason.htm")
	public @ResponseBody void leavereason(Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
	
		AttendanceDAO leavereason = sqlSession.getMapper(AttendanceDAO.class);
		leavereason.leavereason(principal.getName(),request.getParameter("reason"));
		
	}
	
	
	@RequestMapping(value = "Commute.htm")
	public String commute(Principal principal,HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception
	{
		
		
		
		/*AttendanceDAO checkin = sqlSession.getMapper(AttendanceDAO.class);

		checkin.checkin(principal.getName());
		String Attendance= checkin.checkincheck(principal.getName());*/

		
		
		return "attendance.Commute";
	}
	
	 @RequestMapping(value="getCommute.htm")
     View getCommute(Model model, HttpServletResponse response,HttpSession session) throws ClassNotFoundException, SQLException, UnsupportedEncodingException 
     {
  	
		System.out.println("getCommute>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");

		response.setContentType("text/html;charset=UTF-8");
        Emp emp = (Emp)session.getAttribute("myemp");
        //  System.out.println();
//         System.out.println(emp);
              
        String userid = emp.getUserid();
		String username = emp.getEname();
		
		/*System.out.println(emp.getPoscode());
        System.out.println("Commute userid : " + userid );
		System.out.println("Commute ename : " + username);*/
		
		AttendanceDAO commute = sqlSession.getMapper(AttendanceDAO.class);
		EmpDAO empdao = sqlSession.getMapper(EmpDAO.class);
		
		Emp getEmp = empdao.getEmp3(userid);
		
		String posname = getEmp.getPoscode();
		//System.out.println(posname);
		
		List<Leave> Leave = commute.getLeave(userid);
        List<Absence> Absence = commute.getAbsence(userid);
        List<Lateness> Lateness = commute.getLateness(userid);
        
        String BiztripEname = username + " " + posname + " : " + "출장";
        String HolidayEname = username + " " + posname + " : " + "휴가";
        
        List<Biztrip> Biztrip = commute.getBiztrip(userid, BiztripEname);
        List<Holiday> Holiday = commute.getHoliday(userid, HolidayEname);
        
        System.out.println("BBBBBB" + Biztrip.toString());
        System.out.println("HHHHHH" + Holiday.toString());
        
        System.out.println("getLeave : " + Leave.toString());
        System.out.println("getAbsence : " + Absence.toString());
        System.out.println("getLateness : " + Lateness.toString());
        System.out.println("getBiztrip : " + Biztrip.toString());
        System.out.println("getHoliday : " + Holiday.toString());
        
        
		//model.addAttribute("schedule", schedule);
        model.addAttribute("Leave", Leave);
        model.addAttribute("Absence", Absence);
        model.addAttribute("Lateness", Lateness);
        model.addAttribute("Biztrip", Biztrip);
        model.addAttribute("Holiday", Holiday);
		
		return jsonView;
	}	

	
	
	
}
