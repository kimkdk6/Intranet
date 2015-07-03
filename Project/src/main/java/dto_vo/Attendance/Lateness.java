package dto_vo.Attendance;

import java.sql.Date;

public class Lateness {
	
	private String userid;
	private String attdate;
	private String ltreason;
	
	public Lateness() { }

	public Lateness(String userid, String attdate, String ltreason) {
		this.userid = userid;
		this.attdate = attdate;
		this.ltreason = ltreason;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getAttdate() {
		return attdate;
	}

	public void setAttdate(String attdate) {
		this.attdate = attdate;
	}

	public String getLtreason() {
		return ltreason;
	}

	public void setLtreason(String ltreason) {
		this.ltreason = ltreason;
	}

	@Override
	public String toString() {
		return "Lateness [userid=" + userid + ", attdate=" + attdate
				+ ", ltreason=" + ltreason + "]";
	}
}
