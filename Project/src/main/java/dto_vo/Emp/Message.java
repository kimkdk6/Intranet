package dto_vo.Emp;

import java.util.Date;

// ===================쪽지======================
public class Message {
	private int msgnum; // 쪽지번호
	private String sendid; // 보낸사원
	private String receiveid; // 받은사원
	private String msgtitle; // 쪽지제목
	private String msgcontent; // 쪽지내용
	private Date msgdate; // 쪽지작성일
	private int senddel; // 보낸삭제
	private int recdel; // 받은삭제
	
	public Message() {}

	public Message(int msgnum, String sendid, String receiveid,
			String msgtitle, String msgcontent, Date msgdate, int senddel,
			int recdel) {
		this.msgnum = msgnum;
		this.sendid = sendid;
		this.receiveid = receiveid;
		this.msgtitle = msgtitle;
		this.msgcontent = msgcontent;
		this.msgdate = msgdate;
		this.senddel = senddel;
		this.recdel = recdel;
	}

	public int getMsgnum() {
		return msgnum;
	}

	public void setMsgnum(int msgnum) {
		this.msgnum = msgnum;
	}

	public String getSendid() {
		return sendid;
	}

	public void setSendid(String sendid) {
		this.sendid = sendid;
	}

	public String getReceiveid() {
		return receiveid;
	}

	public void setReceiveid(String receiveid) {
		this.receiveid = receiveid;
	}

	public String getMsgtitle() {
		return msgtitle;
	}

	public void setMsgtitle(String msgtitle) {
		this.msgtitle = msgtitle;
	}

	public String getMsgcontent() {
		return msgcontent;
	}

	public void setMsgcontent(String msgcontent) {
		this.msgcontent = msgcontent;
	}

	public Date getMsgdate() {
		return msgdate;
	}

	public void setMsgdate(Date msgdate) {
		this.msgdate = msgdate;
	}

	public int getSenddel() {
		return senddel;
	}

	public void setSenddel(int senddel) {
		this.senddel = senddel;
	}

	public int getRecdel() {
		return recdel;
	}

	public void setRecdel(int recdel) {
		this.recdel = recdel;
	}

	@Override
	public String toString() {
		return "Message [msgnum=" + msgnum + ", sendid=" + sendid
				+ ", receiveid=" + receiveid + ", msgtitle=" + msgtitle
				+ ", msgcontent=" + msgcontent + ", msgdate=" + msgdate
				+ ", senddel=" + senddel + ", recdel=" + recdel + "]";
	}
	
}
