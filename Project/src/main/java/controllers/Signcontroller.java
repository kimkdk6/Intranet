package controllers;

import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.SignDAO;
import dto_vo.Sign.Sign;

@Controller
@RequestMapping("/sign/")
public class Signcontroller {

	@Autowired
	private SqlSession sqlsession;

	// 전자 결재 메인 페이지 보기
	@RequestMapping(value = "SignMain.htm")
	public String SignMain(Model model) throws ClassNotFoundException,
			SQLException {

		System.out.println("전자결재 메인 페이지 열람");
		SignDAO signdao = sqlsession.getMapper(SignDAO.class);
		List<Sign> unsignlist = signdao.getUnSigns("m3");
		List<Sign> sendsignlist = signdao.getSendSigns("m4");
		System.out.println(unsignlist.toString());
		model.addAttribute("unsignlist", unsignlist);
		model.addAttribute("sendsignlist", sendsignlist);
		return "sign.SignMain";
	}

	// 기안서 작성 페이지 보기
	@RequestMapping(value = "DraftingReg.htm", method = RequestMethod.GET)
	public String DraftingReg() {
		System.out.println("기안서 작성 페이지 열람");
		return "sign.DraftingReg";
	}

	// 출장 결과 페이지 상세 보기
	@RequestMapping(value = "BizTripRepDetail.htm", method = RequestMethod.GET)
	public String BizTripRepDetail() {
		System.out.println("출장 결과 페이지 상세보기");
		return "sign.BizTripRepDetail";
	}
}
