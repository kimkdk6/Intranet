package dao;

import java.sql.SQLException;
import java.util.List;

import dto_vo.Emp.Dept;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Position;
import dto_vo.Emp.Team;
import dto_vo.Sign.Draftingdoc;
import dto_vo.Sign.Sign;
import dto_vo.Sign.Signline;


public interface SignDAO {
	
	// 결재문서함>미결재문서 리스트 뽑기
	public List<Sign> getUnSigns(String userid) throws ClassNotFoundException, SQLException;
	// 개인문서함>상신문서 리스트 뽑기
	public List<Sign> getSendSigns(String userid) throws ClassNotFoundException, SQLException;
	
	// 결재 상세보기 문서 하나 가져오기
	public Sign getSign(String docnum) throws ClassNotFoundException, SQLException;
	// 결재 > 기안서 상세보기 가져오기
	public Draftingdoc getDraftingdoc(String docnum) throws ClassNotFoundException, SQLException;
	// 결재 라인 가져오기
	public Signline getSignline(String docnum) throws ClassNotFoundException, SQLException;

	// 부서 가져오기
	public List<Dept> getDepts() throws ClassNotFoundException, SQLException;
	// 사원 가져오기
	public List<Emp> getEmps() throws ClassNotFoundException, SQLException;
	// 팀 가져오기
	public List<Team> getTeams() throws ClassNotFoundException, SQLException;
	// 직급 가져오기
	public List<Position> getPositions() throws ClassNotFoundException, SQLException;
	
	// 모든 결재
	public int insertSign(Sign sign) throws ClassNotFoundException, SQLException;
	// 기안서 작성
	public int insertDrafting(Draftingdoc drafting) throws ClassNotFoundException, SQLException;
	
	// 모든 결재 라인
	public int insertSignline(Signline signline) throws ClassNotFoundException, SQLException;
	
}
