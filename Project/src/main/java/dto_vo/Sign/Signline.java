package dto_vo.Sign;

// ================결재라인=====================
public class Signline {
	private int docnum; // 문서번호
	private int signok1; // 승인여부1
	private int signok2; // 승인여부2
	private int signok3; // 승인여부3
	private int signok4; // 승인여부4
	private int signok5; // 승인여부5
	private String signning; // 누가승인중인지
	
	public Signline() {}

	public Signline(int docnum, int signok1, int signok2, int signok3,
			int signok4, int signok5, String signning) {
		
		this.docnum = docnum;
		this.signok1 = signok1;
		this.signok2 = signok2;
		this.signok3 = signok3;
		this.signok4 = signok4;
		this.signok5 = signok5;
		this.signning = signning;
	}
	
	public int getDocnum() {
		return docnum;
	}

	public void setDocnum(int docnum) {
		this.docnum = docnum;
	}

	public int getSignok1() {
		return signok1;
	}

	public void setSignok1(int signok1) {
		this.signok1 = signok1;
	}

	public int getSignok2() {
		return signok2;
	}

	public void setSignok2(int signok2) {
		this.signok2 = signok2;
	}

	public int getSignok3() {
		return signok3;
	}

	public void setSignok3(int signok3) {
		this.signok3 = signok3;
	}

	public int getSignok4() {
		return signok4;
	}

	public void setSignok4(int signok4) {
		this.signok4 = signok4;
	}

	public int getSignok5() {
		return signok5;
	}

	public void setSignok5(int signok5) {
		this.signok5 = signok5;
	}

	
	
	public String getSignning() {
		return signning;
	}

	public void setSignning(String signning) {
		this.signning = signning;
	}

	@Override
	public String toString() {
		return "Signline [docnum=" + docnum + ", signok1=" + signok1
				+ ", signok2=" + signok2 + ", signok3=" + signok3
				+ ", signok4=" + signok4 + ", signok5=" + signok5 + this.signning+"]";
	}
	
}
