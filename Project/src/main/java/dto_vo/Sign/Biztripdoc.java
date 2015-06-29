package dto_vo.Sign;

import java.util.Date;

// ==================출장 신청서========================
public class Biztripdoc {
	private int docnum; // 문서번호
	private String bizstart; // 출장시작일
	private String bizend; // 출장종료일
	private String bizloc; // 출장지
	private String bizpur; // 출장목적
	
	public Biztripdoc() {}

	public Biztripdoc(int docnum, String bizstart, String bizend, String bizloc,
			String bizpur) {
		this.docnum = docnum;
		this.bizstart = bizstart;
		this.bizend = bizend;
		this.bizloc = bizloc;
		this.bizpur = bizpur;
	}

	public int getDocnum() {
		return docnum;
	}

	public void setDocnum(int docnum) {
		this.docnum = docnum;
	}

	public String getBizstart() {
		return bizstart;
	}

	public void setBizstart(String bizstart) {
		this.bizstart = bizstart;
	}

	public String getBizend() {
		return bizend;
	}

	public void setBizend(String bizend) {
		this.bizend = bizend;
	}

	public String getBizloc() {
		return bizloc;
	}

	public void setBizloc(String bizloc) {
		this.bizloc = bizloc;
	}

	public String getBizpur() {
		return bizpur;
	}

	public void setBizpur(String bizpur) {
		this.bizpur = bizpur;
	}

	@Override
	public String toString() {
		return "Biztripdoc [docnum=" + docnum + ", bizstart=" + bizstart
				+ ", bizend=" + bizend + ", bizloc=" + bizloc + ", bizpur="
				+ bizpur + "]";
	}
	
}
