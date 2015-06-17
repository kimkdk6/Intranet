package dao;

import java.sql.SQLException;
import java.util.List;

import dto_vo.Board.Board;

public interface MainDAO {
	List<Board> recentlyNotice() throws ClassNotFoundException, SQLException;
}
