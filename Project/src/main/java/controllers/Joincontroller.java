package controllers;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.View;

import dao.EmpDAO;
import dao.JoinDAO;
import dto_vo.Board.File;
import dto_vo.Emp.Dept;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Empinfo;
import dto_vo.Emp.Position;
import dto_vo.Emp.Team;

@Controller
@RequestMapping("/joinus/")
public class Joincontroller {
   
   @Autowired
   private SqlSession sqlSession;
   
   @Autowired
   private View jsonView;
   
   @RequestMapping(value="join.htm", method=RequestMethod.GET)
   public String join(Model model) throws ClassNotFoundException, SQLException 
   {
      
      JoinDAO joinDAO = sqlSession.getMapper(JoinDAO.class);
      List<Dept> DeptInfo =  joinDAO.getDeptName();
      
      List<Position> PosName = joinDAO.getPosName();
      
      System.out.println(DeptInfo.get(1));
      System.out.println(DeptInfo.get(2));
      System.out.println(DeptInfo.get(3));
      
      model.addAttribute("DeptInfo", DeptInfo);
      model.addAttribute("PosName", PosName);
      
      return "login.join";
   }
   
   @RequestMapping(value="join.htm", method=RequestMethod.POST)
   public String join(Emp emp, Empinfo empinfo, File File, HttpServletRequest request) throws ClassNotFoundException, SQLException, IOException 
   {
      CommonsMultipartFile file = File.getFile();
      Calendar cal = Calendar.getInstance();
      String fileName = null;
      
      if(!file.isEmpty()){
			//이 경우라면 최소 한개는 파일첨부

			String fname = cal.getTimeInMillis()+file.getOriginalFilename();
			//String path = request.getServletContext().getRealPath("/Upload/ProfilePhoto/");
			String path = finaldata.path+"ProfilePhoto";
			
			
			String fullpath = path + "\\" + fname;
			System.out.println(fullpath);
			if(!fname.equals("")){
				//서버에 물리적 경로 파일쓰기작업
				FileOutputStream fs = new FileOutputStream(fullpath);
				fs.write(file.getBytes());
				fs.close();
			}
			fileName = fname; //파일의 이름만 별도 관리
			empinfo.setUserphoto(fileName);
		} else {
			
			empinfo.setUserphoto("pic_bg.gif");
		}
      
      EmpDAO empDAO = sqlSession.getMapper(EmpDAO.class);
      //System.out.println("aaaaaaaaa" + empinfo.getUseraddr());
 
      String useraddr = request.getParameter("useraddr");
      String useraddr2 = request.getParameter("useraddr2");
      String FinalUseraddr = useraddr + " " + useraddr2;
      empinfo.setUseraddr(FinalUseraddr);
      
      
      //System.out.println(useraddr2);
      
      
      
      empDAO.joinMember(emp);
      empDAO.joinMemberInfo(empinfo);
      
      return "login.login";
   
   } 
   
   @RequestMapping(value="getTeamName.htm")
   View getTeamName(Model model, Dept dept, HttpServletResponse response) throws ClassNotFoundException, SQLException, UnsupportedEncodingException 
   {
      JoinDAO joinDAO = sqlSession.getMapper(JoinDAO.class);
      response.setContentType("text/html;charset=UTF-8");
      
      System.out.println("getTeamName >> deptcode : " + dept.getDeptcode());
      
      List<Team> TeamInfo = joinDAO.getTeamName(dept.getDeptcode());
      
      //JSONArray JsonTeamInfo = JSONArray.fromObject(TeamInfo);
      /*System.out.println("getTeamName >> TeamInfo" + TeamInfo.get(0));
      System.out.println("getTeamName >> TeamInfo" + TeamInfo.get(1));
      System.out.println("getTeamName >> TeamInfo" + TeamInfo.get(2));*/
      
      model.addAttribute("TeamInfo", TeamInfo);
      
      return jsonView;
   }
   
   /*@RequestMapping(value="checkId.htm")
   public checkId()*/
   // 아이디 중복체크
   @RequestMapping(value="IDcheck.htm", method=RequestMethod.POST)
   View IDcheck(Model model, String id, HttpServletResponse response) throws ClassNotFoundException, SQLException, UnsupportedEncodingException 
   {
      JoinDAO joinDAO = sqlSession.getMapper(JoinDAO.class);
      response.setContentType("text/html;charset=UTF-8");
      int result = 0;
      System.out.println("id: "+id);
      
      	if(joinDAO.duuserid(id) != null){
      		result = 1;
      	}
      
      model.addAttribute("result", result);
      
      return jsonView;
   }
}
