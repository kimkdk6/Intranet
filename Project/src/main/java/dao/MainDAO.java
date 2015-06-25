package dao;

import java.sql.SQLException;
import java.util.List;

import dto_vo.Board.Board;
import dto_vo.Emp.Emp;

public interface MainDAO {
	List<Board> recentlyNotice() throws ClassNotFoundException, SQLException;
	List<Board> recentlyBoard() throws ClassNotFoundException, SQLException;
	public String checkname(String userid) throws ClassNotFoundException, SQLException;
	List<Board> recentlyPhoto() throws ClassNotFoundException, SQLException;
}
