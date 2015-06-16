package dto_vo.Sign;

import java.util.Date;

// ======================휴가신청서===============================
public class Holidaydoc {
	private int docnum; // 문서번호
	private Date holstart; // 휴가시작일
	private Date holend; // 휴가종료일
	private int holtype; // 휴가종류
	private String holreason; // 휴가사유
	private String destination; // 행선지
	
	public Holidaydoc() {}

	public Holidaydoc(int docnum, Date holstart, Date holend, int holtype,
			String holreason, String destination) {
		this.docnum = docnum;
		this.holstart = holstart;
		this.holend = holend;
		this.holtype = holtype;
		this.holreason = holreason;
		this.destination = destination;
	}

	public int getDocnum() {
		return docnum;
	}

	public void setDocnum(int docnum) {
		this.docnum = docnum;
	}

	public Date getHolstart() {
		return holstart;
	}

	public void setHolstart(Date holstart) {
		this.holstart = holstart;
	}

	public Date getHolend() {
		return holend;
	}

	public void setHolend(Date holend) {
		this.holend = holend;
	}

	public int getHoltype() {
		return holtype;
	}

	public void setHoltype(int holtype) {
		this.holtype = holtype;
	}

	public String getHolreason() {
		return holreason;
	}

	public void setHolreason(String holreason) {
		this.holreason = holreason;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	@Override
	public String toString() {
		return "Holidaydoc [docnum=" + docnum + ", holstart=" + holstart
				+ ", holend=" + holend + ", holtype=" + holtype
				+ ", holreason=" + holreason + ", destination=" + destination
				+ "]";
	}
	
}
