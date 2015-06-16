package dto_vo.Email;

import java.sql.Date;

public class Sendmail {
	
	private int mailnum;
	private String userid;
	private String smailtitle;
	private String receiver;
	private String smailfilesrc;
	private String smailcontent;
	private Date senddate;
	private int reccheck;
	private int waste;
	private int senddel;
	
	public Sendmail() { }

	public Sendmail(int mailnum, String userid, String smailtitle,
			String receiver, String smailfilesrc, String smailcontent,
			Date senddate, int reccheck, int waste, int senddel) {
		this.mailnum = mailnum;
		this.userid = userid;
		this.smailtitle = smailtitle;
		this.receiver = receiver;
		this.smailfilesrc = smailfilesrc;
		this.smailcontent = smailcontent;
		this.senddate = senddate;
		this.reccheck = reccheck;
		this.waste = waste;
		this.senddel = senddel;
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

	public String getSmailtitle() {
		return smailtitle;
	}

	public void setSmailtitle(String smailtitle) {
		this.smailtitle = smailtitle;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getSmailfilesrc() {
		return smailfilesrc;
	}

	public void setSmailfilesrc(String smailfilesrc) {
		this.smailfilesrc = smailfilesrc;
	}

	public String getSmailcontent() {
		return smailcontent;
	}

	public void setSmailcontent(String smailcontent) {
		this.smailcontent = smailcontent;
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

	public int getSenddel() {
		return senddel;
	}

	public void setSenddel(int senddel) {
		this.senddel = senddel;
	}

	@Override
	public String toString() {
		return "Sendmail [mailnum=" + mailnum + ", userid=" + userid
				+ ", smailtitle=" + smailtitle + ", receiver=" + receiver
				+ ", smailfilesrc=" + smailfilesrc + ", smailcontent="
				+ smailcontent + ", senddate=" + senddate + ", reccheck="
				+ reccheck + ", waste=" + waste + ", senddel=" + senddel + "]";
	}
}
