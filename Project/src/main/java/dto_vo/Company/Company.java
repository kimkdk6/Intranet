package dto_vo.Company;

import java.util.Date;

public class Company {
	private String compname; // 회사이름
	private String comptel; // 회사대표전화
	private String fax; // 회사 팩스
	private String compaddr; // 회사주소
	private String title; // 브라우저타이틀
	private String ipband; // 회사IP대역
	private Date compstart; // 업무시작
	private Date compend; // 업무종료
	private Date holsc; // 휴가계일정
	
	public Company() {}

	public Company(String compname, String comptel, String fax,
			String compaddr, String title, String ipband, Date compstart,
			Date compend, Date holsc) {
		this.compname = compname;
		this.comptel = comptel;
		this.fax = fax;
		this.compaddr = compaddr;
		this.title = title;
		this.ipband = ipband;
		this.compstart = compstart;
		this.compend = compend;
		this.holsc = holsc;
	}

	public String getCompname() {
		return compname;
	}

	public void setCompname(String compname) {
		this.compname = compname;
	}

	public String getComptel() {
		return comptel;
	}

	public void setComptel(String comptel) {
		this.comptel = comptel;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getCompaddr() {
		return compaddr;
	}

	public void setCompaddr(String compaddr) {
		this.compaddr = compaddr;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getIpband() {
		return ipband;
	}

	public void setIpband(String ipband) {
		this.ipband = ipband;
	}

	public Date getCompstart() {
		return compstart;
	}

	public void setCompstart(Date compstart) {
		this.compstart = compstart;
	}

	public Date getCompend() {
		return compend;
	}

	public void setCompend(Date compend) {
		this.compend = compend;
	}

	public Date getHolsc() {
		return holsc;
	}

	public void setHolsc(Date holsc) {
		this.holsc = holsc;
	}

	@Override
	public String toString() {
		return "Company [compname=" + compname + ", comptel=" + comptel
				+ ", fax=" + fax + ", compaddr=" + compaddr + ", title="
				+ title + ", ipband=" + ipband + ", compstart=" + compstart
				+ ", compend=" + compend + ", holsc=" + holsc + "]";
	}
	
}
