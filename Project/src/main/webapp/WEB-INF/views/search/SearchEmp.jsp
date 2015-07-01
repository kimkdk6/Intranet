<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script language="javascript">
	function divdetail() {
		window.open("SearchEmpDetail.htm", "detail", "width=800,height=700,top=0,left=0,noresizable,toolbar=no,status=no,scrollbars=yes,directory=no")
	}
	
	$(function() {
		$('#deptlist').change(function() {
			var deptcode = {deptcode : $('#deptlist').val()};
			$.ajax({
				dataType : "json",
				url : "<%=request.getContextPath() %>/search/getTeamName.htm",
			})
		});
	});
</script>

<!-- <style type="text/css">
		body {
			font-size: 100%;
		}
		
		.btn-back {
			background-color: #5B5847;
			color: white;
		}
</style> -->

<!DOCTYPE html>
<html>

<section class="content-header">
	<h1>
		조직도 <small>회원검색</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">조직도</li>
	</ol>
</section>

<body>
	<div id="main" align="center" >
		<div id="wrapper" style="width: 90%;">
			<!-- <div align="left" style="height: 50px;"><h3>사원검색</h3></div> -->
			<div align="center" style="margin-bottom: 0px;">
				<div class="selectplz" id="deptselect" name="deptselect" style=" float: left;">
					<select id="deptlist" class="form-control" style="width:250px; margin-left: 30px; margin-right: 20px; margin-bottom: 10px;">
						<option selected disabled="disabled">Department</option>
						<option>부서를 선택하세요</option>
					</select>
				</div>
				
				<div class="selectplz" style=" float: left;">
					<select id="teamlist" id="teamselect" name="teamselect" class="form-control" style="width:250px; margin-right: 150px;">
						<option selected disabled="disabled">Team</option>
						<option>팀을 선택하세요</option>
					</select>
				</div>
				
				<div style=" float: left;">
					<input type="text" class="form-control" style="width:200px; margin-right: 10px;" placeholder="이름으로 검색" id="Ename">
				</div>
				
				<div style=" float: left;">
					<input type="button" value="검색" id="btn" class="btn btn-primary btn-md">
				</div>
			</div>
			
			<div style="width:90%; height: 500px; overflow: scroll; float: none;">
				<table id="" class="table">
					<tr>
						<td>
						asd
						</td>
					</tr>
				</table>
			</div>
			
		</div>
	</div>
</body>
</html>

