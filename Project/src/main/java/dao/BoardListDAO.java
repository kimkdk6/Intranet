package dao;

import java.sql.SQLException;
import java.util.List;

import dto_vo.Board.BoardList;
import dto_vo.Sign.Sign;


public interface BoardListDAO {
	
	public List<BoardList> getAllBoardList() throws ClassNotFoundException, SQLException;
}
