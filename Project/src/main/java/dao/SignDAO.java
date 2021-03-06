package dao;

import java.sql.SQLException;
import java.util.List;

import dto_vo.Emp.Dept;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Position;
import dto_vo.Emp.Team;
import dto_vo.Sign.Biztripcost;
import dto_vo.Sign.Biztripdoc;
import dto_vo.Sign.Biztriprep;
import dto_vo.Sign.Draftingdoc;
import dto_vo.Sign.Holidaydoc;
import dto_vo.Sign.Orderdoc;
import dto_vo.Sign.Sign;
import dto_vo.Sign.Signline;


public interface SignDAO {
	
	// 결재문서함>미결재문서 리스트 뽑기
	public List<Sign> getUnSigns(String userid, int from, int to) throws ClassNotFoundException, SQLException;
	public int getCountUnsigns(String userid) throws ClassNotFoundException, SQLException;
	// 결재문서함>받은 결재 완료 문서 리스트 뽑기
	public List<Sign> getReceiveSigns(String userid, int from, int to) throws ClassNotFoundException, SQLException;
	public int getCountReceiveSigns(String userid) throws ClassNotFoundException, SQLException;
	// 개인문서함>상신문서 리스트 뽑기
	public List<Sign> getSendSigns(String userid, int from, int to, int signstate) throws ClassNotFoundException, SQLException;
	public int getCountSendSigns(String userid, int signstate) throws ClassNotFoundException, SQLException;
	
	// 결재 상세보기 문서 하나 가져오기
	public Sign getSign(String docnum) throws ClassNotFoundException, SQLException;
	// 결재 > 기안서 상세보기 가져오기
	public Draftingdoc getDraftingdoc(String docnum) throws ClassNotFoundException, SQLException;
	// 결재 라인 가져오기
	public Signline getSignline(String docnum) throws ClassNotFoundException, SQLException;
	// 결재 > 휴가계 상세보기 가져오기
	public Holidaydoc getHolidaydoc(String docnum) throws ClassNotFoundException, SQLException;
	// 결재 > 출장 보고서 상세보기 가져오기
	public Biztripdoc getBizTripdoc(String docnum) throws ClassNotFoundException, SQLException;
	// 결재 > 발주서 상세보기 가져오기
	public List<Orderdoc> getOrderdoc(String docnum) throws ClassNotFoundException, SQLException;
	// 결재 > 출장 결과 보고서 상세보기 가져오기
	public Biztriprep getBiztriprep(String docnum) throws ClassNotFoundException, SQLException;
	// 결재 > 출장 결과 보고서의 출장 경비내역 상세 가져오기
	public List<Biztripcost> getBiztripCost(String docnum) throws ClassNotFoundException, SQLException;
	
	// 부서 리스트 가져오기
	public List<Dept> getDepts() throws ClassNotFoundException, SQLException;
	// 사원 리스트 가져오기
	public List<Emp> getEmps() throws ClassNotFoundException, SQLException;
	// 사원 가져오기
	public Emp getEmp(String userid) throws ClassNotFoundException, SQLException;
	// 팀 리스트 가져오기
	public List<Team> getTeams() throws ClassNotFoundException, SQLException;
	// 직급 리스트 가져오기
	public List<Position> getPositions() throws ClassNotFoundException, SQLException;
	
	// 모든 결재
	public int insertSign(Sign sign) throws ClassNotFoundException, SQLException;
	// 모든 결재 라인
	public int insertSignline(Signline signline) throws ClassNotFoundException, SQLException;
	
	// 기안서 작성
	public int insertDrafting(Draftingdoc drafting) throws ClassNotFoundException, SQLException;
	// 발주서 작성
	public int insertOrderDoc(Orderdoc orderdoc) throws ClassNotFoundException, SQLException;
	// 휴가계 작성
	public int insertHolidaydoc(Holidaydoc holidaydoc) throws ClassNotFoundException, SQLException;
	// 출장 신청서 작성
	public int insertBizTripDoc(Biztripdoc biztripdoc) throws ClassNotFoundException, SQLException;
	// 출장 결과 보고서 작성
	public int insertBizTripRep(Biztriprep biztriprep) throws ClassNotFoundException, SQLException;
	// 출장 경비 내역 작성
	public int insertBizTripCost(Biztripcost biztripcost) throws ClassNotFoundException, SQLException;
	
	// 전자 결재 문서 승인 처리
	// signline의 signok?값 변경/signning 값 변경 
	public int updateSignline(String signok, String signning, String docnum, int sign) throws ClassNotFoundException, SQLException;
	// sign의 currsign+1
	public int updateSignCurr(String docnum) throws ClassNotFoundException, SQLException;
	// sign의 signstae 변경 .. 반려시 바뀔 수 있을 듯
	public int updateSignState(String docnum, String signstate) throws ClassNotFoundException, SQLException;
	
	// ------------------------------ 근태 처리
	public int checkin(String userid, String attdate) throws ClassNotFoundException, SQLException;
	public int addholiday(String userid, String attdate, String holreason) throws ClassNotFoundException, SQLException;
	public int getTeamcode(String userid) throws ClassNotFoundException, SQLException;
	public int getCateCode(int teamcode, String catecontent) throws ClassNotFoundException, SQLException;
	public int addbiztrip(String userid, String attdate, String bizpur) throws ClassNotFoundException, SQLException;
	
	// 나의 모든 출장 가져오기
	public List<String> allmyBiz(String userid) throws ClassNotFoundException, SQLException;
	// 나의 모든 휴가 가져오기
	public List<String> allmyHol(String userid) throws ClassNotFoundException, SQLException;
	// 나의 결재 승인되지않은 휴가랑 출장 문서
	//public List<Sign> UnsignedHolBiz(String userid) throws ClassNotFoundException, SQLException;
}