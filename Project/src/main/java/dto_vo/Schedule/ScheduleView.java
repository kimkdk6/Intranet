package dto_vo.Schedule;

import java.util.Date;

// =====================스케쥴=========================
public class ScheduleView {
	private int schnum; // 스케쥴번호
	private int catecode; // 카테고리코드
	private String userid; // 사용자ID
	private String scstart; // 시작시간
	private String scend; // 종료시간
	private String sctitle; // 스케쥴제목
	private String sccontent; // 스케쥴내용
	private String color;
	private String catename;
	private int deptcode;
	private int teamcode;
	
	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getCatename() {
		return catename;
	}

	public void setCatename(String catename) {
		this.catename = catename;
	}

	public ScheduleView() {}



	public int getSchnum() {
		return schnum;
	}

	public void setSchnum(int schnum) {
		this.schnum = schnum;
	}

	public int getDeptcode() {
		return deptcode;
	}

	public void setDeptcode(int deptcode) {
		this.deptcode = deptcode;
	}

	public int getTeamcode() {
		return teamcode;
	}

	public void setTeamcode(int teamcode) {
		this.teamcode = teamcode;
	}

	public int getCatecode() {
		return catecode;
	}

	

	public ScheduleView(int schnum, int catecode, String userid,
			String scstart, String scend, String sctitle, String sccontent,
			String color, String catename, int deptcode, int teamcode) {
		this.schnum = schnum;
		this.catecode = catecode;
		this.userid = userid;
		this.scstart = scstart;
		this.scend = scend;
		this.sctitle = sctitle;
		this.sccontent = sccontent;
		this.color = color;
		this.catename = catename;
		this.deptcode = deptcode;
		this.teamcode = teamcode;
	}

	public void setCatecode(int catecode) {
		this.catecode = catecode;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getScstart() {
		return scstart;
	}

	public void setScstart(String scstart) {
		this.scstart = scstart;
	}

	public String getScend() {
		return scend;
	}

	public void setScend(String scend) {
		this.scend = scend;
	}

	public String getSctitle() {
		return sctitle;
	}

	public void setSctitle(String sctitle) {
		this.sctitle = sctitle;
	}

	public String getSccontent() {
		return sccontent;
	}

	public void setSccontent(String sccontent) {
		this.sccontent = sccontent;
	}

	@Override
	public String toString() {
		return "ScheduleView [schnum=" + schnum + ", catecode=" + catecode
				+ ", userid=" + userid + ", scstart=" + scstart + ", scend="
				+ scend + ", sctitle=" + sctitle + ", sccontent=" + sccontent
				+ ", color=" + color + ", catename=" + catename + ", deptcode="
				+ deptcode + ", teamcode=" + teamcode + "]";
	}
}
