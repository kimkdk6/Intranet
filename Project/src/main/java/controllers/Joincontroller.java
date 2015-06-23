package controllers;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.View;

import dao.EmpDAO;
import dao.JoinDAO;
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
      
      /*System.out.println(DeptInfo.get(1));
      System.out.println(DeptInfo.get(2));
      System.out.println(DeptInfo.get(3));*/
      
      model.addAttribute("DeptInfo", DeptInfo);
      model.addAttribute("PosName", PosName);
      
      return "login.join";
   }
   
   @RequestMapping(value="join.htm", method=RequestMethod.POST)
   public String join(Emp emp, Empinfo empinfo) throws ClassNotFoundException, SQLException 
   {
      /*System.out.println("id : " + emp.getUserid());
      System.out.println("pwd : " + emp.getEmppwd());
      System.out.println("name : " + emp.getEname());*/
      System.out.println("emp deptcode : " + emp.getDeptcode());
      System.out.println("emp teamcode : " + emp.getTeamcode());
      System.out.println("emp poscode : " + emp.getPoscode());
      
      System.out.println("empinfo id : " + empinfo.getUserid());
      System.out.println("empinfo mail : " + empinfo.getUseremail());
      System.out.println("empinfo birth : " + empinfo.getBirth());
      
      EmpDAO empDAO = sqlSession.getMapper(EmpDAO.class);
      empDAO.joinMember(emp);
      empDAO.joinMemberInfo(empinfo);
      
      
      return "login.login";
   
      /*   String inputPwd = emp.getEmppwd();
      
      EmpDao empDao = sqlSession.getMapper(EmpDao.class);
      emp = empDao.isMember(emp);
      
      System.out.println(emp.getEmppwd());
      System.out.println(emp.getEname());
      
      if( inputPwd.equals(emp.getEmppwd()))
      {
         // 메인 페이지 url
         return "login.join";
      } else {
         return "login.login";
      }*/
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
}