package dao;

import java.sql.SQLException;
import java.util.List;

import dto_vo.Emp.Dept;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Position;
import dto_vo.Emp.Team;

public interface JoinDAO {

   
   // 부서 목록 가져오기
   List<Dept> getDeptName() throws ClassNotFoundException, SQLException;
   
   // 직급 목록 가져오기
   List<Position> getPosName() throws ClassNotFoundException, SQLException;
   
   // 팀 목록 가져오기
   List<Team> getTeamName( int deptcode ) throws ClassNotFoundException, SQLException;
   
   /*// 사원 목록 가져와
   List<Emp> getEmp() throws ClassNotFoundException, SQLException;*/
}