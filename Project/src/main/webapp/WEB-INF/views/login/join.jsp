<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>

 <script>
       $(function() {
           
           <%-- 해결좀
           $.backstretch("<%=request.getContextPath()%>/resources/img/bg.jpg", {speed: 500});
            --%>
            
            $('#checkuserid').click(function(){
				//사번 중복 확인 버튼을 누르면
				//'Popup_Empno.jsp' 팝업창 오픈
				open('Popup_Empno.jsp', 'checkEmpno', 'width=500 height=200');
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
       
</script>

   <div class="register-box">
      <div class="register-logo">
         Se<b>7</b>en International</a>
      </div>
      <div class="register-box-body">
         <p class="login-box-msg">Register a new membership</p>
         <form action="" method="post" enctype="multipart/form-data">
            
            <!-- emp -->
            <div class="form-group has-feedback">
               <input type="text" name="userid" class="form-control" placeholder="Id" id="joinId" />
               <span id="inputId" class="glyphicon glyphicon-user form-control-feedback"></span>
               <input class="btn btn-lg btn-danger btn-block" type="button" value="중복확인" id="checkuserid">
            </div>
            <div class="form-group has-feedback">
               <input type="password" name="emppwd" class="form-control" placeholder="Password" />
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
               <select class="form-control" id="Department" name="deptcode">
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
               <input type="text" id="useraddr" name="useraddr" class="form-control" placeholder="Address" />
               <span class="glyphicon glyphicon-home form-control-feedback"></span>
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
            
            <input type="file" name=file> 
            
            <div class="row1">
               <div class="join">
                  <button type="submit" class="btn btn-primary btn-block btn-flat">Register</button>
               </div>
            </div>
         </form>
         <a href="${pageContext.request.contextPath}/index.htm" class="text-center">I already have a membership</a>
      </div>
      <!-- /.form-box -->
   </div>
   <!-- /.register-box -->