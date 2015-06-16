package dto_vo.Attendance;

import java.sql.Date;

public class Leave {
	
	private String userid;
	private Date attdate;
	private String lvreason;
	
	public Leave() { }

	public Leave(String userid, Date attdate, String lvreason) {
		this.userid = userid;
		this.attdate = attdate;
		this.lvreason = lvreason;
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

	public String getLvreason() {
		return lvreason;
	}

	public void setLvreason(String lvreason) {
		this.lvreason = lvreason;
	}

	@Override
	public String toString() {
		return "Leave [userid=" + userid + ", attdate=" + attdate
				+ ", lvreason=" + lvreason + "]";
	}
}
