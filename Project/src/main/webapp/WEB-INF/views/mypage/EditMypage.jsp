<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
// model.addAttribute("emp", empdao.getEmp(userid));
// model.addAttribute("empinfo", empdao.getEmpInfo(userid));
%>
<!DOCTYPE html>

	<section class="content-header">
		<h1>&nbsp</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">정보수정</li>
		</ol>
	</section>
	<section class="content-header">
		<!-- /.box-header -->
		<div class="box">
			<div class="box-header with-border">
				<h3 class="box-title">
					<a class="title_txt" href="DraftingReg.htm"> 정보수정 페이지</a>
				</h3>
			</div>
			<div class="box-body">
				<form name="signform" action="" method="post"
					enctype="multipart/form-data">
					<input type="hidden" id="signtype" name="signtype" value="1">
					<input type="hidden" id="dept" name="dept"
						value="${sessionScope.dept}"> <input type="hidden"
						id="team" name="team" value="${sessionScope.team}"> <input
						type="hidden" id="ename" name="ename"
						value="${sessionScope.myemp.ename}"> <input type="hidden"
						id="posname" name="posname" value="${sessionScope.pos}">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td height="40">
									<!--타이틀TB START-->
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<td width="360" align="center" class="title_txt"
													style="padding: 5px 0 0 14px; font-size: 30px">사용자
													정보수정</td>
												<!-- <td width="" align="right" style="padding: 0 12px 0 0;">&nbsp;</td> -->
											</tr>
										</tbody>
									</table> <!--타이틀TB END-->
								</td>
							</tr>
							<tr>
								<td>
									<!--리스트TB START-->
									<table width="100%" border="1" bordercolor="#C0BFC1"
										style="border: solid 1px #C0BFC1;"
										"
										cellspacing="0" cellpadding="0" frame="void">
										<tbody>
											<tr height="30">
												<td width="120" bgcolor="#E1F9DD"
													style="padding: 3px 0px 0px 12px;"><b>아이디</b></td>
												<td style="padding: 3px 0px 0px 12px;">
												<input type="hidden" name="usriden" value="${emp.userid}">
													${emp.userid}</td>
											</tr>
											<tr height="30">
												<td bgcolor="#E1F9DD" style="padding: 3px 0px 0px 12px;"><b>기존
														암호</b></td>
												<td style="padding: 3px 0px 0px 12px;" class="stxt">
												<input type="password" autocomplete="off" name="passconf"
													class="input_type1" value="${emp.emppwd}" style="width: 150px;"></td>
											</tr>
											<tr height="30">
												<td bgcolor="#E1F9DD" style="padding: 3px 0px 0px 12px;"><b>암호</b></td>
												<td style="padding: 3px 0 0 12px;" class="stxt">
												<input type="password" name="usrpass" class="input_type1" value="${emp.emppwd}"  style="width: 150px;">
													<div style="padding: 5px 0 5px 0;">
														<span class="stxt">- 8자리 이상의 암호를 사용하세요. 영문,숫자,특수문자가
															혼용되면 안전합니다. </span> <br> <span class="stxt">- 암호를
															입력할 경우 암호가 입력된 암호로 변경됩니다.</span> <br> <span class="stxt">-
															암호를 변경하려 할 경우가 아닌 경우 입력하지 마세요</span>
													</div></td>
											</tr>
											<tr height="30">
												<td bgcolor="#E1F9DD" style="padding: 3px 0px 0px 12px;">
													<b>사진</b><br> <span class="stxt">(최적사이즈
														130*146)</span>
												</td>
												<td style="padding: 6px 0 6px 12px;">
													<table border="0" cellspacing="0" cellpadding="0">
														<tbody>
															<tr>
																<td align="left" valign="top">
																
																<!-- c:if -->
																<c:choose>
																	<c:when test="${empinfo.userphoto!=null}">
																		<img width="130px" height="146" src="../Upload/ProfilePhoto/${empinfo.userphoto}">
																	</c:when>
						
																	<c:otherwise>
																	<img src="resources/img/pic_bg.gif" id="imageArea">
																		
																	</c:otherwise>
																</c:choose>
																 
																
																 
																
																
																<!-- default img -->
																
<!-- 																	<a href="javascript:_nologo()"> -->
																	
<!-- 																	<img src="/img/webmail/bt_del.gif" align="absmiddle"> -->
<!-- 																	</a> -->
																	<div>
																		<input type="file" name="uploadify" id="uploadify"
																			width="60" height="20">
<!-- 																		<object type="application/x-shockwave-flash" -->
<!-- 																			data="/js/uploadify.swf" width="60" height="20" -->
<!-- 																			id="uploadifyUploader" style="visibility: visible;"> -->
																			
