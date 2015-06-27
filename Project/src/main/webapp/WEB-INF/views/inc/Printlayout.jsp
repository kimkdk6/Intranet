<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminLTE 2 | Dashboard</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- Bootstrap 3.3.4 -->
<link
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<!-- FontAwesome 4.3.0 -->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<!-- Ionicons 2.0.0 -->
<link
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"
	rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link
	href="<%=request.getContextPath()%>/resources/css/AdminLTE.min.css"
	rel="stylesheet" type="text/css" />
<!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
<link
	href="<%=request.getContextPath()%>/resources/css/skins/_all-skins.min.css"
	rel="stylesheet" type="text/css" />
<!-- iCheck -->
<link
	href="<%=request.getContextPath()%>/resources/plugins/iCheck/flat/blue.css"
	rel="stylesheet" type="text/css" />
<!-- Morris chart -->
<link
	href="<%=request.getContextPath()%>/resources/plugins/morris/morris.css"
	rel="stylesheet" type="text/css" />
<!-- jvectormap -->
<link
	href="<%=request.getContextPath()%>/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.css"
	rel="stylesheet" type="text/css" />
<!-- Date Picker -->
<link
	href="<%=request.getContextPath()%>/resources/plugins/datepicker/datepicker3.css"
	rel="stylesheet" type="text/css" />
<!-- Daterange picker -->
<link
	href="<%=request.getContextPath()%>/resources/plugins/daterangepicker/daterangepicker-bs3.css"
	rel="stylesheet" type="text/css" />
<!-- bootstrap wysihtml5 - text editor -->
<link
	href="<%=request.getContextPath()%>/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"
	rel="stylesheet" type="text/css" />
	
	<!-- backstretch -->
	 <script src="<%=request.getContextPath() %>/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	 <script src="<%=request.getContextPath()%>/resources/js/jquery.backstretch.min.js"></script>

</head>
<body class="skin-blue sidebar-mini">
	<!-- Content Header (Page header) -->
	<%-- <div style="background-image: <%=request.getContextPath() %>/resources/img/bg.jpg"> --%>
	<div style="background-image: <%=request.getContextPath() %>/resources/img/bg.jpg">
		<tiles:insertAttribute name="content" />
		
	</div>
	<!-- /.content-wrapper -->
	<!-- ./wrapper -->
</body>
</html>