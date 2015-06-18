package dao;

import java.sql.SQLException;
import java.util.List;

import dto_vo.Board.Board;
import dto_vo.Sign.Sign;


public interface BoardDAO {

	public List<Board> getBoardRecent5(int boardcode) throws ClassNotFoundException, SQLException;
	
	public Board getBoard(int boardnum) throws ClassNotFoundException, SQLException;
	
}
