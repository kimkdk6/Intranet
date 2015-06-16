package dto_vo.Emp;

public class Emp {
	
	private String userid;
	private int empno;
	private String userpwd;
	private String ename;
	private String emptel;
	private int deptcode;
	private int teamcode;
	private int poscode;
	private int empapprove;
	
	public Emp() {}
	
	public Emp(String userid, int empno, String userpwd, String ename,
			String emptel, int deptcode, int teamcode, int poscode, int empapprove) 
	{
		this.userid = userid;
		this.empno = empno;
		this.userpwd = userpwd;
		this.ename = ename;
		this.emptel = emptel;
		this.deptcode = deptcode;
		this.teamcode = teamcode;
		this.poscode = poscode;
		this.empapprove = empapprove;
		
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getEmptel() {
		return emptel;
	}

	public void setEmptel(String emptel) {
		this.emptel = emptel;
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

	public int getPoscode() {
		return poscode;
	}

	public void setPoscode(int poscode) {
		this.poscode = poscode;
	}

	public int getEmpapprove() {
		return empapprove;
	}

	public void setEmpapprove(int empapprove) {
		this.empapprove = empapprove;
	}
	
	@Override
	public String toString(){
		return " userid : " +   this.userid + "\n" + 
			   " empno : " +   this.empno + "\n" + 
			   " userpwd :"      +   this.userpwd + "\n" + 
			   " ename : " + this.ename+ "\n" + 
			   " emptel : " + this.emptel + "\n" + 
			   " deptcode : " + this.deptcode + "\n" + 
			   " teamcode : " + this.teamcode + "\n" + 
			   " poscode : " + this.poscode + "\n" + 
			   " empapprove : " + this.empapprove + "\n";
	}
	

}
