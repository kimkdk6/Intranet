package dto_vo.Emp;

public class Dept {

	private int deptcode;
	private String deptname;
	
	public Dept() {}
	
	public Dept(int deptcode, String deptname) 
	{
		this.deptcode = deptcode;
		this.deptname = deptname;
	}

	public int getDeptcode() {
		return deptcode;
	}

	public void setDeptcode(int deptcode) {
		this.deptcode = deptcode;
	}

	public String getDeptname() {
		return deptname;
	}

	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}

	@Override
	public String toString(){
		return " deptcode : " +   this.deptcode + "\n" + 
			   " deptname : " +   this.deptname + "\n";
	}
	
}
