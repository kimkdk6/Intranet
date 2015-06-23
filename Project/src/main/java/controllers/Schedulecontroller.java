package controllers;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/schedule/")
public class Schedulecontroller {
	@Autowired
	private SqlSession sqlsession;

	//게시판 메인 페이지 보기
	@RequestMapping(value = "ScheduleMain.htm")
	public String ScheduleMain(Model model) throws ClassNotFoundException,SQLException {

		return "schedule.ScheduleMain";
	}
}


	