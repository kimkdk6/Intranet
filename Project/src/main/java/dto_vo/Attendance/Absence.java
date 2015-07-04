package dto_vo.Attendance;

import java.sql.Date;

public class Absence {

	private String userid;
	private String attdate;
	private String abreason;
	
	public Absence() { }

	public Absence(String userid, String attdate, String abreason) {
		super();
		this.userid = userid;
		this.attdate = attdate;
		this.abreason = abreason;
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

	public String getAbreason() {
		return abreason;
	}

	public void setAbreason(String abreason) {
		this.abreason = abreason;
	}

	@Override
	public String toString() {
		return "Absence [userid=" + userid + ", attdate=" + attdate
				+ ", abreason=" + abreason + "]";
	}
}
