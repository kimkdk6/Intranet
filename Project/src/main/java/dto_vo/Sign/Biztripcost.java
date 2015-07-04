package dto_vo.Sign;

import java.util.Date;
import java.util.List;

// ==============출장경비내역==================
public class Biztripcost {
	private int docnum; // 문서번호
	private int bizcostnum; // 경비내역번호
	/*private String bizdate; // 출장날짜
*/	private String bizcostdetail; // 지출내역
	private String biznote; // 비고
	private int bizcost; // 금액
	
	private List<Biztripcost> costlist;
	
	public Biztripcost() {}

	public Biztripcost(int docnum, int bizcostnum, String bizcostdetail,
			String biznote, int bizcost, List<Biztripcost> costlist) {
		this.docnum = docnum;
		this.bizcostnum = bizcostnum;
		/*this.bizdate = bizdate;*/
		this.bizcostdetail = bizcostdetail;
		this.biznote = biznote;
		this.bizcost = bizcost;
		this.costlist = costlist;
	}

	public int getDocnum() {
		return docnum;
	}

	public void setDocnum(int docnum) {
		this.docnum = docnum;
	}
	
	public int getBizcostnum() {
		return bizcostnum;
	}

	public void setBizcostnum(int bizcostnum) {
		this.bizcostnum = bizcostnum;
	}

	/*public String getBizdate() {
		return bizdate;
	}

	public void setBizdate(String bizdate) {
		this.bizdate = bizdate;
	}*/

	public String getBizcostdetail() {
		return bizcostdetail;
	}

	public void setBizcostdetail(String bizcostdetail) {
		this.bizcostdetail = bizcostdetail;
	}

	public String getBiznote() {
		return biznote;
	}

	public void setBiznote(String biznote) {
		this.biznote = biznote;
	}

	public int getBizcost() {
		return bizcost;
	}

	public void setBizcost(int bizcost) {
		this.bizcost = bizcost;
	}
	

	public List<Biztripcost> getCostlist() {
		return costlist;
	}

	public void setCostlist(List<Biztripcost> costlist) {
		this.costlist = costlist;
	}

	@Override
	public String toString() {
		return "Biztripcost [docnum=" + docnum + ", bizcostnum=" + bizcostnum
				+ ", bizcostdetail=" + bizcostdetail
				+ ", biznote=" + biznote + ", bizcost=" + bizcost
				+ ", costlist=" + costlist + "]";
	}

}
