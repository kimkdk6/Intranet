package dao;

import java.sql.SQLException;
import java.util.List;

import dto_vo.Schedule.Schcategory;
import dto_vo.Schedule.Schedule;

public interface ScheduleDAO {

   // schedule 가져오기
   List<Schedule> getSchedule( String userid ) throws ClassNotFoundException, SQLException;
   
   // schedule category 가져오기
   List<Schcategory> getSchCategory( String userid ) throws ClassNotFoundException, SQLException;
}