<!-- 																			<param name="quality" value="high"> -->
<!-- 																			<param name="wmode" value="opaque"> -->
<!-- 																			<param name="allowScriptAccess" value="sameDomain"> -->
<!-- 																			<param name="flashvars" -->
<!-- 																				value="uploadifyID=uploadify&amp;pagepath=/admin/&amp;script=/util/uploadify.php&amp;folder=/home/hangroup/www/uploads/20150630_c31ff45c79aa8e25180a1a2a7fe18ade&amp;width=60&amp;height=20&amp;wmode=opaque&amp;method=POST&amp;queueSizeLimit=999&amp;simUploadLimit=1&amp;fileDesc=이미지 화일&amp;fileExt=*.gif;*.jpg&amp;auto=true&amp;fileDataName=Filedata&amp;queueID=fileQueue"> -->
<!-- 																		</object> -->
																	</div>
																	<div id="fileQueue"></div></td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>

											<tr height="30">
												<td bgcolor="#E1F9DD" style="padding: 3px 0px 0px 12px;"><b>이름</b></td>
												<td style="padding: 3px 0px 0px 12px;"><input
													type="text" name="usrname" class="input_type1"
													style="width: 150px;" value="${emp.ename}"></td>
											</tr>

											<tr height="30">
												<td bgcolor="#E1F9DD" style="padding: 3px 0px 0px 12px;"><b>회사
														전화</b></td>
												<td style="padding: 0px 0px 0px 12px;"><input
													type="text" name="office" class="input_type1"
													style="width: 150px;" value="${emp.emptel}"
													onblur="// constraintValue('NUMBER',this);"></td>
											</tr>

											<tr height="30">
												<td bgcolor="#E1F9DD" style="padding: 3px 0px 0px 12px;"><b>핸드폰</b></td>
												<td style="padding: 0px 0px 0px 12px;">
													<!-- <input type="text" name="mobile" class="input_type1" style="width:150px;" value="" onBlur="constraintValue('MOBILE',this);"> -->
													<input type="text" name="mobile" class="input_type1"
													style="width: 150px;" value="${empinfo.usermobile}">
												</td>
											</tr>
											<tr height="30">
												<td bgcolor="#E1F9DD" style="padding: 3px 0px 0px 12px;"><b>전자우편주소</b></td>
												<td style="padding: 0px 0px 0px 12px;"><input
													type="text" name="email" class="input_type1"
													style="width: 200px;" value="${empinfo.useremail}"></td>
											</tr>
											<tr height="30">
												<td bgcolor="#E1F9DD" style="padding: 3px 0px 0px 12px;"><b>생년월일</b></td>
												<td style="padding-left: 6px;">
													&nbsp; <input type="text" name="birth" class="input_type1"
													style="width: 150px;" value="${empinfo.birth}"
													><!--  년 <input
													name="bmm" type="text" class="input_type1"
													style="width: 25px;" maxlength="2" value=""
													onblur="constraintValue('MONTH',this);"> 월 <input
													name="bdd" type="text" class="input_type1"
													style="width: 25px;" maxlength="2" value=""
													onblur="constraintValue('DAY',this);"> 일 &nbsp; --> <!-- <label><input
														name="birthsolar" type="radio" value="1" checked="">양력</label>
													&nbsp; <label><input name="birthsolar" type="radio"
														value="0">음력</label> --></td>
											</tr>
											<tr height="30">
												<td bgcolor="#E1F9DD" style="padding: 3px 0px 0px 12px;"><b>자택
														주소</b></td>
												<td style="padding-left: 6px;">
													&nbsp; <!--<input name="zipcode" type="text"
													class="input_type1" style="width: 60px;" value=""
													readonly=""> <input type="button" value="우편주소" onclick="addsign()" style="border-left-width: 2px; margin-left:4px;"> -->
												<input type="text" name="address"
													class="input_type1" style="width: 300px;" value="${empinfo.useraddr}"></td>
											</tr>
											<tr height="30">
												<td bgcolor="#E1F9DD" style="padding: 3px 0px 0px 12px;"><b>자택
														전화</b></td>
												<td style="padding-left: 6px;">
													&nbsp; <input type="text" name="home" class="input_type1"
													style="width: 150px;" value="${empinfo.usertel}"
													></td>
											</tr>

											
											<tr>
												<td bgcolor="#E1F9DD" style="padding: 3px 0px 0px 12px;"><b>사내
														정보</b></td>
												<td style="padding: 10px 10px 10px 12px;">
																	

													<table width="100%" border="1px" bordercolor="#C0BFC1"
														cellspacing="0" cellpadding="0" class="tbl_board1">
														<tbody>
															<tr height="30">
																<td width="30%" bgcolor="#E1F9DD"
																	style="padding: 3px 0px 0px 12px;"><b>부서코드</b>
																<td style="padding: 0px 0px 0px 12px;">
																<input type="hidden" name="usrpos" value="${emp.deptcode}">${emp.deptcode}</td>	
																	</td>
															</tr>		
															<tr height="30">		
																<td width="30%" bgcolor="#E1F9DD"
																	style="padding: 3px 0px 0px 12px;"><b>직급코드</b>	
																<td style="padding: 0px 0px 0px 12px;">
																<input type="hidden" name="usrpos" value="${emp.poscode}">${emp.poscode}</td>
															</tr>
															<tr height="30">
																<td bgcolor="#E1F9DD" style="padding: 3px 0px 0px 12px;"><b>입사일</b></td>
																<td style="padding: 0px 0px 0px 12px;"><input
																	type="hidden" name="usrindt" value="${empinfo.hiredate}">${empinfo.hiredate}</td>
															</tr>


														</tbody>
													</table>

												</td>
											</tr>
										</tbody>
									</table>
						<!--리스트TB END-->
						</td>
						</tr>
						<tr>
							<td height="30" bgcolor="#ececec"
								style="border-bottom: 1px #c9c9c9 solid; border-top: 1px #c9c9c9 solid; padding: 0 0 0 12px;">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tbody>
										<tr>
											<td align="right" style="padding: 0 12px 0 0;">
												<table border="0" cellspacing="0" cellpadding="0">
													<tbody>
														<tr>
															<td><input type="button" value="수정완료"
																onclick="addsign()"></td>
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