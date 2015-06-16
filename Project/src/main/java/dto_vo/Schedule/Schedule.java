package dto_vo.Schedule;

import java.util.Date;

// =====================스케쥴=========================
public class Schedule {
	private int schnum; // 스케쥴번호
	private int catecode; // 카테고리코드
	private String userid; // 사용자ID
	private Date scstart; // 시작시간
	private Date scend; // 종료시간
	private String sctitle; // 스케쥴제목
	private String sccontent; // 스케쥴내용
	
	public Schedule() {}

	public Schedule(int schnum, int catecode, String userid, Date scstart,
			Date scend, String sctitle, String sccontent) {

		this.schnum = schnum;
		this.catecode = catecode;
		this.userid = userid;
		this.scstart = scstart;
		this.scend = scend;
		this.sctitle = sctitle;
		this.sccontent = sccontent;
	}

	public int getSchnum() {
		return schnum;
	}

	public void setSchnum(int schnum) {
		this.schnum = schnum;
	}

	public int getCatecode() {
		return catecode;
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

	public Date getScstart() {
		return scstart;
	}

	public void setScstart(Date scstart) {
		this.scstart = scstart;
	}

	public Date getScend() {
		return scend;
	}

	public void setScend(Date scend) {
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
		return "Schedule [schnum=" + schnum + ", catecode=" + catecode
				+ ", userid=" + userid + ", scstart=" + scstart + ", scend="
				+ scend + ", sctitle=" + sctitle + ", sccontent=" + sccontent
				+ "]";
	}
	
}
