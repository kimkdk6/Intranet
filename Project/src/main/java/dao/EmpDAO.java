package dao;

import java.sql.SQLException;

import dto_vo.Emp.Emp;

public interface EmpDAO {
	// 로그인 체크
	public Emp isMember( Emp emp ) throws ClassNotFoundException, SQLException;
	// 회원 가입
	public int joinMember( Emp emp ) throws ClassNotFoundException, SQLException;
	
}
