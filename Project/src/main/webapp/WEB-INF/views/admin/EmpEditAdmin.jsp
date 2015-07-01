<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
 	function adminApp(proc)
	{
	    var f = document.empform;
	    if(proc == 'A'){
	     
	        if( !confirm( '승인하시겠습니까?') ) return;
	        f.action = "EmpApproveAdmin.htm";
	    }
	    
	    else if(proc == 'M')
	    {
	        if( !confirm('수정하시겠습니까?.') ) return;
	        f.action = 'EmpEdit.htm';
	    }
	  
	    
	    f.submit();
	}
 
       $(function() {
           $('#deptcode').change(function() {
              var deptcode = { deptcode : $('#deptcode').val() };
              $.ajax({
               Type:"post",
               url:"<%=request.getContextPath()%>/joinus/getTeamName.htm",
										dataType : "json",
										data : deptcode,
										contentType : "application/x-www-form-urlencoded; charset=UTF-8",
										success : function(data) {
											//alert("go");
											var toptions = "<option selected disabled='disabled'>팀을 선택하세요</option>";

											$.each(
													data.TeamInfo,
													function() {
													//alert(i);
													console.log(this);
													//var ajaxName = decodeURIComponent( this.teamname );
												toptions += "<option value='" + this.teamcode + "'>"+ this.teamname+ "</option>";
											});
											$('#Team *').remove();
											$('#Team').append(toptions);

										},
										error : function(data) {
											alert("Error 발생");
										}
									});
						});

	});
</script>
<!DOCTYPE html>
<c:set var="approve" value="${emp.empapprove}" />
<c:if test="${emp.empapprove == 0}">
	<c:set var="disabled" value="disabled" />
</c:if>
<section class="content-header">
	<h1>&nbsp</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">사원관리</li>
	</ol>
