package dao;

import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import dto_vo.Attendance.Absence;
import dto_vo.Attendance.Attendance;
import dto_vo.Attendance.Biztrip;
import dto_vo.Attendance.Holiday;
import dto_vo.Attendance.Lateness;
import dto_vo.Attendance.Leave;
import dto_vo.Emp.Emp;
import dto_vo.Schedule.Schcategory;


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
	public int alllateness(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	
	public int offleave(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int develleave(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int manaleave(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int busileave(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int allleave(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	
	public int offabsence(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int develabsence(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int manaabsence(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int busiabsence(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int allabsence(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	
	public int offholiday(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int develholiday(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int manaholiday(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int busiholiday(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int allholiday(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	
	public int offbiztrip(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int develbiztrip(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int manabiztrip(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int busibiztrip(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	public int allbiztrip(String yy, String mm, String dd) throws ClassNotFoundException, SQLException;
	
	
	// Commute
	// 개인 조퇴 일정
	List<Leave> getLeave( @Param("userid")String userid ) throws ClassNotFoundException, SQLException;
	// 개인 결근 일정
	List<Absence> getAbsence( @Param("userid")String userid ) throws ClassNotFoundException, SQLException;
	// 개인 지각 일정
	List<Lateness> getLateness( @Param("userid")String userid ) throws ClassNotFoundException, SQLException;
	
	// 개인 출장 일정
	List<Biztrip> getBiztrip( @Param("userid")String userid,  @Param("BiztripEname")String BiztripEname ) throws ClassNotFoundException, SQLException;
	// 개인 휴가 일정
	List<Holiday> getHoliday( @Param("userid")String userid, @Param("HolidayEname")String HolidayEname ) throws ClassNotFoundException, SQLException;
	
	// 출퇴근 시간
	//List<Attendance> getAttendance( @Param("userid")String userid ) throws ClassNotFoundException, SQLException;
	
}
