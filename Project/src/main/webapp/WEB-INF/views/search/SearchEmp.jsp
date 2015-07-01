<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<!--본문TB START-->
<section class="content-header">

	<h1>
		조직도 <small>회원검색</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">조직도</li>
	</ol>
</section>

<section class="content-header">
	<!-- /.box-header -->
	

	<!-- /.box-header -->
	<div class="box">
		<div class="box-header with-border">
			<h3 class="box-title">
				<a class="title_txt" href="SearchEmp.htm"> 조직도 </a>
			</h3>
		</div>
		<div class="box-body">
			<table class="table table-hover">
				<tr>
					<th style="width: 75px">사용자 ID</th>
					<th style="width: 75px">사원 번호</th>
					<th style="width: 75px">사원 이름</th>
					<th style="width: 75px">사원 전화번호</th>
					<th style="width: 75px">부서명</th>
					<th style="width: 75px">팀명</th>
					<th style="width: 75px">직급</th>
				</tr>
				
				<c:choose>
					<c:when test="${fn:length(emplist) > 0}">
						<c:forEach items="${emplist}" var="e">
							<%-- <c:set var="signtype" value="${s.signtype}" /> --%>
							<tr>
								<td width="100" class="title bb1 br1 p0007">
									<font color="#666666">${e.userid}</font>
								</td>
								<td width="80" class="title bb1 br1 p3007">
									<font color="#666666">${e.empno}</font>
								</td>
								<td width="100" class="title bb1 br1 p3007">
									<font color="#666666">${e.ename}</font>
								</td>
								<td width="100" class="title bb1 br1 p3007">
									<font color="#666666">${e.emptel}</font>
								</td>	
								<td width="100" class="title bb1 br1 p3007">
									<font color="#666666">${e.deptcode}</font>
								</td>
								<td width="100" class="title bb1 br1 p3007">
									<font color="#666666">${e.teamcode}</font>
								</td>
								<td width="100" class="title bb1 br1 p3007">
									<font color="#666666">${e.poscode}</font>
								</td>
								
								<td width="200" class="title bb1 p3007"><font
									color="#666666">${s.signtitle}</font></td>
							</tr>

						</c:forEach>

					</c:when>
					<c:otherwise>
						<tr height="60">
							<td class="p2007 bb1" colspan="7" align="center"><b>조회된
									문서가 없습니다.</b></td>
						</tr>
					</c:otherwise>
				</c:choose>
			</table>
		</div>
	</div>
</section>


