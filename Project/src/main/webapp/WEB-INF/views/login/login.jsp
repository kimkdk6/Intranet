<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Se7en | Log in</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
</head>
<body class="login-page">
	<div class="login-box">
		<div class="login-logo">
			Se<b>7</b>en International</a>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			<form action="" method="post">
				<div class="form-group has-feedback">
					<input type="text" name="userid" class="form-control" placeholder="Id" /> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="emppwd" class="form-control" placeholder="Password" />
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

	
</body>
</html>