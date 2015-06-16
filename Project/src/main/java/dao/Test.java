package dao;

import java.sql.SQLException;
import java.util.List;

import dto_vo.Emp.Emp;


public interface Test {
	List<Emp> getEmp(String uid) throws ClassNotFoundException, SQLException;
}
