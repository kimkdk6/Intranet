package dto_vo.Board;

import java.sql.Date;

public class Reply {
	
	private int replynum;
	private int boardnum;
	private String userid;
	private String replycontent;
	private Date replydate;
	
	public Reply() { }

	public Reply(int replynum, int boardnum, String userid,
			String replycontent, Date replydate) {
		this.replynum = replynum;
		this.boardnum = boardnum;
		this.userid = userid;
		this.replycontent = replycontent;
		this.replydate = replydate;
	}

	public int getReplynum() {
		return replynum;
	}

	public void setReplynum(int replynum) {
		this.replynum = replynum;
	}

	public int getBoardnum() {
		return boardnum;
	}

	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getReplycontent() {
		return replycontent;
	}

	public void setReplycontent(String replycontent) {
		this.replycontent = replycontent;
	}

	public Date getReplydate() {
		return replydate;
	}

	public void setReplydate(Date replydate) {
		this.replydate = replydate;
	}

	@Override
	public String toString() {
		return "Reply [replynum=" + replynum + ", boardnum=" + boardnum
				+ ", userid=" + userid + ", replycontent=" + replycontent
				+ ", replydate=" + replydate + "]";
	}
}
