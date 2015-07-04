<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${param.error != null}">
	<c:set var="errorwin" value="${SPRING_SECURITY_LAST_EXCEPTION}"/>
</c:if>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

   <script>
	    $(function() {
	        $.backstretch("<%=request.getContextPath()%>/resources/img/bg.jpg", {speed: 500});
	    });
    </script>
<script type="text/javascript">
$(function(){
	
	$("#loginbtn").click(function(){
		if($("#j_username").val() == ""){
			alert("로그인 아이디를 입력해주세요.");
			$("#j_username").focus();
			return false;
		}else if($("#j_password").val() == ""){
			alert("로그인 비밀번호를 입력해주세요.");
			$("#j_password").focus();
			return false;
		} 
			$("#f").submit();
		
	});
	
	if('${errorwin}'){
		alert("로그인 실패");
	}
});
	
</script>
	<div class="login-box">
		<div class="login-logo">
			Se<b>7</b>en International<br/>
			
			<%--  <c:if test="${param.error != null}">
				<div style="font-size: 20px; color: red;">
				 로그인실패 
				 <c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
				 	이유 : <c:out value="${SPRING_SECURITY_LAST_EXCEPTION}" />
				 </c:if>
				</div>
			</c:if>  --%>  
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			
			<c:url value="/j_spring_security_check" var="loginURL"></c:url>
			<form name="f" id="f"
				  action="${loginURL}" 
				  method="post">
				<div class="form-group has-feedback">
					<input type="text" name="j_username" id="j_username" class="form-control" placeholder="Id" /> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="j_password" id="j_password" class="form-control" placeholder="Password" />
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row1">
					<div class="login">
						<!-- <button id="loginbtn" type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button> -->
						<input id="loginbtn" type="button" class="btn btn-primary btn-block btn-flat" value="Sign In">
					</div>
				</div>
			</form>

			<a href="#">I forgot my password</a><br> 
			<a href="${pageContext.request.contextPath}/joinus/join.htm" class="text-center">Register a new membership</a>
		</div>
	</div>

	<!--BACKSTRETCH-->
  
 
