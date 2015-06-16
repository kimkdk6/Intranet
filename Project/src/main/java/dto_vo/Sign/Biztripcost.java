package dto_vo.Sign;

import java.util.Date;

// ==============출장경비내역==================
public class Biztripcost {
	private int docnum; // 문서번호
	private Date bizdate; // 출장날짜
	private String bizcostdetail; // 지출내역
	private String biznote; // 비고
	private int bizcost; // 금액
	
	public Biztripcost() {}

	public Biztripcost(int docnum, Date bizdate, String bizcostdetail,
			String biznote, int bizcost) {
		this.docnum = docnum;
		this.bizdate = bizdate;
		this.bizcostdetail = bizcostdetail;
		this.biznote = biznote;
		this.bizcost = bizcost;
	}

	public int getDocnum() {
		return docnum;
	}

	public void setDocnum(int docnum) {
		this.docnum = docnum;
	}

	public Date getBizdate() {
		return bizdate;
	}

	public void setBizdate(Date bizdate) {
		this.bizdate = bizdate;
	}

	public String getBizcostdetail() {
		return bizcostdetail;
	}

	public void setBizcostdetail(String bizcostdetail) {
		this.bizcostdetail = bizcostdetail;
	}

	public String getBiznote() {
		return biznote;
	}

	public void setBiznote(String biznote) {
		this.biznote = biznote;
	}

	public int getBizcost() {
		return bizcost;
	}

	public void setBizcost(int bizcost) {
		this.bizcost = bizcost;
	}

	@Override
	public String toString() {
		return "Biztripcost [docnum=" + docnum + ", bizdate=" + bizdate
				+ ", bizcostdetail=" + bizcostdetail + ", biznote=" + biznote
				+ ", bizcost=" + bizcost + "]";
	}
	
	
}
