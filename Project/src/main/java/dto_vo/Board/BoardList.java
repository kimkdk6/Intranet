package dto_vo.Board;

public class BoardList {

	private int boardcode;
	private String boardname;
	
	public BoardList() { }

	public BoardList(int boardcode, String boardname) {
		this.boardcode = boardcode;
		this.boardname = boardname;
	}

	public int getBoardcode() {
		return boardcode;
	}

	public void setBoardcode(int boardcode) {
		this.boardcode = boardcode;
	}

	public String getBoardname() {
		return boardname;
	}

	public void setBoardname(String boardname) {
		this.boardname = boardname;
	}

	@Override
	public String toString() {
		return "Boardlist [boardcode=" + boardcode + ", boardname=" + boardname
				+ "]";
	}
}
