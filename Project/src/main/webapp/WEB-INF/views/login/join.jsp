<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<style type="text/css">
	html {
		background: url(../resources/img/bg.jpg) no-repeat center center fixed; 
		-webkit-background-size: cover;
		-moz-background-size: cover;
		-o-background-size: cover;
		background-size: cover;
	}
	
</style>
</head>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>


 <script>
 
 	   /* function CheckPwd(userid, emppwd, emppwd2) {
 		   if(emppwd.value != emppwd2.value) {
 			   alert("입력한 비밀번호와 일치하지 않습니다");
 			   emppwd.value="";
 			   emppwd2.value="";
 			   emppwd.focus();
 			   return false;
 		   }
 		   
 		   if(emppwd.value.length < 6) {
 			   alert("비밀번호는 문자, 숫자, 특수문자의 조합으로 6~16자리로 입력해주세요.");
 			   emppwd.value="";
			   emppwd2.value="";
			   emppwd.focus();
			   return false;
 		   }
 		   
 		   if(!emppwd.value.match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/)) {
 			   alert("비밀번호는 문자, 숫자, 특수문자의 조합으로 6~16자리로 입력해주세요.");
 			   emppwd.value="";
			   emppwd2.value="";
			   emppwd.focus();
 		       return false;
 		   }
 		   
 		   if(userid.value.indexOf(emppwd) > -1) {
 			   alert("비밀번호에 아이디를 사용할 수 없습니다.");
 			   emppwd.value="";
			   emppwd2.value="";
			   emppwd.focus();
 		       return false;
 		   }
 		   
 		   var SamePass_0 = 0; //동일문자 카운트
 		   var SamePass_1 = 0; //연속성(+) 카운드
 		   var SamePass_2 = 0; //연속성(-) 카운드

 		    
 		   var chr_pass_0;
 		   var chr_pass_1;
 		   var chr_pass_2;
 		   
 		   for(var i=0; i<emppwd.value.length; i++) {
 			  chr_pass_0 = emppwd.value.charAt(i);
 		      chr_pass_1 = emppwd.value.charAt(i+1);
 		      
 		      //동일문자 카운트
 		      if(chr_pass_0 == chr_pass_1) {
 		    	  SamePass_0 = SamePass_0 + 1
 		      }
 		      
 		      chr_pass_2 = emppwd.value.charAt(i+2);
 		      
 		      // 연속성 카운트 (+)
 		      if(chr_pass_0.charCodeAt(0) - chr_pass_1.charCodeAt(0) == 1 && chr_pass_1.charCodeAt(0) - chr_pass_2.charCodeAt(0) == 1) {
 	              SamePass_1 = SamePass_1 + 1
 	          }
 		      
 		      // 연속성 카운트(-)
 		      if(chr_pass_0.charCodeAt(0) - chr_pass_1.charCodeAt(0) == -1 && chr_pass_1.charCodeAt(0) - chr_pass_2.charCodeAt(0) == -1) {
 		    	 SamePass_2 = SamePass_2 + 1
 		      }
 		   }
 		   
 		   if(SamePass_0 > 1) {
 			   alert("동일문자를 3번 이상 사용할 수 없습니다.");
 			   emppwd.value="";
			   emppwd2.value="";
			   emppwd.focus();
 		       return false;
 		   }
 		   
 		  if(SamePass_1 > 1 || SamePass_2 > 1 ) {
 			  alert("연속된 문자열(123 또는 321, abc, cba 등)을\n 3자 이상 사용 할 수 없습니다.");
 			  emppwd.value="";
			  emppwd2.value="";
			  emppwd.focus();
 			  return false;
 		  }
 		  
 		  return true;
 	   } */
 
 
  	   
       $(function() {
    	   
    	   
    	   
    	   
    	   
    	   
    	   
    	   
    	   
    	
           
           <%-- 해결좀
           $.backstretch("<%=request.getContextPath()%>/resources/img/bg.jpg", {speed: 500});
            --%>
            
            $('#checkuserid').click(function(){
				// 아이디 중복 확인 버튼을 누르면
				// open('Popup_Empno.jsp', 'checkEmpno', 'width=500 height=200');
				alert()
			});
            
            
            
            
           /*  function idCheckAjax(){
                var param = "joinId=" + $("#joinId").val();
                $.ajax({
                    type:"POST",
                    data:param,
                    url:"idCheck.do",
                    success:function(result){
                        if(result=="OK"){
                            document.getElementById("inputId").innerHTML="사용가능";
                            document.getElementById("inputId").style.color="blue";
            }else{
                            document.getElementById("inputId").innerHTML="중복된아이디";
                            document.getElementById("inputId").style.color="red";
                            document.getElementById("id").value = "";
                            document.getElementById("id").focus(); 
            }
                    },
            	error:function(){
            	alert("통신오류가 발생하였습니다. 재시도 해주세요");
            	}
            });
            	} */
            
            
           
            
           // 중복체크============================================
           /* if($("#joinId").val() != "") {
        	   $("#joinId").keyup();
           };
           
           $("#joinId").keyup(function() {
        	  $.post("<c:url value ="/test/test"/>",
        			  {"joinId" : $("#joinId").val()},
        			  function(data) {
        				  console.log(data);
        				  
        				  if(data == "true") {
        					  $("#inputId").text("이미 사용중인 아이디 입니다.")
        				  }
        				  else {
        					  $("#inputId").text("사용 가능한 아이디 입니다.")
        				  }
        			  }
        	  ); 
           }); */
           // =====================================================
           
           $('#Department').change(function() {
              var deptcode = { deptcode : $('#Department').val() };
              $.ajax({
               Type:"post",
               url:"<%=request.getContextPath() %>/joinus/getTeamName.htm",
               dataType:"json",
               data:deptcode,
               contentType: "application/x-www-form-urlencoded; charset=UTF-8",
               success:function( data ){
                  //alert("go");
                  var toptions ="<option selected disabled='disabled'>Team</option>";
                   
                  $.each(data.TeamInfo, function(){
                     //alert(i);
                     console.log(this);
                     //var ajaxName = decodeURIComponent( this.teamname );
                         toptions += "<option value='" + this.teamcode + "'>"+this.teamname+"</option>";
                      });
                  $('#Team *').remove();    
                      $('#Team').append(toptions);
                  
               },
               error:function(data){alert("Error 발생");}
            });
           });
           
           $( "#hiredate" ).datepicker({
               dateFormat: 'yy-mm-dd',
                 changeMonth: true,
               changeYear: true,
               yearRange: 'c-70:c+0'
           });
           
           $( "#birth" ).datepicker({
               dateFormat: 'yy-mm-dd',
                 changeMonth: true,
               changeYear: true,
               yearRange: 'c-70:c+0'
           });
           
           
      });
 	   
 	   function memberChk() {
 		   var check = document.frm;
 		   
 		   if(check.userid.value == "") {
 			   alert("아이디 입력하세요");
 			   check.userid.focus();
 			   return false;
 		   }
 		   
 		   if(check.emppwd.value == "") {
 			   alert("비밀번호를 입력하세요");
 			   check.emppwd.focus();
 			   return false;
 		   }
 		   
 		   if(check.emppwd2.value == "") {
 			   alert("비밀번호를 다시한번 입력해 주세요");
 			   check.emppwd2.focus();
 			   return false;
 		   }
 		   
 		   if(check.emppwd.value != check.emppwd2.value) {
 			   alert("비밀 번호가 다릅니다");
 			   check.emppwd.value == ""
 			   check.emppwd2.value == ""
 			   check.emppwd2.focus();
 			   return false;
 		   }
 		   
 		   if(check.ename.value == "") {
 			   alert("이름을 입력해 주세요");
 			   check.ename.focus();
 			   return false;
 		   }
 		   
 		   if(check.deptcode.value == "Department") {
 			   alert("부서를 선택해 주세요");
 			   check.deptcode.focus();
 			   return false;
 		   }
 		   
 		   if(check.teamcode.value == "Team") {
 			   alert("팀을 선택해 주세요");
 			   check.teamcode.focus();
 			   return false;
 		   }
 		   
 		   if(check.poscode.value == "Position") {
 			   alert("직급을 선택해 주세요");
 			   check.poscode.focus();
 			   return false;
 		   }
 		   
 		   if(check.useremail.value == "") {
 			   alert("이메일을 입력해 주세요");
 			   check.useremail.focus();
 			   return false;
 		   }
 		   
 		   if(check.birth.value == "") {
 			   alert("생년월일을 입력해 주세요");
 			   check.birth.focus();
 			   return false;
 		   }
 		   
 		   if(check.useraddr.value == "") {
 			   alert("주소를 입력해 주세요");
 			   check.useraddr.focus();
 			   return false;
 		   }
 		   
 		   if(check.useraddr2.value == "") {
			   alert("상세주소를 입력해 주세요");
			   check.useraddr2.focus();
			   return false;
		   }
 		   
 		   if(check.usertel.value == "") {
 			   alert("전화번호를 입력해 주세요");
 			   check.usertel.focus();
 			   return false;
 		   }
 		   
 		   if(check.usermobile.value == "") {
 			   alert("휴대폰 번호를 입력해 주세요");
 			   check.usermobile.focus();
 			   return false;
 		   }
 		   
 		   if(check.hiredate.value == "") {
 			   alert("입사일을 입력해 주세요");
 			   check.hiredate.focus();
 			   return false;
 		   }
 		   
 		   check.submit();
 	   }
 	   
 	   
 	  function sample6_execDaumPostcode() {
 	        new daum.Postcode({
 	            oncomplete: function(data) {
 	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

 	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
 	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
 	                var fullAddr = ''; // 최종 주소 변수
 	                var extraAddr = ''; // 조합형 주소 변수

 	                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
 	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
 	                    fullAddr = data.roadAddress;

 	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
 	                    fullAddr = data.jibunAddress;
 	                }

 	                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
 	                if(data.userSelectedType === 'R'){
 	                    //법정동명이 있을 경우 추가한다.
 	                    if(data.bname !== ''){
 	                        extraAddr += data.bname;
 	                    }
 	                    // 건물명이 있을 경우 추가한다.
 	                    if(data.buildingName !== ''){
 	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
 	                    }
 	                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
 	                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
 	                }

 	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
 	                // document.getElementById("sample6_postcode").value = data.postcode; //6자리 우편번호 사용
 	                // document.getElementById("sample6_postcode").value = data.zonecode; //5자리 기초구역번호 사용
 	                document.getElementById("useraddr").value = fullAddr;

 	                // 커서를 상세주소 필드로 이동한다.
 	                document.getElementById("sample6_address2").focus();
 	            }
 	        }).open();
 	    }
 	   
 	   
 	  
       
