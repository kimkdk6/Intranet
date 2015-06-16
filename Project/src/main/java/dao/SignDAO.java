package dao;

import java.sql.SQLException;
import java.util.List;

import dto_vo.Sign.Sign;


public interface SignDAO {
	
	// 결재문서함>미결재문서 리스트 뽑기
	public List<Sign> getUnSigns(String userid) throws ClassNotFoundException, SQLException;
	// 개인문서함>상신문서 리스트 뽑기
	public List<Sign> getSendSigns(String userid) throws ClassNotFoundException, SQLException;
}
