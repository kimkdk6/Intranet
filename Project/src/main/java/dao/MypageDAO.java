package dao;

import java.sql.SQLException;
import dto_vo.Emp.Emp;
import dto_vo.Emp.Empinfo;


public interface MypageDAO {
	public int updateuser(Emp emp) throws ClassNotFoundException, SQLException;
	public int updateuserinfo(Empinfo empinfo) throws ClassNotFoundException, SQLException;
}
