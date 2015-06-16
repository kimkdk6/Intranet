package dto_vo.Schedule;

// =================스케쥴 카테고리==================
public class Schcategory {
	private int catecode; // 카테고리코드
	private String catename; // 카테고리이름
	private int deptcode; // 부서코드
	private int teamcode; // 팀코드
	private String userid; // 사용자ID
	private String catecontent; // 카테고리내용
	private String color; // 카테고리색깔
	
	public Schcategory() {}

	public Schcategory(int catecode, String catename, int deptcode,
			int teamcode, String userid, String catecontent, String color) {

		this.catecode = catecode;
		this.catename = catename;
		this.deptcode = deptcode;
		this.teamcode = teamcode;
		this.userid = userid;
		this.catecontent = catecontent;
		this.color = color;
	}

	public int getCatecode() {
		return catecode;
	}

	public void setCatecode(int catecode) {
		this.catecode = catecode;
	}

	public String getCatename() {
		return catename;
	}

	public void setCatename(String catename) {
		this.catename = catename;
	}

	public int getDeptcode() {
		return deptcode;
	}

	public void setDeptcode(int deptcode) {
		this.deptcode = deptcode;
	}

	public int getTeamcode() {
		return teamcode;
	}

	public void setTeamcode(int teamcode) {
		this.teamcode = teamcode;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getCatecontent() {
		return catecontent;
	}

	public void setCatecontent(String catecontent) {
		this.catecontent = catecontent;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	@Override
	public String toString() {
		return "Schcategory [catecode=" + catecode + ", catename=" + catename
				+ ", deptcode=" + deptcode + ", teamcode=" + teamcode
				+ ", userid=" + userid + ", catecontent=" + catecontent
				+ ", color=" + color + "]";
	}
	
}
