package dao;

import java.sql.SQLException;
import java.util.List;

import dto_vo.Board.Board;
import dto_vo.Board.BoardList;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Empinfo;
import dto_vo.Emp.Team;

public interface AdminDAO {

	// 게시판 타입/종류 가져오기
	public List<BoardList> getBoardListType() throws ClassNotFoundException, SQLException;
	// 게시판 타입/종류별 게시글 갯수 구하기
	public int getBoardofNum(int boardcode) throws ClassNotFoundException, SQLException;
	// 게시판 추가
	public int insertBoard(BoardList boardlist) throws ClassNotFoundException, SQLException;
	// 게시판 삭제
	public int deleteBoardlist(String boardcode) throws ClassNotFoundException, SQLException;
	
	// 게시물 삭제
	public int deleteBoard(int boardnum) throws ClassNotFoundException, SQLException;
	// 게시물 댓글 삭제
	public int deleteReply(int boardnum) throws ClassNotFoundException, SQLException;
	
	// boardlist의 게시글 리스트
	public List<Board> getBoardListbyType(String boardcode) throws ClassNotFoundException, SQLException;
	
	// boardlist 이름 수정
	public int updateBoardName(String boardcode, String boardname) throws ClassNotFoundException, SQLException;
	
	// 사원 리스트 가져오기
	public List<Emp> getEmps() throws ClassNotFoundException, SQLException;
	// 사원 가져오기
	public Emp getEmp(String userid) throws ClassNotFoundException, SQLException;
	// 사원정보 리스트 가져오기
	public Empinfo getEmpInfo(String userid) throws ClassNotFoundException, SQLException;
	// team 가져오기
	public List<Team> getTeamList(int deptcode)  throws ClassNotFoundException, SQLException;
}
