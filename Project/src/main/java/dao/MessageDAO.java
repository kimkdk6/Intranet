package dao;

import java.sql.SQLException;
import java.util.List;


import dto_vo.Emp.Message;

public interface MessageDAO {

	public List<Message> RMessage() throws ClassNotFoundException, SQLException;
	
	public List<Message> SMessage() throws ClassNotFoundException, SQLException; 
	
	public void deleteRMessage(int msgnum) throws ClassNotFoundException, SQLException;
	
	public void deleteSMessage(int msgnum) throws ClassNotFoundException, SQLException;
	
	public void insertNewMessage(Message message) throws ClassNotFoundException, SQLException;
	 
	
}
