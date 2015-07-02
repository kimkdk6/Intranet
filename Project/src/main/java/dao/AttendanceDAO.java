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
	public List<String> allmember(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int offlateness(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int devellateness(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int manalateness(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int busilateness(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	
	public int offleave(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int develleave(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int manaleave(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int busileave(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	
	public int offabsence(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int develabsence(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int manaabsence(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int busiabsence(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	
	
}
