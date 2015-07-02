<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminLTE 2 | Dashboard</title>
<meta>

</head>
<body onload="myFunction()" >
	<!-- Content Header (Page header) -->
	<%-- <div style="background-image: <%=request.getContextPath() %>/resources/img/bg.jpg"> --%>
<%-- 	<div style="background-image: <%=request.getContextPath() %>/resources/img/bg.jpg"> --%>
		<tiles:insertAttribute name="content" />
		
<!-- 	</div> -->
	<!-- /.content-wrapper -->
	<!-- ./wrapper -->
</body>
</html>