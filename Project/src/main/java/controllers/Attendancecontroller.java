package controllers;

import java.security.Principal;
import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.View;

import dao.AttendanceDAO;

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

		model.addAttribute("all", all);
		
		model.addAttribute("offlateness", offlateness);
		model.addAttribute("devellateness", devellateness);
		model.addAttribute("manalateness", manalateness);
		model.addAttribute("busilateness", busilateness);
		
		int offleave = attdao.offleave(yy,mm,dd);
		int develleave = attdao.develleave(yy,mm,dd);
		int manaleave = attdao.manaleave(yy,mm,dd);
		int busileave = attdao.busileave(yy,mm,dd);
		
		model.addAttribute("offleave", offleave);
		model.addAttribute("develleave", develleave);
		model.addAttribute("manaleave", manaleave);
		model.addAttribute("busileave", busileave);
		
		int offabsence = attdao.offabsence(yy,mm,dd);
		int develabsence = attdao.develabsence(yy,mm,dd);
		int manaabsence = attdao.manaabsence(yy,mm,dd);
		int busiabsence = attdao.busiabsence(yy,mm,dd);
		
		
		model.addAttribute("offabsence", offabsence);
		model.addAttribute("develabsence", develabsence);
		model.addAttribute("manaabsence", manaabsence);
		model.addAttribute("busiabsence", busiabsence);
		
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
	public String commute(Principal principal,HttpServletRequest request, HttpServletResponse response) throws Exception
	{
	
		/*AttendanceDAO checkin = sqlSession.getMapper(AttendanceDAO.class);

		checkin.checkin(principal.getName());
		String Attendance= checkin.checkincheck(principal.getName());*/

		return "attendance.Commute";
	}
	

	
	
	
}
