package dao;

import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;


public interface AttendanceDAO {

	public int checkin(String userid) throws ClassNotFoundException, SQLException;
	public String checkincheck(String userid) throws ClassNotFoundException, SQLException;
	public int checkout(String userid) throws ClassNotFoundException, SQLException;
	public String checkoutcheck(String userid) throws ClassNotFoundException, SQLException;
	public String latecheck(String userid) throws ClassNotFoundException, SQLException;
	public void letereason(String userid, String reason) throws ClassNotFoundException, SQLException;
	public String leavecheck(String userid) throws ClassNotFoundException, SQLException;
	public void leavereason(String userid, String reason) throws ClassNotFoundException, SQLException;
	public List<String> allmember() throws ClassNotFoundException, SQLException;
	
}
