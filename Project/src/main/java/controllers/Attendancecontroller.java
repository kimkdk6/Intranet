package controllers;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.AttendanceDAO;

@Controller
@RequestMapping("/attendance/")
public class Attendancecontroller {
	
	@Autowired
	private SqlSession sqlSession;
	
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

		return Latecheck;
	}
	
	/*지각 여부*/
	@RequestMapping(value = "latereason.htm")
	public @ResponseBody String latereason(Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		
		AttendanceDAO Latereason = sqlSession.getMapper(AttendanceDAO.class);
		 Latereason.letereason(principal.getName(),request.getParameter("latereason"));
		
		return null;
	}
	
	@RequestMapping(value = "Commute.htm")
	public String commute(Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
	
		/*AttendanceDAO checkin = sqlSession.getMapper(AttendanceDAO.class);

		checkin.checkin(principal.getName());
		String Attendance= checkin.checkincheck(principal.getName());*/

		return "attendance.Commute";
	}
	
	@RequestMapping(value = "AttendanceCheck.htm")
	public String AttendanceCheck(Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
	
		/*AttendanceDAO checkin = sqlSession.getMapper(AttendanceDAO.class);

		checkin.checkin(principal.getName());
		String Attendance= checkin.checkincheck(principal.getName());*/

		return "attendance.AttendanceCheck";
	}
	
}
