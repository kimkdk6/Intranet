package dao;

import java.sql.SQLException;
import java.util.Date;


public interface AttendanceDAO {

	Date checkin(String userid) throws ClassNotFoundException, SQLException;
	String checkincheck(String userid) throws ClassNotFoundException, SQLException;
}
