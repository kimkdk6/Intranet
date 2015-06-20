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

		return null;
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
		return null;
	}
	
	@RequestMapping(value = "checkoutcheck.htm")
	public @ResponseBody String checkoutcheck(Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		
		AttendanceDAO checkout = sqlSession.getMapper(AttendanceDAO.class);
		

		String Checkout= checkout.checkoutcheck(principal.getName());

		return Checkout;
	}
}