</script>

   <div class="register-box">
      <div class="register-logo">
         Se<b>7</b>en International</a>
      </div>
      <div class="register-box-body">
         <p class="login-box-msg">Register a new membership</p>
         <form name="frm" action="" method="post" enctype="multipart/form-data">
            
            <!-- emp -->
            <div class="form-group has-feedback">
               <input type="text" name="userid" class="form-control" placeholder="Id" id="userid" />
               <span id="inputId" class="glyphicon glyphicon-user form-control-feedback"></span>
               <input class="btn btn-lg btn-danger btn-block" type="button" value="중복확인" id="checkuserid">
            </div>
            <div class="form-group has-feedback">
               <input type="password" name="emppwd" id="emppwd" class="form-control" placeholder="Password" />
               <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            
            <div class="form-group has-feedback">
               <input type="password" name="emppwd2" id="emppwd2" class="form-control" placeholder="Password check" />
               <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            
            <!-- <div class="form-group has-feedback">
               <input type="password" class="form-control" placeholder="Retype password" /> 
               <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
            </div> -->
            <div class="form-group has-feedback">
               <input type="text" name="ename" class="form-control" placeholder="Name" />
               <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <!-- 부서,팀코드,직급코드 -->
            <div class="form-group has-feedback">
               <select class="form-control" id="Department" name="deptcode" onChange="deptselect(this)">
                  <option selected disabled="disabled">Department</option>
                  <c:forEach items="${DeptInfo}" var="d" varStatus="ds">
                     <option value="${d.deptcode}">${d.deptname}</option>   
                  </c:forEach>
               </select>
            </div>
            <div class="form-group has-feedback">
               <select class="form-control" id="Team" name="teamcode">
                  <option selected disabled="disabled">Team</option>
               </select>
            </div>
            <div class="form-group has-feedback">
               <select class="form-control" id="Position" name="poscode">
                  <option selected disabled="">Position</option>
                  <c:forEach items="${PosName}" var="p" varStatus="ps">
                     <option value="${p.poscode}">${p.posname}</option>   
                  </c:forEach>
               </select>
            </div>
            
            
            <!-- empinfo  -->
            <div class="form-group has-feedback">
               <input type="text" name="useremail" class="form-control" placeholder="E-mail" />
               <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
               <input type="text" id="birth" name="birth" class="form-control" placeholder="Birth" />
               <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
               <input type="text" id="useraddr" name="useraddr" class="form-control" placeholder="Address" readonly="readonly"/>
               <span class="glyphicon glyphicon-home form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
               <input type="text" id="useraddr2" name="useraddr2" class="form-control" placeholder="Detail Address" />
               <span class="glyphicon glyphicon-home form-control-feedback"></span>
               <input type="button" value="주소찾기" onclick="sample6_execDaumPostcode()" class="btn btn-primary btn-block btn-flat" />
            </div>
            <div class="form-group has-feedback">
               <input type="text" id="usertel" name="usertel" class="form-control" placeholder="Tel" />
               <span class="glyphicon glyphicon-phone-alt form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
               <input type="text" id="usermobile" name="usermobile" class="form-control" placeholder="Mobile" />
               <span class="glyphicon glyphicon-phone form-control-feedback"></span>
            </div>
             <div class="form-group has-feedback">
               <input type="text" id="hiredate" name="hiredate" class="form-control" placeholder="HireDate" />
               <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            
            <input type="file" name=file class="btn btn-back btn-xs"> 
            
            <div class="row1">
               <div class="join">
                  <!-- <button type="submit" class="btn btn-primary btn-block btn-flat">Register</button> -->
                  <input type="button" value="등록" onClick="memberChk()" class="btn btn-primary btn-block btn-flat" />
               </div>
            </div>
         </form>
         <a href="${pageContext.request.contextPath}/index.htm" class="text-center">I already have a membership</a>
      </div>
      <!-- /.form-box -->
   </div>
   <!-- /.register-box -->
   
