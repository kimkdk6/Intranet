package dto_vo.Attendance;

import java.sql.Date;

public class Attendance {
	
	private String userid;
	private String attdate;
	private String attstartdate;
	private String attenddate;
	
	public Attendance() {
	}
	
	public Attendance(String userid, String attdate, String attstartdate,
			String attenddate) {
		this.userid = userid;
		this.attdate = attdate;
		this.attstartdate = attstartdate;
		this.attenddate = attenddate;
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
	public String getAttstartdate() {
		return attstartdate;
	}
	public void setAttstartdate(String attstartdate) {
		this.attstartdate = attstartdate;
	}
	public String getAttenddate() {
		return attenddate;
	}
	public void setAttenddate(String attenddate) {
		this.attenddate = attenddate;
	}

	@Override
	public String toString() {
		return "Attendance [userid=" + userid + ", attdate=" + attdate
				+ ", attstartdate=" + attstartdate + ", attenddate="
				+ attenddate + "]";
	}
}
