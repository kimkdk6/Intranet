<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

   <script>
	    $(function() {
	        $.backstretch("<%=request.getContextPath()%>/resources/img/bg.jpg", {speed: 500});
	    });
    </script>
    
	<div class="login-box">
		<div class="login-logo">
			Se<b>7</b>en International<br/>
			
			<c:if test="${param.error != null}">
			<div style="font-size: 20px; color: red;">
				 로그인실패 
				 <c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
				 	이유 : <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
				 </c:if>
			</div>
			
		</c:if>  
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			
			<c:url value="/j_spring_security_check" var="loginURL"></c:url>
			<form name="f" 
				  action="${loginURL}" 
				  method="post">
				<div class="form-group has-feedback">
					<input type="text" name="j_username" class="form-control" placeholder="Id" /> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="j_password" class="form-control" placeholder="Password" />
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row1">
					<div class="login">
						<button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
					</div>
				</div>
			</form>

			<a href="#">I forgot my password</a><br> 
			<a href="${pageContext.request.contextPath}/joinus/join.htm" class="text-center">Register a new membership</a>
		</div>
	</div>

	<!--BACKSTRETCH-->
  
 
