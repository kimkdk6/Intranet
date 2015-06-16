package dto_vo.Email;

import java.sql.Date;

public class Receivemail {

	private int mailnum;
	private String userid;
	private String rmailtitle;
	private String sender;
	private String rmailfilesrc;
	private String rmailcontent;
	private Date senddate;
	private int reccheck;
	private int waste;
	private int recdel;
	
	public Receivemail() { }
	
	public Receivemail(int mailnum, String userid, String rmailtitle,
			String sender, String rmailfilesrc, String rmailcontent,
			Date senddate, int reccheck, int waste, int recdel) {
		this.mailnum = mailnum;
		this.userid = userid;
		this.rmailtitle = rmailtitle;
		this.sender = sender;
		this.rmailfilesrc = rmailfilesrc;
		this.rmailcontent = rmailcontent;
		this.senddate = senddate;
		this.reccheck = reccheck;
		this.waste = waste;
		this.recdel = recdel;
	}

	public int getMailnum() {
		return mailnum;
	}

	public void setMailnum(int mailnum) {
		this.mailnum = mailnum;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getRmailtitle() {
		return rmailtitle;
	}

	public void setRmailtitle(String rmailtitle) {
		this.rmailtitle = rmailtitle;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getRmailfilesrc() {
		return rmailfilesrc;
	}

	public void setRmailfilesrc(String rmailfilesrc) {
		this.rmailfilesrc = rmailfilesrc;
	}

	public String getRmailcontent() {
		return rmailcontent;
	}

	public void setRmailcontent(String rmailcontent) {
		this.rmailcontent = rmailcontent;
	}

	public Date getSenddate() {
		return senddate;
	}

	public void setSenddate(Date senddate) {
		this.senddate = senddate;
	}

	public int getReccheck() {
		return reccheck;
	}

	public void setReccheck(int reccheck) {
		this.reccheck = reccheck;
	}

	public int getWaste() {
		return waste;
	}

	public void setWaste(int waste) {
		this.waste = waste;
	}

	public int getRecdel() {
		return recdel;
	}

	public void setRecdel(int recdel) {
		this.recdel = recdel;
	}

	@Override
	public String toString() {
		return "Receivemail [mailnum=" + mailnum + ", userid=" + userid
				+ ", rmailtitle=" + rmailtitle + ", sender=" + sender
				+ ", rmailfilesrc=" + rmailfilesrc + ", rmailcontent="
				+ rmailcontent + ", senddate=" + senddate + ", reccheck="
				+ reccheck + ", waste=" + waste + ", recdel=" + recdel + "]";
	}
}
