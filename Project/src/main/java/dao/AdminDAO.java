package dao;

import java.sql.SQLException;
import java.util.List;

import dto_vo.Board.BoardList;

public interface AdminDAO {

	// 게시판 타입/종류 가져오기
	public List<BoardList> getBoardListType() throws ClassNotFoundException, SQLException;
	// 게시판 타입/종류별 게시글 갯수 구하기
	public int getBoardofNum(int boardcode) throws ClassNotFoundException, SQLException;
	// 게시판 추가
	public int insertBoard(BoardList boardlist) throws ClassNotFoundException, SQLException;
}
