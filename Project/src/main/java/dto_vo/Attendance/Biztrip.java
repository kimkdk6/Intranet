package dto_vo.Attendance;

import java.sql.Date;

public class Biztrip {

	private String userid;
	private Date attdate;
	private String btreason;
	private Date bizstart;
	private Date bizend;
	
	public Biztrip() { }

	public Biztrip(String userid, Date attdate, String btreason, Date bizstart,
			Date bizend) {
		this.userid = userid;
		this.attdate = attdate;
		this.btreason = btreason;
		this.bizstart = bizstart;
		this.bizend = bizend;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public Date getAttdate() {
		return attdate;
	}

	public void setAttdate(Date attdate) {
		this.attdate = attdate;
	}

	public String getBtreason() {
		return btreason;
	}

	public void setBtreason(String btreason) {
		this.btreason = btreason;
	}

	public Date getBizstart() {
		return bizstart;
	}

	public void setBizstart(Date bizstart) {
		this.bizstart = bizstart;
	}

	public Date getBizend() {
		return bizend;
	}

	public void setBizend(Date bizend) {
		this.bizend = bizend;
	}

	@Override
	public String toString() {
		return "Biztrip [userid=" + userid + ", attdate=" + attdate
				+ ", btreason=" + btreason + ", bizstart=" + bizstart
				+ ", bizend=" + bizend + "]";
	}
}
