package dto_vo.Attendance;

import java.sql.Date;

public class Attendance {
	
	private String userid;
	private Date attdate;
	private Date attstartdate;
	private Date attenddate;
	
	public Attendance() {
	}
	
	public Attendance(String userid, Date attdate, Date attstartdate,
			Date attenddate) {
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
	public Date getAttdate() {
		return attdate;
	}
	public void setAttdate(Date attdate) {
		this.attdate = attdate;
	}
	public Date getAttstartdate() {
		return attstartdate;
	}
	public void setAttstartdate(Date attstartdate) {
		this.attstartdate = attstartdate;
	}
	public Date getAttenddate() {
		return attenddate;
	}
	public void setAttenddate(Date attenddate) {
		this.attenddate = attenddate;
	}

	@Override
	public String toString() {
		return "Attendance [userid=" + userid + ", attdate=" + attdate
				+ ", attstartdate=" + attstartdate + ", attenddate="
				+ attenddate + "]";
	}
}
