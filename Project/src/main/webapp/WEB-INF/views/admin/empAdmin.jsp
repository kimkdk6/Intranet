<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<section class="content-header">
	<h1>
		회원 관리 페이지 <small>회원 승인/관리 페이지</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">관리자</li>
	</ol>
</section>
<section class="content-header">
	<!-- /.box-header -->
	<div class="box">
		<div class="box-header with-border">
			<h3 class="box-title">
				<a class="title_txt" href="ReceiveSignList.htm?type=2"> 관리자 페이지
					&gt; 회원 관리</a>
			</h3>
		</div>
		<div class="box-body">
		 <table  width="100%" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				 <tr>
					<td height="30" bgcolor="#ececec"
						style="border-bottom: 1px #c9c9c9 solid; border-top: 1px #c9c9c9 solid; padding: 0 0 0 12px;">
						 
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tbody>
								<tr>
									<td align="left">
										<table border="0" cellspacing="0" cellpadding="0">
											<tbody>
												<tr>
													<td><a
														href="usrInfo.php?dept=&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><img
															src="/img/webmail/bt_add2.gif"></a></td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
							</tbody>
						</table> 
					</td>
				</tr> 
				<tr>
					<td>
						<!--리스트TB START-->
						<table class="table table-hover">
							<tbody>
								<tr height="20">
									<th align="left"
										style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
										class="title">No</th>
									<th align="left"
										style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
										class="title">아이디</th>
									<th align="left"
										style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
										class="title">부서</th>
									<th align="left"
										style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
										class="title">직급</th>
									<th align="left"
										style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
										class="title">직원명</th>
									<th align="left"
										style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
										class="title">핸드폰</th>


								</tr>
								<tr bgcolor="#f9f9f9" height="23">
									<td align="left"
										style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">1</td>
									<td align="left"
										style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
										href="usrInfo.php?dept=&amp;usrmgno=3231&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>abcc</b></a></td>
									<td align="left"
										style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">전무</td>
									<td align="left"
										style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">대표이사
										test</td>
									<td align="left"
										style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
										<a
										href="usrInfo.php?dept=&amp;usrmgno=3231&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><font
											color="red">전무 abv 대표이사 test (대기중) </font></a>
									</td>
									<td align="left"
										style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">123</td>

								</tr>

							</tbody>
						</table> <!--리스트TB END-->
				  	</td>
				  
				 <tr>
					<td height="30" bgcolor="#ececec"
						style="border-bottom: 1px #c9c9c9 solid; border-top: 1px #c9c9c9 solid; padding: 0 0 0 12px;">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tbody>
								<tr>
									<td align="left">
										<table border="0" cellspacing="0" cellpadding="0">
											<tbody>
												<tr>
													<td><a
														href="usrInfo.php?dept=&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><img
															src="/img/webmail/bt_add2.gif"></a></td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr> 
			</tbody>
		 </table>
		</div>
	</div>
</section>
