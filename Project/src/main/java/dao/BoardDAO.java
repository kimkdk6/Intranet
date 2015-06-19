package dao;

import java.sql.SQLException;
import java.util.List;

import dto_vo.Board.Board;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Empinfo;
import dto_vo.Sign.Sign;


public interface BoardDAO {

	public List<Board> getBoardRecent5(int boardcode) throws ClassNotFoundException, SQLException;
	
	public Board getBoard(int boardnum) throws ClassNotFoundException, SQLException;
	
	public Emp getBoardEmp(int boardnum) throws ClassNotFoundException, SQLException;
	
	public Empinfo getBoardEmpinfo(int boardnum) throws ClassNotFoundException, SQLException;
	
	public List<Board> getBoardList(int boardcode,int startboard,int endboard) throws ClassNotFoundException, SQLException;
	
	public int getAllBoardCount(int boardcode) throws ClassNotFoundException, SQLException;
	
}
