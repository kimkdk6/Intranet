package dto_vo.Sign;

// ====================기안서========================
public class Draftingdoc {
	private int docnum; // 문서번호
	private String dracontent; // 글내용
	
	public Draftingdoc() {}

	public Draftingdoc(int docnum, String dracontent) {
		this.docnum = docnum;
		this.dracontent = dracontent;
	}

	public int getDocnum() {
		return docnum;
	}

	public void setDocnum(int docnum) {
		this.docnum = docnum;
	}

	public String getDracontent() {
		return dracontent;
	}

	public void setDracontent(String dracontent) {
		this.dracontent = dracontent;
	}

	@Override
	public String toString() {
		return "Draftingdoc [docnum=" + docnum + ", dracontent=" + dracontent
				+ "]";
	}
	
}