</section>
<section class="content-header">
	<!-- /.box-header -->
	<div class="box">
		<div class="box-header with-border">
			<h3 class="box-title">
				<a class="title_txt" href="DraftingReg.htm"> 사원관리 페이지</a>
			</h3>
		</div>
		<div class="box-body">
			<form name="empform" action="" method="post"
				enctype="multipart/form-data">

				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td height="40">
								<!--타이틀TB START-->
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tbody>
										<tr>
											<td width="360" align="center" class="title_txt"
												style="padding: 5px 0 0 14px; font-size: 30px">사원 정보 관리</td>
											<!-- <td width="" align="right" style="padding: 0 12px 0 0;">&nbsp;</td> -->
										</tr>
									</tbody>
								</table> <!--타이틀TB END-->
							</td>
						</tr>
						<tr>
							<td
								style="padding-left: 100; padding-right: 100px; padding-left: 110px; padding-bottom: 30px;">
								<!--리스트TB START-->
								<table width="100%" border="1" bordercolor="#C0BFC1"
									style="border: solid 1px #C0BFC1; margin-top: 20px;" "
										cellspacing="0"
									cellpadding="0" frame="void">
									<tbody>
										<tr height="30">
											<td width="120" bgcolor="#FFFFD7" align="center"><b>아이디</b></td>
											<td style="padding: 3px 0px 0px 12px;"><input
												type="hidden" name="userid" value="${emp.userid}">
												${emp.userid}</td>
										</tr>
										<tr height="30">
											<td bgcolor="#FFFFD7" align="center"><b>사진</b><br>
												<span class="stxt">(최적사이즈 130*146)</span></td>
											<td style="padding: 6px 0 6px 12px;">
												<table border="0" cellspacing="0" cellpadding="0">
													<tbody>
														<tr>
															<td align="left" valign="top">
																<!-- c:if --> <c:choose>
																	<c:when test="${empinfo.userphoto!=null}">
																		<img width="130px" height="146"
																			src="../Upload/ProfilePhoto/${empinfo.userphoto}">
																	</c:when>

																	<c:otherwise>
																		<img width="130px" height="146"
																			src="../resources/img/pic_bg.gif" id="imageArea">

																	</c:otherwise>
																</c:choose>
														</tr>
													</tbody>
												</table>
											</td>
										</tr>

										<tr height="30">
											<td bgcolor="#FFFFD7" align="center"><b>이름</b></td>
											<td style="padding: 3px 0px 0px 12px;"><input
												type="hidden" name="ename" class="input_type1"
												style="width: 150px;" value="${emp.ename}">
												${emp.ename}</td>
										</tr>

										<tr height="30">
											<td bgcolor="#FFFFD7" align="center"><b>회사 전화</b></td>
											<td style="padding: 0px 0px 0px 12px;"><input
												type="text" name="emptel" class="input_type1"
												style="width: 150px;" value="${emp.emptel}"></td>
										</tr>

										<tr height="30">
											<td bgcolor="#FFFFD7" align="center"><b>핸드폰</b></td>
											<td style="padding: 0px 0px 0px 12px;">
												${empinfo.usermobile}</td>
										</tr>
										<tr height="30">
											<td bgcolor="#FFFFD7" align="center"><b>전자우편주소</b></td>
											<td style="padding: 0px 0px 0px 12px;">${empinfo.useremail}</td>
										</tr>
										<tr height="30">
											<td bgcolor="#FFFFD7" align="center"><b>생년월일</b></td>
											<td style="padding-left: 12px;">${empinfo.birth}</td>
										</tr>
										<tr height="30">
											<td bgcolor="#FFFFD7" align="center"><b>자택 주소</b></td>
											<td style="padding-left: 12px;">${empinfo.useraddr}</td>
										</tr>
										<tr height="30">
											<td bgcolor="#FFFFD7" align="center"><b>자택 전화</b></td>
											<td style="padding-left: 12px;">${empinfo.usertel}</td>
										</tr>


										<tr>
											<td bgcolor="#FFFFD7" align="center"><b>사내 정보</b></td>
											<td style="padding: 10px 10px 10px 12px;">


												<table width="100%" border="1px" bordercolor="#C0BFC1"
													cellspacing="0" cellpadding="0" class="tbl_board1">
													<tbody>
														<tr height="30">
															<td width="30%" bgcolor="#FFF2F2" align="center"><b>부서</b>
															<td style="padding: 0px 0px 0px 12px;"><select
																id="deptcode" name="deptcode" class="form-control"
																style="width: 300px;" ${disabled}>
																	<option value>부서를 선택하세요</option>
																	<c:forEach var="dept" items="${deptlist}">
																		<c:choose>
																			<c:when test="${emp.deptcode == dept.deptname}">
																				<option selected value="${dept.deptcode}">${dept.deptname}</option>
																			</c:when>
																			<c:otherwise>
																				<option value="${dept.deptcode}">${dept.deptname}</option>
																			</c:otherwise>
																		</c:choose>

																	</c:forEach>
															</select></td>

														</tr>
														<tr height="30">
															<td width="30%" bgcolor="#FFF2F2" align="center"><b>팀</b>
															<td style="padding: 0px 0px 0px 12px;"><select
																id="Team" name="teamcode" class="form-control"
																style="width: 300px;" ${disabled}>
																	<option value>팀을 선택하세요</option>
																	<c:forEach var="team" items="${teamlist}">
																		<c:choose>
																			<c:when test="${emp.teamcode == team.teamname}">
																				<option selected value="${team.teamcode}">${team.teamname}</option>
																			</c:when>
																			<c:otherwise>
																				<option value="${team.teamcode}">${team.teamname}</option>
																			</c:otherwise>
																		</c:choose>

																	</c:forEach>
															</select></td>
														</tr>
														<tr height="30">
															<td width="30%" bgcolor="#FFF2F2" align="center"><b>직급</b>
															<td style="padding: 0px 0px 0px 12px;" colspan="2">
																<select name="poscode" class="form-control"
																style="width: 300px;" ${disabled}>
																	<option value>직급을 선택하세요</option>
																	<c:forEach var="pos" items="${poslist}">
																		<c:choose>
																			<c:when test="${emp.poscode == pos.posname}">
																				<option selected value="${pos.poscode}">${pos.posname}</option>
																			</c:when>
																			<c:otherwise>
																				<option value="${pos.poscode}">${pos.posname}</option>
																			</c:otherwise>
																		</c:choose>

																	</c:forEach>
															</select>

															</td>
														</tr>
														<tr height="30">
															<td bgcolor="#FFF2F2" align="center"><b>입사일</b></td>
															<td style="padding: 0px 0px 0px 12px;" colspan="2"><input
																type="hidden" name="hiredate"
																value="${empinfo.hiredate}">${empinfo.hiredate}</td>
														</tr>


													</tbody>
												</table>

											</td>
										</tr>
									</tbody>
								</table> <!--리스트TB END-->
							</td>
						</tr>
						<tr>
							<td height="30" bgcolor="#ececec"
								style="border-bottom: 1px #c9c9c9 solid; border-top: 1px #c9c9c9 solid; padding: 0 0 0 12px;">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tbody>
										<tr>
											<td align="left" style="padding: 0 12px 0 0;">
												<table border="0" cellspacing="0" cellpadding="0">
													<tbody>
														<tr>
															<td><input type="button" class="btn bg-navy margin"
																value="목 록"
																onclick="location.href='${pageContext.request.contextPath}/admin/empAdmin.htm'">

															</td>
														</tr>
													</tbody>
												</table>
											</td>
											<td align="right" style="padding: 0 12px 0 0;">
												<table border="0" cellspacing="0" cellpadding="0">
													<tbody>
														<tr>
															<c:choose>
																<c:when test="${emp.empapprove == 0}">
																	<td><input type="button"
																		class="btn bg-orange margin" value="승인"
																		onclick="adminApp('A')"></td>
																</c:when>
																<c:otherwise>
																	<td><input type="button"
																		class="btn bg-olive margin" value="수정완료"
																		onclick="adminApp('M')"></td>
																</c:otherwise>
															</c:choose>
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
			</form>
		</div>
	</div>
</section>