<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script language="javascript">

	function detailsearch()
	{
		window.open("SearchEmpDetail.htm", "detail_open","width=800,height=700,top=0,left=0,noresizable,toolbar=no,status=no,scrollbars=yes,directory=no");
	    // document.body.innerHTML = printdiv.innerHTML;
	}


	$(function() {
		// 처음에 부서 목록 출력
		$.ajax({
			url : "<%=request.getContextPath() %>/search/searchDeptName.htm",
			dataType : "json",
			success : function(data) {
				var options="";
				// options += "<option value=''>부서선택</option>";
				$.each(data.deptinfo, function(index, dlist) {
					options += "<option value="+dlist.deptcode+">"+dlist.deptname+"</option>";
				});
				$('#deptlist').append(options);
			},
			error: function (xhr,Options,thrownError) {
	        }
		});
		
		// 처음에 전체나오게
		$.ajax({
			Type:"post",
			url : "<%=request.getContextPath() %>/search/SearchEmpList.htm",
			dataType : "json",
			data : {userid : $('#Emp').val()},
			success : function(data) {
				$('#Employee').append(
					  "<tr>" + 
              		  "<th width='100' class='title bb1 br1 p0007'>사용자 ID</th>" +
              		  "<th width='100' class='title bb1 br1 p0007'>사원번호</th>" +
              		  "<th width='100' class='title bb1 br1 p0007'>사원이름</th>" +
              		  "<th width='100' class='title bb1 br1 p0007'>사내전화</th>" +
              		  "<th width='100' class='title bb1 br1 p0007'>부서이름</th>" +
              		  "<th width='100' class='title bb1 br1 p0007'>팀이름</th>" +
              		  "<th width='100' class='title bb1 br1 p0007'>직급</th>" +
              		  "</tr>"		
				);
				
				$.each(data.emplist2, function(index, entry) {
					$('#Employee').append(
						  "<tr>" + 
              			  "<td width='100' class='title bb1 br1 p0007'>" + entry.userid + "</td>" +
              			  "<td width='100' class='title bb1 br1 p0007'>" + entry.empno + "</td>" +
              			  "<td width='100' class='title bb1 br1 p0007'>" + entry.ename + "</td>" +
              			  "<td width='100' class='title bb1 br1 p0007'>" + entry.emptel + "</td>" +
              			  "<td width='100' class='title bb1 br1 p0007'>" + entry.deptcode + "</td>" +
              			  "<td width='100' class='title bb1 br1 p0007'>" + entry.teamcode + "</td>" +
              			  "<td width='100' class='title bb1 br1 p0007'>" + entry.poscode + "</td>" +
              			  "<td width='100' class='title bb1 br1 p0007'><button onclick='location.href='javascript:detailsearch();' class = 'btn btn-back btn-xs'>상세정보</button>" +
              			  "</tr>"		
					)
					
				});
			},
			error: function (xhr,Options,thrownError) {
		    },
		});
		
		
		$('#teamlist').on("change", function() {
			$('#Employee').empty();
			$.ajax({
				Type:"post",
				url : "<%=request.getContextPath() %>/search/SearchTeamList.htm",
				dataType : "json",
				data : {deptcode : $('#deptlist').val(), teamcode : $('#teamlist').val()},
				success : function(data) {
					$('#Employee').append(
							  "<tr>" + 
		              		  "<th width='100' class='title bb1 br1 p0007'>사용자 ID</th>" +
		              		  "<th width='100' class='title bb1 br1 p0007'>사원번호</th>" +
		              		  "<th width='100' class='title bb1 br1 p0007'>사원이름</th>" +
		              		  "<th width='100' class='title bb1 br1 p0007'>사내전화</th>" +
		              		  "<th width='100' class='title bb1 br1 p0007'>부서이름</th>" +
		              		  "<th width='100' class='title bb1 br1 p0007'>팀이름</th>" +
		              		  "<th width='100' class='title bb1 br1 p0007'>직급</th>" +
		              		  "</tr>"		
					);
					
					$.each(data.empteamlist, function(index, entry) {
						$('#Employee').append(
								 "<tr>" + 
		              			 "<td width='100' class='title bb1 br1 p0007'>" + entry.userid + "</td>" +
		              			 "<td width='100' class='title bb1 br1 p0007'>" + entry.empno + "</td>" +
		              			 "<td width='100' class='title bb1 br1 p0007'>" + entry.ename + "</td>" +
		              			 "<td width='100' class='title bb1 br1 p0007'>" + entry.emptel + "</td>" +
		              			 "<td width='100' class='title bb1 br1 p0007'>" + entry.deptcode + "</td>" +
		              			 "<td width='100' class='title bb1 br1 p0007'>" + entry.teamcode + "</td>" +
		              			 "<td width='100' class='title bb1 br1 p0007'>" + entry.poscode + "</td>" +
		              			 "</tr>"	
						)
					});
				},
				error: function (xhr,Options,thrownError) {
			    },
			});
		});
		
		
		
		
		
		// 부서 바뀔때 팀도 출력
		
		$('#deptlist').on("change", function() {
			// 팀목록 출력
			$('#teamlist').empty();
			
			$.ajax({
				url : "<%=request.getContextPath() %>/search/searchTeamName.htm",
				dataType : "json",
				data : {deptcode:$('#deptlist').val(), teamcode : $('#teamlist').val()},
				success : function(data) {
					var options="";
	            	
	            	$.each(data.teaminfo, function(index,tlist) {
	            		options += "<option value="+tlist.teamcode+">"+tlist.teamname+"</option>";
	            	});
	            	$('#teamlist').append(options);
				}
			});
			
			// 부서만 고를때 부서에 따른 사원 출력
			$('#Employee').empty();
			$.ajax({
				url : "<%=request.getContextPath() %>/search/SearchDeptList.htm",
				dataType : "json",
				data : {deptcode:$('#deptlist').val()},
				success : function(data) {
					$('#Employee').append(
							"<tr>" + 
		              		"<th width='100' class='title bb1 br1 p0007'>사용자 ID</th>" +
		              		"<th width='100' class='title bb1 br1 p0007'>사원번호</th>" +
		              		"<th width='100' class='title bb1 br1 p0007'>사원이름</th>" +
		              		"<th width='100' class='title bb1 br1 p0007'>사내전화</th>" +
		              		"<th width='100' class='title bb1 br1 p0007'>부서이름</th>" +
		              		"<th width='100' class='title bb1 br1 p0007'>팀이름</th>" +
		              		"<th width='100' class='title bb1 br1 p0007'>직급</th>" +
		              		"</tr>"		
					);
					
					$.each(data.empdeptlist, function(index, entry) {
						$('#Employee').append(
								  "<tr>" + 
		              			  "<td width='100' class='title bb1 br1 p0007'>" + entry.userid + "</td>" +
		              			  "<td width='100' class='title bb1 br1 p0007'>" + entry.empno + "</td>" +
		              			  "<td width='100' class='title bb1 br1 p0007'>" + entry.ename + "</td>" +
		              			  "<td width='100' class='title bb1 br1 p0007'>" + entry.emptel + "</td>" +
		              			  "<td width='100' class='title bb1 br1 p0007'>" + entry.deptcode + "</td>" +
		              			  "<td width='100' class='title bb1 br1 p0007'>" + entry.teamcode + "</td>" +
		              			  "<td width='100' class='title bb1 br1 p0007'>" + entry.poscode + "</td>" +
		              			  "</tr>"		
						)
					});
				},
				error: function (xhr,Options,thrownError) {
			    },
			});
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
				<div class="selectplz" style=" float: left;">
					<select id="deptlist" class="form-control" style="width:250px; margin-left: 30px; margin-right: 20px; margin-bottom: 10px;">
						<option selected disabled="disabled">Department</option>
					</select>
				</div>
				
				<div class="selectplz" style=" float: left;">
					<select id="teamlist" class="form-control" style="width:250px; margin-right: 10px;">
						<option selected disabled="disabled">Team</option>
					</select>
				</div>
				
				<div style=" float: left; margin-right: 70px;">
					<input type="button" value="검색" id="btn1" class="btn btn-primary btn-md">
				</div>
				
				<div style=" float: left;">
					<input type="text" class="form-control" style="width:200px; margin-right: 10px;" placeholder="이름으로 검색" id="namesearch">
				</div>
				
				<div style=" float: left;">
					<input type="button" value="검색" id="btn2" class="btn btn-primary btn-md">
				</div>
			</div>
			
			<div style="width:90%; height: 500px; overflow: scroll; float: none;">
				
				<table id="Employee" class="table">
					<%-- <c:choose>
						<c:when test="${fn:length(empinfo) > 0}">
							<c:forEach items="${empinfo}" var="e">
								<c:set var="userid" value="${e.userid}" />
								<c:when test="${userid == {e.userid}">
									<a href="${pageContext.request.contextPath}/search/SearchEmpDetail.htm?userid=${e.userid}">
										${e.userid}
									</a>
								</c:when>
					
							</c:forEach>
						</c:when>
					</c:choose> --%>
				</table>
				
			</div>
			
		</div>
	</div>
</body>
</html>

