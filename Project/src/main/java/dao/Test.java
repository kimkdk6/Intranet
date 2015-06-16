package dao;

import java.sql.SQLException;

import dto_vo.Emp.Emp;


public interface Test {
	Emp getEmp(String uid) throws ClassNotFoundException, SQLException;
}
