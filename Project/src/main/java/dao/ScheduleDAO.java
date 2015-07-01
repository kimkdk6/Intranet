package dao;

import java.sql.SQLException;
import java.util.List;

import dto_vo.Schedule.Schcategory;
import dto_vo.Schedule.Schedule;
import dto_vo.Schedule.ScheduleView;

public interface ScheduleDAO {

   // schedule 가져오기
   List<ScheduleView> getSchedule( String userid ) throws ClassNotFoundException, SQLException;
   
   // schedule category 가져오기
   //List<Schcategory> getSchCategory( String userid ) throws ClassNotFoundException, SQLException;
   
// scedule category dept일정
   List<Schcategory> getSchCategoryDept( String userid ) throws ClassNotFoundException, SQLException;
   
   // scedule category team일정
   List<Schcategory> getSchCategoryTeam( String userid ) throws ClassNotFoundException, SQLException;
   
   // scedule category 개인일정
   List<Schcategory> getSchCategoryUser( String userid ) throws ClassNotFoundException, SQLException;
   
   /*// scedule start 시간
   List<Schcategory> getStartSchedule( String userid ) throws ClassNotFoundException, SQLException;
   
   // scedule end 시간
   List<Schcategory> getEndSchedule( String userid ) throws ClassNotFoundException, SQLException;*/
   
   // schedule Insert
   public void InsertSchedule( Schedule schedule ) throws ClassNotFoundException, SQLException;
   
   // schedule Delete
   public void DeleteSchedule( int schnum ) throws ClassNotFoundException, SQLException; 
}