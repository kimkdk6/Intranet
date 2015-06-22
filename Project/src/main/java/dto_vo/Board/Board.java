package dto_vo.Board;

import java.sql.Date;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class Board {

	private int boardcode;
	private int boardnum;
	private int boardnotice;
	private String userid;
	private String boardtitle;
	private String boardcontent;
	private Date boarddate;
	private int boardcount;
	private String boardfilesrc;
	private int boardref;
	private int boarddepth;
	private int boardstep;
	private CommonsMultipartFile file;
	
	
	public CommonsMultipartFile getFile() {
		return file;
	}

	public Board() { }
	
	public void setFile(CommonsMultipartFile file) {
		this.file = file;
	}

	public Board(int boardcode, int boardnum, int boardnotice, String userid,
			String boardtitle, String boardcontent, Date boarddate,
			int boardcount, String boardfilesrc, int boardref, int boarddepth,
			int boardstep) {
		this.boardcode = boardcode;
		this.boardnum = boardnum;
		this.boardnotice = boardnotice;
		this.userid = userid;
		this.boardtitle = boardtitle;
		this.boardcontent = boardcontent;
		this.boarddate = boarddate;
		this.boardcount = boardcount;
		this.boardfilesrc = boardfilesrc;
		this.boardref = boardref;
		this.boarddepth = boarddepth;
		this.boardstep = boardstep;
	}
	
	public int getBoardcode() {
		return boardcode;
	}
	public void setBoardcode(int boardcode) {
		this.boardcode = boardcode;
	}
	public int getBoardnum() {
		return boardnum;
	}
	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}
	public int getBoardnotice() {
		return boardnotice;
	}
	public void setBoardnotice(int boardnotice) {
		this.boardnotice = boardnotice;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getBoardtitle() {
		return boardtitle;
	}
	public void setBoardtitle(String boardtitle) {
		this.boardtitle = boardtitle;
	}
	public String getBoardcontent() {
		return boardcontent;
	}
	public void setBoardcontent(String boardcontent) {
		this.boardcontent = boardcontent;
	}
	public Date getBoarddate() {
		return boarddate;
	}
	public void setBoarddate(Date boarddate) {
		this.boarddate = boarddate;
	}
	public int getBoardcount() {
		return boardcount;
	}
	public void setBoardcount(int boardcount) {
		this.boardcount = boardcount;
	}
	public String getBoardfilesrc() {
		return boardfilesrc;
	}
	public void setBoardfilesrc(String boardfilesrc) {
		this.boardfilesrc = boardfilesrc;
	}
	public int getBoardref() {
		return boardref;
	}
	public void setBoardref(int boardref) {
		this.boardref = boardref;
	}
	public int getBoarddepth() {
		return boarddepth;
	}
	public void setBoarddepth(int boarddepth) {
		this.boarddepth = boarddepth;
	}
	public int getBoardstep() {
		return boardstep;
	}
	public void setBoardstep(int boardstep) {
		this.boardstep = boardstep;
	}

	@Override
	public String toString() {
		return "Board [boardcode=" + boardcode + ", boardnum=" + boardnum
				+ ", boardnotice=" + boardnotice + ", userid=" + userid
				+ ", boardtitle=" + boardtitle + ", boardcontent="
				+ boardcontent + ", boarddate=" + boarddate + ", boardcount="
				+ boardcount + ", boardfilesrc=" + boardfilesrc + ", boardref="
				+ boardref + ", boarddepth=" + boarddepth + ", boardstep="
				+ boardstep + "]";
	}
}
