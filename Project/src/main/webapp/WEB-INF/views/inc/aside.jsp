<%@page import="dto_vo.Emp.Empinfo"%>
<%@page import="dto_vo.Emp.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <% 
   Emp emp = (Emp)session.getAttribute("emp1"); 
   Empinfo empinfo = (Empinfo)session.getAttribute("empinfo");
%> --%>

<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img
					src="${pageContext.request.contextPath}/Upload/ProfilePhoto/${sessionScope.empinfo.userphoto}"
					class="img-circle" alt="User Image" />
			</div>
			<div class="pull-left info">
				<p>${ myemp.ename }</p>

				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>
		<!-- search form -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control"
					placeholder="Search..." /> <span class="input-group-btn">
					<button type='submit' name='search' id='search-btn'
						class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</form>
		<!-- /.search form -->
		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">MAIN NAVIGATION</li>
		<!-- 	<li><a href="pages/widgets.html"> <i class="fa fa-envelope"></i>
					<span>웹메일</span> <small class="label pull-right bg-green">new</small>
			</a></li> -->
			<li class="treeview"><a href="#"> <i
					class="fa fa-fw fa-comments"></i> <span>커뮤니티</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a
						href="${pageContext.request.contextPath}/board/BoardMain.htm">
							<i class="fa fa-circle-o"></i> 게시판 메인
					</a> <c:forEach items="${boardNameList}" var="bnl" varStatus="bls">
							<a
								href="${pageContext.request.contextPath}/board/BoardList.htm?boardcode=${bnl.boardcode}">
								<i class="fa fa-circle-o"></i> ${ bnl.boardname }
							</a>
						</c:forEach></li>
				</ul></li>
			<li><a
				href="${pageContext.request.contextPath}/schedule/ScheduleMain.htm">
					<i class="fa fa-calendar"></i> <span>일정관리</span>
					<i
					class="fa fa-angle-left pull-right"></i>
<!-- <small
					class="label pull-right bg-green">Schedule</small> -->
			</a></li>
			<li class="treeview"><a
				href="${pageContext.request.contextPath}/sign/SignMain.htm"> <i
					class="fa fa-fw fa-file-text"></i> <span>전자결재</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a
						href="${pageContext.request.contextPath}/sign/SignMain.htm"><i
							class="fa fa-circle-o"></i> 전자결재 메인 </a></li>
					<li><a href="#"><i class="fa fa-circle-o"></i> 결재문서 작성 <i
							class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
							<li><a
								href="${pageContext.request.contextPath}/sign/DraftingReg.htm"><i
									class="fa fa-circle-o"></i>기안서</a></li>
							<li><a
								href="${pageContext.request.contextPath}/sign/OrderDocReg.htm"><i
									class="fa fa-circle-o"></i>발주서</a></li>
							<li><a
								href="${pageContext.request.contextPath}/sign/HolidayDocReg.htm"><i
									class="fa fa-circle-o"></i>휴가계</a></li>
							<li><a
								href="${pageContext.request.contextPath}/sign/BizTripDocReg.htm"><i
									class="fa fa-circle-o"></i>출장 신청서</a></li>
							<li><a
								href="${pageContext.request.contextPath}/sign/BizTripRepReg.htm"><i
									class="fa fa-circle-o"></i>출장 결과 보고서</a></li>


							
						</ul></li>
					<li><a href="#"><i class="fa fa-circle-o"></i> 받은 결재 문서함 <i
							class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
							<li><a
								href="${pageContext.request.contextPath}/sign/ReceiveSignList.htm?type=2"><i
									class="fa fa-circle-o"></i>미결재 문서</a></li>
							<li><a
								href="${pageContext.request.contextPath}/sign/ReceiveSignList.htm?type=1"><i
									class="fa fa-circle-o"></i>결재 완료 문서</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-circle-o"></i> 올린 결재 문서함 <i
							class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
							<li><a
								href="${pageContext.request.contextPath}/sign/SendsignsList.htm"><i
									class="fa fa-circle-o"></i>상신 문서</a></li>
							<li><a
								href="${pageContext.request.contextPath}/sign/signsList.htm?type=2"><i
									class="fa fa-circle-o"></i>반려 문서</a></li>
							<li><a
								href="${pageContext.request.contextPath}/sign/signsList.htm?type=1"><i
									class="fa fa-circle-o"></i>결재 완료 문서</a></li>
						</ul></li>
				</ul></li>
			<li><a href="${pageContext.request.contextPath}/search/SearchEmp.htm"> <i
					class="fa fa-fw fa-group"></i> <span>주소록</span><!--  <small
					class="label pull-right bg-green">Group</small> -->
					<i
					class="fa fa-angle-left pull-right"></i>
			</a></li>
			<li class="treeview"><a
				href="${pageContext.request.contextPath}/sign/SignMain.htm"> <i
					class="fa fa-fw fa-file-text"></i> <span>근태관리</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a
						href="${pageContext.request.contextPath}/attendance/Commute.htm"><i
							class="fa fa-circle-o"></i> 나의 근태 현황</a></li>
					<li><a
						href="${pageContext.request.contextPath}/attendance/AttendanceCheck.htm"><i
							class="fa fa-circle-o"></i> 전체 근태 현황 </a></li>
				</ul></li>

			<li><a href="pages/widgets.html"> <i
					class="fa fa-fw fa-cogs"></i> <span>관리자</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a
						href="${pageContext.request.contextPath}/admin/communityAdmin.htm"><i
							class="fa fa-circle-o"></i> 커뮤니티 관리 </a></li>
					<li><a
						href="${pageContext.request.contextPath}/admin/teamAdmin.htm"><i
							class="fa fa-circle-o"></i> 팀 관리 </a></li>
					<li><a
						href="${pageContext.request.contextPath}/admin/empAdmin.htm"><i
							class="fa fa-circle-o"></i> 사원 관리 </a></li>
				</ul></li>
			<li class="treeview">
			<a href="${pageContext.request.contextPath}/mypage/EditMypage.htm"><i
					class="fa fa-fw fa-user"></i> <span>정보수정</span> <!-- <small
					class="label pull-right bg-green">Modify</small></a> -->
				<i
					class="fa fa-angle-left pull-right"></i></a>
			</li>
	</section>
	<!-- /.sidebar -->
	<!-- test -->
</aside>



