package dto_vo.Emp;

import java.util.Date;

public class Empinfo {
	private String userid;
	private String userphoto;
	private String useremail;
	private Date birth;
	private String useraddr;
	private String usertel;
	private String usermobile;
	private Date hiredate;
	private Date firedate;
	
	public Empinfo() {}
	
	public Empinfo(String userid, String userphoto,String useremail, Date birth,
			String useraddr, String usertel, String usermobile, Date hiredate, 
			Date firedate) 
	{
		this.userid = userid;
		this.userphoto = userphoto;
		this.useremail = useremail;
		this.birth = birth;
		this.useraddr = useraddr;
		this.usertel = usertel;
		this.usermobile = usermobile;
		this.hiredate = hiredate;
		this.firedate = firedate;
		
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserphoto() {
		return userphoto;
	}

	public void setUserphoto(String userphoto) {
		this.userphoto = userphoto;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getUseraddr() {
		return useraddr;
	}

	public void setUseraddr(String useraddr) {
		this.useraddr = useraddr;
	}

	public String getUsertel() {
		return usertel;
	}

	public void setUsertel(String usertel) {
		this.usertel = usertel;
	}

	public String getUsermobile() {
		return usermobile;
	}

	public void setUsermobile(String usermobile) {
		this.usermobile = usermobile;
	}

	public Date getHiredate() {
		return hiredate;
	}

	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}

	public Date getFiredate() {
		return firedate;
	}

	public void setFiredate(Date firedate) {
		this.firedate = firedate;
	}
	
	@Override
	public String toString(){
		return " userid : " +   this.userid + "\n" + 
			   " userphoto : " +   this.userphoto + "\n" + 
			   " useremail :"      +   this.useremail + "\n" + 
			   " birth : " + this.birth+ "\n" + 
			   " useraddr : " + this.useraddr + "\n" + 
			   " usertel : " + this.usertel + "\n" + 
			   " usermobile : " + this.usermobile + "\n" + 
			   " hiredate : " + this.hiredate + "\n" + 
			   " firedate : " + this.firedate + "\n";
	}

	
}
