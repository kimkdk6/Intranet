package dto_vo.Sign;

import java.util.Date;

// =================출장결과 보고서=============================
public class Biztriprep {
	private int docnum; // 문서번호
	private String bizrepstart; // 출장시작일
	private String bizrepend; // 출장종료일
	private String bizloc; // 출장지
	private String bizpur; // 출장목적
	private int bizmem; // 인원
	private String bizcon; // 출장일지 및 업무내용
	
	public Biztriprep() {}

	public Biztriprep(int docnum, String bizrepstart, String bizrepend,
			String bizloc, String bizpur, int bizmem, String bizcon) {
		this.docnum = docnum;
		this.bizrepstart = bizrepstart;
		this.bizrepend = bizrepend;
		this.bizloc = bizloc;
		this.bizpur = bizpur;
		this.bizmem = bizmem;
		this.bizcon = bizcon;
	}

	public int getDocnum() {
		return docnum;
	}

	public void setDocnum(int docnum) {
		this.docnum = docnum;
	}

	public String getBizrepstart() {
		return bizrepstart;
	}

	public void setBizrepstart(String bizrepstart) {
		this.bizrepstart = bizrepstart;
	}

	public String getBizrepend() {
		return bizrepend;
	}

	public void setBizrepend(String bizrepend) {
		this.bizrepend = bizrepend;
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

	public int getBizmem() {
		return bizmem;
	}

	public void setBizmem(int bizmem) {
		this.bizmem = bizmem;
	}

	public String getBizcon() {
		return bizcon;
	}

	public void setBizcon(String bizcon) {
		this.bizcon = bizcon;
	}

	@Override
	public String toString() {
		return "Biztriprep [docnum=" + docnum + ", bizrepstart=" + bizrepstart
				+ ", bizrepend=" + bizrepend + ", bizloc=" + bizloc
				+ ", bizpur=" + bizpur + ", bizmem=" + bizmem + ", bizcon="
				+ bizcon + "]";
	}
	
}
