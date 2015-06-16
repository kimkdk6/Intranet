package dto_vo.Attendance;

import java.sql.Date;

public class Holiday {
	
	private String userid;
	private Date attdate;
	private String holreason;
	private Date holstart;
	private Date holend;
	
	public Holiday() { }

	public Holiday(String userid, Date attdate, String holreason,
			Date holstart, Date holend) {
		this.userid = userid;
		this.attdate = attdate;
		this.holreason = holreason;
		this.holstart = holstart;
		this.holend = holend;
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

	public String getHolreason() {
		return holreason;
	}

	public void setHolreason(String holreason) {
		this.holreason = holreason;
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

	@Override
	public String toString() {
		return "Holiday [userid=" + userid + ", attdate=" + attdate
				+ ", holreason=" + holreason + ", holstart=" + holstart
				+ ", holend=" + holend + "]";
	}
	
}
