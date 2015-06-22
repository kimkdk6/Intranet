package dao;

import java.sql.SQLException;

import dto_vo.Emp.Emp;
import dto_vo.Emp.Empinfo;

public interface EmpDAO {
	/*// 로그인 체크
	public Emp isMember( Emp emp ) throws ClassNotFoundException, SQLException;*/

	// 회원 가입
	public int joinMember( Emp emp ) throws ClassNotFoundException, SQLException;
	
	/*// 회원 정보 가져오기
	public Empinfo isMemberInfo( Empinfo empinfo ) throws ClassNotFoundException, SQLException;*/
	
	// emp 가져오기
	public Emp getEmp( String userid ) throws ClassNotFoundException, SQLException;
	
	// empinfo 가져오기
	public Empinfo getEmpInfo( String userid ) throws ClassNotFoundException, SQLException;
	
	// emp 부서
	public String getEmpDept(String userid)  throws ClassNotFoundException, SQLException;
	
	// emp 팀
	public String getEmpTeam(String userid)  throws ClassNotFoundException, SQLException;
	
	// emp 직급
	public String getEmpPos(String userid)  throws ClassNotFoundException, SQLException;
}
