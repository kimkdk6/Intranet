package dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import dto_vo.Schedule.Schcategory;
import dto_vo.Schedule.Schedule;
import dto_vo.Schedule.ScheduleView;

public interface ScheduleDAO {

   // schedule 가져오기
   List<ScheduleView> getSchedule( @Param("deptcode")int deptcode, @Param("teamcode")int teamcode, @Param("userid")String userid ) throws ClassNotFoundException, SQLException;
   
   // schedule category 가져오기
   //List<Schcategory> getSchCategory( String userid ) throws ClassNotFoundException, SQLException;
   
   // scedule category dept일정
   List<Schcategory> getSchCategoryDept( int deptcode ) throws ClassNotFoundException, SQLException;
   
   // scedule category team일정
   List<Schcategory> getSchCategoryTeam( int teamcode ) throws ClassNotFoundException, SQLException;
   
   // scedule category 개인일정
   List<Schcategory> getSchCategoryUser( String userid ) throws ClassNotFoundException, SQLException;
   
   // schedule Insert
   public void InsertSchedule( Schedule schedule ) throws ClassNotFoundException, SQLException;
   
   // schedule Delete
   public void DeleteSchedule( int schnum ) throws ClassNotFoundException, SQLException;
   
   // getDeptCode
   public int getDeptCode( String userid ) throws ClassNotFoundException, SQLException;
   
   // getTeamCode
   public int getTeamCode( String userid ) throws ClassNotFoundException, SQLException;
   
   // Dept schedule Insert
   public void InsertDeptCategory( Schcategory schcategory ) throws ClassNotFoundException, SQLException;
   
   // Team schedule Insert
   public void InsertTeamCategory( Schcategory schcategory ) throws ClassNotFoundException, SQLException;
   
   // User schedule Insert
   public void InsertUserCategory( Schcategory schcategory ) throws ClassNotFoundException, SQLException;	
   
   // category Delete
   public void DeleteCategory( int catecode ) throws ClassNotFoundException, SQLException;
   
   // schedule Delete
   public void DeleteScheduleCategory( int catecode ) throws ClassNotFoundException, SQLException;
}