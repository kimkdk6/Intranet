<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminLTE 2 | Dashboard</title>
<meta>
 <!-- Bootstrap 3.3.4 -->
    <link href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />    
    <!-- FontAwesome 4.3.0 -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons 2.0.0 -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />    
    <!-- Theme style -->
    <link href="<%=request.getContextPath() %>/resources/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="<%=request.getContextPath() %>/resources/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="<%=request.getContextPath() %>/resources/plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="<%=request.getContextPath() %>/resources/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="<%=request.getContextPath() %>/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
   <%--  <!-- Date Picker -->
    <link href="<%=request.getContextPath() %>/resources/plugins/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="<%=request.getContextPath() %>/resources/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" /> --%>
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="<%=request.getContextPath() %>/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />

	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" type="text/css" />
   
   	 
   
    
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!-- jQuery 2.1.4 -->
	 <script src="<%=request.getContextPath() %>/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
     <!-- ChartJS 1.0.1 -->
    <script src="<%=request.getContextPath() %>/resources/plugins/chartjs/Chart.min.js" type="text/javascript"></script>
    <!-- ck Editor -->
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/plugins/ckeditor/ckeditor.js"></script>
    
 

 <!-- jQuery UI 1.11.4 -->
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js" type="text/javascript"></script>
    
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    
    <!-- Bootstrap 3.3.2 JS -->
    <script src="<%=request.getContextPath() %>/resources/js/bootstrap.min.js" type="text/javascript"></script>    
    <!-- Morris.js charts -->
    <script src="<%=request.getContextPath() %>/resources/plugins/morris/morris.min.js" type="text/javascript"></script>
    <!-- Sparkline -->
    
    <script src="<%=request.getContextPath() %>/resources/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
    <!-- jvectormap -->
    <script src="<%=request.getContextPath() %>/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath() %>/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
    
    <!-- jQuery Knob Chart -->
    <script src="<%=request.getContextPath() %>/resources/plugins/knob/jquery.knob.js" type="text/javascript"></script>
    <!-- daterangepicker -->
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath() %>/resources/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <!-- datepicker -->
     <script src="<%=request.getContextPath() %>/resources/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
 --%>    <!-- Bootstrap WYSIHTML5 -->
    <script src="<%=request.getContextPath() %>/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
    <!-- Slimscroll -->
    <script src="<%=request.getContextPath() %>/resources/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='<%=request.getContextPath() %>/resources/plugins/fastclick/fastclick.min.js'></script>
    
    <!-- AdminLTE App -->
    <script src="<%=request.getContextPath() %>/resources/js/app.min.js" type="text/javascript"></script>    
      <!-- Morris.js charts , jQuery.js 와 충돌문제로 아래 삽입-->   
	<script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js" type="text/javascript"></script>
    
    
    <!-- AdminLTE for demo purposes -->
    <script src="<%=request.getContextPath() %>/resources/js/demo.js" type="text/javascript"></script>
  
  <script src="<%=request.getContextPath() %>/resources/plugins/fullcalendar/fullcalendar.js" type="text/javascript"></script>
  <link href="<%=request.getContextPath() %>/resources/plugins/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
  <link href="<%=request.getContextPath() %>/resources/plugins/fullcalendar/fullcalendar.print.css" rel="stylesheet" type="text/css" media='print' />
  
  <script src="<%=request.getContextPath() %>/resources/plugins/colorpicker/bootstrap-colorpicker.min.js" type="text/javascript"></script>
  <link href="<%=request.getContextPath() %>/resources/plugins/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet" type="text/css" media='print' />
 
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