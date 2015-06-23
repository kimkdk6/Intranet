package dto_vo.Emp;

import java.util.Date;

public class Empinfo {
   private String userid;
   private String userphoto;
   private String useremail;
   private String birth;
   private String useraddr;
   private String usertel;
   private String usermobile;
   private String hiredate;
   private String firedate;
   
   public Empinfo() {}
   
   public Empinfo(String userid, String userphoto,String useremail, String birth,
         String useraddr, String usertel, String usermobile, String hiredate, 
         String firedate) 
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

   public String getBirth() {
      return birth;
   }

   public void setBirth(String birth) {
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

   public String getHiredate() {
      return hiredate;
   }

   public void setHiredate(String hiredate) {
      this.hiredate = hiredate;
   }

   public String getFiredate() {
      return firedate;
   }

   public void setFiredate(String firedate) {
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