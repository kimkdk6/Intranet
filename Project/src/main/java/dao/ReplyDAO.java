package dao;

import java.sql.SQLException;
import java.util.List;

import dto_vo.Board.Board;
import dto_vo.Board.Reply;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Empinfo;
import dto_vo.Sign.Sign;


public interface ReplyDAO {
	
	public List<Reply> getReply(int boardnum) throws ClassNotFoundException, SQLException;
	
	public List<Emp> getReplyEmp(int boardnum) throws ClassNotFoundException, SQLException;
	
	public List<Empinfo> getReplyEmpinfo(int boardnum) throws ClassNotFoundException, SQLException;
	
	public void insertReply(Reply reply) throws ClassNotFoundException, SQLException;
	
}
