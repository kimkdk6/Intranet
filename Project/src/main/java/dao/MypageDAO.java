package dao;

import java.sql.SQLException;

import dto_vo.Emp.Emp;
import dto_vo.Emp.Empinfo;


public interface MypageDAO {
	
	// 사원 가져오기
	public Emp getEmp(String userid) throws ClassNotFoundException, SQLException;
	// 사원정보 리스트 가져오기
	public Empinfo getEmpInfo(String userid) throws ClassNotFoundException, SQLException;
	
	public int updateuser(Emp emp) throws ClassNotFoundException, SQLException;
	
	public int updateuserinfo(Empinfo empinfo) throws ClassNotFoundException, SQLException;
}
