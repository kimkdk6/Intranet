package controllers;

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
	public @ResponseBody String checkin(String userid,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		userid="m5";
		AttendanceDAO checkin = sqlSession.getMapper(AttendanceDAO.class);
		
		checkin.checkin(userid);

		return null;
	}
	
	@RequestMapping(value = "checkincheck.htm")
	public @ResponseBody String checkincheck(String userid,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		userid="m5";
		AttendanceDAO checkin = sqlSession.getMapper(AttendanceDAO.class);
		
		String Checkin= checkin.checkincheck(userid);
		System.out.println(Checkin);
		return Checkin;
	}
	
	@RequestMapping(value = "checkout.htm")
	public @ResponseBody String checkout(String userid,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		userid="m5";
		AttendanceDAO checkout = sqlSession.getMapper(AttendanceDAO.class);
		
		checkout.checkout(userid);
		return null;
	}
	
	@RequestMapping(value = "checkoutcheck.htm")
	public @ResponseBody String checkoutcheck(String userid,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		userid="m5";
		AttendanceDAO checkout = sqlSession.getMapper(AttendanceDAO.class);
		

		String Checkout= checkout.checkoutcheck(userid);

		return Checkout;
	}
}
