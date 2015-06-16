package dto_vo.Emp;

// ==================팀====================
public class Team {
	private int teamcode; // 팀코드
	private int deptcode; // 부서코드
	private String teamname; // 팀이름
	
	public Team() {}

	public Team(int teamcode, int deptcode, String teamname) {
		this.teamcode = teamcode;
		this.deptcode = deptcode;
		this.teamname = teamname;
	}

	public int getTeamcode() {
		return teamcode;
	}

	public void setTeamcode(int teamcode) {
		this.teamcode = teamcode;
	}

	public int getDeptcode() {
		return deptcode;
	}

	public void setDeptcode(int deptcode) {
		this.deptcode = deptcode;
	}

	public String getTeamname() {
		return teamname;
	}

	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}

	@Override
	public String toString() {
		return "Team [teamcode=" + teamcode + ", deptcode=" + deptcode
				+ ", teamname=" + teamname + "]";
	}
	
	
}
