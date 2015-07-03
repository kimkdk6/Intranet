package dto_vo.Attendance;

import java.sql.Date;

public class Biztrip {

	private String userid;
	private String attdate;
	private String btreason;
	
	public Biztrip() { }

	public Biztrip(String userid, String attdate, String btreason) {
		this.userid = userid;
		this.attdate = attdate;
		this.btreason = btreason;
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

	public String getBtreason() {
		return btreason;
	}

	public void setBtreason(String btreason) {
		this.btreason = btreason;
	}

	@Override
	public String toString() {
		return "Biztrip [userid=" + userid + ", attdate=" + attdate
				+ ", btreason=" + btreason + "]";
	}
}
