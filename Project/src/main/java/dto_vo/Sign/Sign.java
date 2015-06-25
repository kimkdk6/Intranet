package dto_vo.Sign;

import java.util.Date;

// ==================결재=======================
public class Sign {
	private int docnum; // 문서번호
	private String userid; // 사용자ID
	private int signtype; // 문서종류
	private String signstate; // 문서상태
	private String dept; // 기안자부서
	private String team; // 기안자팀
	private Date draftdate; // 기안일
	private String signfilesrc; // 파일첨부시 파일경로
	private String signtitle; // 기안 제목
	private String signnote; // 기안 기타사항
	private int totalsign; // 총 결재 수
	private int currsign;  // 현재 결재 수 
	private String signer1; // 결재자1
	private String signer2; // 결재자2
	private String signer3; // 결재자3
	private String signer4; // 결재자4
	private String signer5; // 결재자5
	private String ename;	// 기안자 이름
	private String posname;	// 기안자 직급 이름
	private Date refreshdate; // 갱신 날짜 (완료날짜)
	
	public Sign() {}
	
	public Sign(int docnum, String userid, int signtype, String signstate, String dept, String team,
				Date draftdate, String signfilesrc, String signtitle, String signnote, String signer1,
				String signer2, String signer3, String signer4, String signer5, String ename, String posname,
				int totalsign, int currsign, Date rejectsignlist) {
		this.docnum = docnum;
		this.userid = userid;
		this.signtype = signtype;
		this.signstate = signstate;
		this.dept = dept;
		this.team = team;
		this.draftdate = draftdate;
		this.signfilesrc = signfilesrc;
		this.signtitle = signtitle;
		this.signnote = signnote;
		this.signer1 = signer1;
		this.signer2 = signer2;
		this.signer3 = signer3;
		this.signer4 = signer4;
		this.signer5 = signer5;
		this.ename = ename;
		this.posname = posname;
		this.totalsign = totalsign;
		this.currsign = currsign;
		this.refreshdate = rejectsignlist;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getPosname() {
		return posname;
	}

	public void setPosname(String posname) {
		this.posname = posname;
	}

	public int getDocnum() {
		return docnum;
	}

	public void setDocnum(int docnum) {
		this.docnum = docnum;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getSigntype() {
		return signtype;
	}

	public void setSigntype(int signtype) {
		this.signtype = signtype;
	}

	public String getSignstate() {
		return signstate;
	}

	public void setSignstate(String signstate) {
		this.signstate = signstate;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public Date getDraftdate() {
		return draftdate;
	}

	public void setDraftdate(Date draftdate) {
		this.draftdate = draftdate;
	}

	public String getSignfilesrc() {
		return signfilesrc;
	}

	public void setSignfilesrc(String signfilesrc) {
		this.signfilesrc = signfilesrc;
	}

	public String getSigntitle() {
		return signtitle;
	}

	public void setSigntitle(String signtitle) {
		this.signtitle = signtitle;
	}

	public String getSignnote() {
		return signnote;
	}

	public void setSignnote(String signnote) {
		this.signnote = signnote;
	}

	public String getSigner1() {
		return signer1;
	}

	public void setSigner1(String signer1) {
		this.signer1 = signer1;
	}

	public String getSigner2() {
		return signer2;
	}

	public void setSigner2(String signer2) {
		this.signer2 = signer2;
	}

	public String getSigner3() {
		return signer3;
	}

	public void setSigner3(String signer3) {
		this.signer3 = signer3;
	}

	public String getSigner4() {
		return signer4;
	}

	public void setSigner4(String signer4) {
		this.signer4 = signer4;
	}

	public String getSigner5() {
		return signer5;
	}

	public void setSigner5(String signer5) {
		this.signer5 = signer5;
	}
	

	public int getTotalsign() {
		return totalsign;
	}

	public void setTotalsign(int totalsign) {
		this.totalsign = totalsign;
	}

	public int getCurrsign() {
		return currsign;
	}

	public void setCurrsign(int currsign) {
		this.currsign = currsign;
	}

	public Date getRefreshdate() {
		return refreshdate;
	}

	public void setRefreshdate(Date refreshdate) {
		this.refreshdate = refreshdate;
	}

	@Override
	public String toString() {
		return "Sign [docnum=" + docnum + ", userid=" + userid + ", signtype="
				+ signtype + ", signstate=" + signstate + ", dept=" + dept
				+ ", team=" + team + ", draftdate=" + draftdate
				+ ", signfilesrc=" + signfilesrc + ", signtitle=" + signtitle
				+ ", signnote=" + signnote + ", signer1=" + signer1
				+ ", signer2=" + signer2 + ", signer3=" + signer3
				+ ", signer4=" + signer4 + ", signer5=" + signer5 + "ename, posname="+ename+"/"+posname+ 
				" curr/total="+this.currsign+"/"+this.totalsign+"/"+this.refreshdate+"]";
	}
	
}
