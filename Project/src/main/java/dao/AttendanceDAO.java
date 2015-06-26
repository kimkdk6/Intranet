package dao;

import java.sql.SQLException;
import java.util.Date;


public interface AttendanceDAO {

	public int checkin(String userid) throws ClassNotFoundException, SQLException;
	public String checkincheck(String userid) throws ClassNotFoundException, SQLException;
	public int checkout(String userid) throws ClassNotFoundException, SQLException;
	public String checkoutcheck(String userid) throws ClassNotFoundException, SQLException;
	public String latecheck(String userid) throws ClassNotFoundException, SQLException;
	public String letereason(String userid, String reason) throws ClassNotFoundException, SQLException;
	public String leavecheck(String userid) throws ClassNotFoundException, SQLException;
	/*public String leavereason(String userid, String reason) throws ClassNotFoundException, SQLException;*/

	
}
