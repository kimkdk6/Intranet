<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 <script>
	    $(function() {
	        $.backstretch("<%=request.getContextPath()%>/resources/img/bg.jpg", {speed: 500});
	    });
    </script>

	<div class="register-box">
		<div class="register-logo">
			Se<b>7</b>en International</a>
		</div>
		<div class="register-box-body">
			<p class="login-box-msg">Register a new membership</p>
			<form action="" method="post">
				<div class="form-group has-feedback">
					<input type="text" name="userid" class="form-control" placeholder="Id" />
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="emppwd" class="form-control" placeholder="Password" />
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
			<!-- 	<div class="form-group has-feedback">
					<input type="password" class="form-control" placeholder="Retype password" /> 
					<span class="glyphicon glyphicon-log-in form-control-feedback"></span>
				</div> -->
				<div class="form-group has-feedback">
					<input type="text" name="ename" class="form-control" placeholder="Name" />
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<!-- <div class="form-group has-feedback">
					<input type="email" class="form-control" placeholder="Email" /> 
					<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<select class="form-control" name="gender">
						<option>성별</option>
						<option>남성</option>
						<option>여성</option>
					</select>
				</div> -->
				
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
