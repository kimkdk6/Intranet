package dto_vo.Emp;

// =======================직급==========================
public class Position {
	private int poscode; // 직급코드
	private String posname; // 직급이름
	
	public Position() {}

	public Position(int poscode, String posname) {
		this.poscode = poscode;
		this.posname = posname;
	}

	public int getPoscode() {
		return poscode;
	}

	public void setPoscode(int poscode) {
		this.poscode = poscode;
	}

	public String getPosname() {
		return posname;
	}

	public void setPosname(String posname) {
		this.posname = posname;
	}

	@Override
	public String toString() {
		return "Position [poscode=" + poscode + ", posname=" + posname + "]";
	}
	
	
}
