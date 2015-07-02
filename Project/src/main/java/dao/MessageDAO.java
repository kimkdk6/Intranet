package dao;

import java.sql.SQLException;
import java.util.List;



import org.apache.ibatis.annotations.Param;

import dto_vo.Emp.Message;

public interface MessageDAO {

	public List<Message> RMessage(@Param("userid")String userid,@Param("startmessage")int startmessage,@Param("endmessage")int endmessage) throws ClassNotFoundException, SQLException;
	
	public List<Message> SMessage(@Param("userid")String userid,@Param("startmessage")int startmessage,@Param("endmessage")int endmessage) throws ClassNotFoundException, SQLException; 
	
	public void deleteRMessage(int msgnum) throws ClassNotFoundException, SQLException;
	
	public void deleteSMessage(int msgnum) throws ClassNotFoundException, SQLException;
	
	public void insertNewMessage(Message message) throws ClassNotFoundException, SQLException;
	 
	public int totalReceiveCount(String userid) throws ClassNotFoundException, SQLException;
	
	public int totalSendCount(String userid) throws ClassNotFoundException, SQLException;
	
	public Message getMessage(int msgnum) throws ClassNotFoundException, SQLException;
	
	
}
