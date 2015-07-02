package dao;

import java.sql.SQLException;
import java.util.List;

import dto_vo.Emp.Dept;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Empinfo;
import dto_vo.Emp.Position;
import dto_vo.Emp.Team;

public interface EmpDAO {
	/*// 로그인 체크
	public Emp isMember( Emp emp ) throws ClassNotFoundException, SQLException;*/

	// 회원 가입
	//public int joinMember( Emp emp ) throws ClassNotFoundException, SQLException;
	
	/*// 회원 정보 가져오기
	public Empinfo isMemberInfo( Empinfo empinfo ) throws ClassNotFoundException, SQLException;*/
	
	// emp 가져오기
	public Emp getEmp( String userid ) throws ClassNotFoundException, SQLException;
	
	// emp 리스트 가져오기
	public List<Emp> getEmplist() throws ClassNotFoundException, SQLException;
	
	// empinfo 가져오기
	public Empinfo getEmpInfo( String userid ) throws ClassNotFoundException, SQLException;
	
	// empinfo2 가져오기
	public Empinfo getEmpInfo2( String userid ) throws ClassNotFoundException, SQLException;
	
	// 부서 목록 가져오기
	List<Dept> getDeptName() throws ClassNotFoundException, SQLException;
	   
	// 직급 목록 가져오기
	List<Position> getPosName() throws ClassNotFoundException, SQLException;
	   
	// 팀 목록 가져오기
	List<Team> getTeamName( int deptcode ) throws ClassNotFoundException, SQLException;
	
	// emp 부서
	public String getEmpDept(String userid)  throws ClassNotFoundException, SQLException;
	
	// emp 부서 2
	public List<Emp> getEmpDept2(int deptcode) throws ClassNotFoundException, SQLException;
	
	// emp 팀
	public String getEmpTeam(String userid) throws ClassNotFoundException, SQLException;
	
	// emp 팀 2
	public List<Emp> getEmpTeam2(int deptcode, int teamcode) throws ClassNotFoundException, SQLException;
	
	// emp 직급
	public String getEmpPos(String userid) throws ClassNotFoundException, SQLException;
	
	// 회원 가입 emp
	   public int joinMember( Emp emp ) throws ClassNotFoundException, SQLException;
	   
	// 회원 가입 Empinfo
	public int joinMemberInfo( Empinfo empinfo ) throws ClassNotFoundException, SQLException;
	
	//INSERT INTO Authorities VALUES(?, ROLE_USER)
	// 권한 변경
	public int joinMemberAuthorities( String userid ) throws ClassNotFoundException, SQLException;
}
