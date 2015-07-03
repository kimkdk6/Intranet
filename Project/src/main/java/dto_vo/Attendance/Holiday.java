package dto_vo.Attendance;

import java.sql.Date;

public class Holiday {
	
	private String userid;
	private String attdate;
	private String holreason;
	 
	
	public Holiday() { }

	public Holiday(String userid, String attdate, String holreason
			 ) {
		this.userid = userid;
		this.attdate = attdate;
		this.holreason = holreason;
	 
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

	public String getHolreason() {
		return holreason;
	}

	public void setHolreason(String holreason) {
		this.holreason = holreason;
	}

	@Override
	public String toString() {
		return "Holiday [userid=" + userid + ", attdate=" + attdate
				+ ", holreason=" + holreason + "]";
	}
	
}
