<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<td align="center" valign="top" bgcolor="#ffffff"
		style="border-left: 1px #b1b1b1 solid; border-right: 1px #b1b1b1 solid; border-bottom: 1px #b1b1b1 solid;">
		<!--본문TB START-->
		<form name="usrInfo" method="post" action="usrInfo_exe.php"
			onsubmit="return chkvals(this)">
			<input type="hidden" name="usrmgno" value="3238"> <input
				type="hidden" name="imagefile" value=""> <input
				type="hidden" name="rtn_url" value="/index.php">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
						<td height="40">
							<!--타이틀TB START-->
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tbody>
									<tr>
										<td width="360" align="left" class="title_txt"
											style="padding: 5px 0 0 14px;">'사용자' 정보변경</td>
										<td width="" align="right" style="padding: 0 12px 0 0;"></td>
									</tr>
								</tbody>
							</table> <!--타이틀TB END-->
						</td>
					</tr>
					<tr>
						<td height="30" bgcolor="#ececec"
							style="border-bottom: 1px #c9c9c9 solid; border-top: 1px #c9c9c9 solid; padding: 0 0 0 12px;">
							<!--기능TB START-->
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tbody>
									<tr>
										<td align="left">
											<table border="0" cellspacing="0" cellpadding="0">
												<tbody>
													<tr>
														<td width="5"></td>
														<td><input type="image"
															src="/img/webmail/bt_save2.gif"></td>
													</tr>
												</tbody>
											</table>
										</td>
										<td align="right" style="padding: 0 12px 0 0;"></td>
									</tr>
								</tbody>
							</table> <!--기능TB END-->
						</td>
					</tr>
					<tr>
						<td>
							<!--리스트TB START-->
							<table width="100%" border="1" bordercolor="#eaeaea"
								cellspacing="0" cellpadding="0" frame="void">
								<tbody>
									<tr height="30">
										<td width="120" bgcolor="#F6F6F6"
											style="padding: 3px 0px 0px 12px;"><b>아이디</b></td>
										<td style="padding: 3px 0px 0px 12px;"><input
											type="hidden" name="usriden" value="a2"> a2</td>
									</tr>
									<tr height="30">
										<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>기존
												암호</b></td>
										<td style="padding: 3px 0px 0px 12px;" class="stxt"><input
											type="password" autocomplete="off" name="passconf"
											class="input_type1" style="width: 150px;"></td>
									</tr>
									<tr height="30">
										<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>암호</b></td>
										<td style="padding: 3px 0 0 12px;" class="stxt"><input
											type="password" name="usrpass" class="input_type1"
											style="width: 150px;">
											<div style="padding: 5px 0 5px 0;">
												<span class="stxt">- 8자리 이상의 암호를 사용하세요. 영문,숫자,특수문자가
													혼용되면 안전합니다. </span> <br> <span class="stxt">- 암호를 입력할
													경우 암호가 입력된 암호로 변경됩니다.</span> <br> <span class="stxt">-
													암호를 변경하려 할 경우가 아닌 경우 입력하지 마세요</span>
											</div></td>
									</tr>
									<tr height="30">
										<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;">
											<b>사진</b><br> <span class="stxt">(최적사이즈 130*146)</span>
										</td>
										<td style="padding: 6px 0 6px 12px;">
											<table border="0" cellspacing="0" cellpadding="0">
												<tbody>
													<tr>
														<td align="left" valign="top"><img
															src="/img/organ/pic_bg.gif" id="imageArea"> <a
															href="javascript:_nologo()"><img
																src="/img/webmail/bt_del.gif" align="absmiddle"></a>
															<div>
																<input type="file" name="uploadify" id="uploadify"
																	width="60" height="20" style="display: none;">
																<object type="application/x-shockwave-flash"
																	data="/js/uploadify.swf" width="60" height="20"
																	id="uploadifyUploader" style="visibility: visible;">
																	<param name="quality" value="high">
																	<param name="wmode" value="opaque">
																	<param name="allowScriptAccess" value="sameDomain">
																	<param name="flashvars"
																		value="uploadifyID=uploadify&amp;pagepath=/admin/&amp;script=/util/uploadify.php&amp;folder=/home/hangroup/www/uploads/20150630_c31ff45c79aa8e25180a1a2a7fe18ade&amp;width=60&amp;height=20&amp;wmode=opaque&amp;method=POST&amp;queueSizeLimit=999&amp;simUploadLimit=1&amp;fileDesc=이미지 화일&amp;fileExt=*.gif;*.jpg&amp;auto=true&amp;fileDataName=Filedata&amp;queueID=fileQueue">
																</object>
															</div>
															<div id="fileQueue"></div></td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>

									<tr height="30">
										<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>이름</b></td>
										<td style="padding: 3px 0px 0px 12px;"><input type="text"
											name="usrname" class="input_type1" style="width: 150px;"
											value="a2"></td>
									</tr>

									<tr height="30">
										<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>회사
												전화</b></td>
										<td style="padding: 0px 0px 0px 12px;"><input type="text"
											name="office" class="input_type1" style="width: 150px;"
											value="" onblur="// constraintValue('NUMBER',this);"></td>
									</tr>

									<tr height="30">
										<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>핸드폰</b></td>
										<td style="padding: 0px 0px 0px 12px;">
											<!-- <input type="text" name="mobile" class="input_type1" style="width:150px;" value="" onBlur="constraintValue('MOBILE',this);"> -->
											<input type="text" name="mobile" class="input_type1"
											style="width: 150px;" value="">
										</td>
									</tr>
									<tr height="30">
										<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>전자우편주소</b></td>
										<td style="padding: 0px 0px 0px 12px;"><input type="text"
											name="email" class="input_type1" style="width: 200px;"
											value=""></td>
									</tr>
									<tr height="30">
										<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>생년월일</b></td>
										<td style="padding: 0px 0px 0px 12px;"><label><input
												name="openbirth" type="checkbox" value="1">공개</label> &nbsp;
											<input name="byy" type="text" class="input_type1"
											style="width: 35px;" maxlength="4" value=""
											onblur="constraintValue('YEAR',this);"> 년 <input
											name="bmm" type="text" class="input_type1"
											style="width: 25px;" maxlength="2" value=""
											onblur="constraintValue('MONTH',this);"> 월 <input
											name="bdd" type="text" class="input_type1"
											style="width: 25px;" maxlength="2" value=""
											onblur="constraintValue('DAY',this);"> 일 &nbsp; <label><input
												name="birthsolar" type="radio" value="1" checked="">양력</label>
											&nbsp; <label><input name="birthsolar" type="radio"
												value="0">음력</label></td>
									</tr>
									<tr height="30">
										<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>자택
												주소</b></td>
										<td style="padding: 3px 0px 0px 12px;"><label><input
												name="openaddr" type="checkbox" value="1">공개</label> &nbsp;
											<input name="zipcode" type="text" class="input_type1"
											style="width: 60px;" value="" readonly=""> <a
											href="javascript:"><img id="bt_zipcode"
												src="/img/member/bt_address.gif" align="absmiddle"></a> <input
											type="text" name="address" class="input_type1"
											style="width: 300px;" value=""></td>
									</tr>
									<tr height="30">
										<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>자택
												전화</b></td>
										<td style="padding: 0px 0px 0px 12px;"><label><input
												name="openhome" type="checkbox" value="1">공개</label> &nbsp;
											<input type="text" name="home" class="input_type1"
											style="width: 150px;" value=""
											onblur="// constraintValue('NUMBER',this);"></td>
									</tr>

									<tr height="30">
										<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>메일용량</b></td>
										<td style="padding: 0px 0px 0px 12px;" class="counter"><input
											type="hidden" name="malquta" value="50">50 (Mbyte)</td>
									</tr>
									<tr>
										<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>사내
												정보</b></td>
										<td style="padding: 10px 10px 10px 12px;">


											<table width="100%" border="1" bordercolor="#eaeaea"
												cellspacing="0" cellpadding="0" class="tbl_board1">
												<tbody>
													<tr height="30">
														<td width="30%" bgcolor="#F6F6F6"
															style="padding: 3px 0px 0px 12px;"><b>부서 / 직급</b></td>
														<td width="70%" style="padding: 0px 0px 0px 12px;"><input
															type="hidden" name="usrdept" value="629">개발팀 <input
															type="hidden" name="usrresp" value="943">과장 test
															<input type="hidden" name="usrpos" value="1"></td>
													</tr>
													<tr height="30">
														<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>입사일</b></td>
														<td style="padding: 0px 0px 0px 12px;"><input
															type="hidden" name="usrindt" value=""></td>
													</tr>
													<tr height="30">
														<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>진급일</b></td>
														<td style="padding: 0px 0px 0px 12px;"><input
															type="hidden" name="usrprdt" value=""></td>
													</tr>
													<tr height="30">
														<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>연차갯수</b></td>
														<td style="padding: 3px 0px 0px 12px;"><input
															type="hidden" name="usrycct" value="0">0 회</td>
													</tr>
													<tr height="30">
														<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>그룹웨어
																관리자 여부</b></td>
														<td style="padding: 0px 0px 0px 12px;"><input
															type="hidden" name="usradmn" value="0"> X</td>
													</tr>
													<tr height="30">
														<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>전자결재
																문서양식 담당자</b></td>
														<td style="padding: 0px 0px 0px 12px;"><input
															type="hidden" name="usrappt" value="0"> X</td>
													</tr>
													<tr height="30">
														<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>전자결재
																전결 권한자 여부</b></td>
														<td style="padding: 0px 0px 0px 12px;"><input
															type="hidden" name="usrappa" value="0"> X</td>
													</tr>
													<tr height="30">
														<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>회사
																전체 전자결재 문서 조회권자 여부</b></td>
														<td style="padding: 0px 0px 0px 12px;"><input
															type="hidden" name="usrappc" value="0"> X</td>
													</tr>
													<tr height="30">
														<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>회사
																전체 업무보고 문서 조회권자 여부</b></td>
														<td style="padding: 0px 0px 0px 12px;"><input
															type="hidden" name="usrappb" value="0"> X</td>
													</tr>
													<tr height="30">
														<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>부서
																전체 문서 조회권자 여부</b></td>
														<td style="padding: 0px 0px 0px 12px;"><input
															type="hidden" name="usrappd" value="0"> X</td>
													</tr>
													<tr height="30">
														<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>근태
																관리자 여부</b></td>
														<td style="padding: 0px 0px 0px 12px;"><input
															type="hidden" name="usrcoma" value="0"> X</td>
													</tr>
													<tr height="30">
														<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>근태
																처리 대상자 여부</b></td>
														<td style="padding: 0px 0px 0px 12px;"><input
															type="hidden" name="usrcomt" value="1"> O</td>
													</tr>
													<tr height="30">
														<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>전자
																세금계산서 담당자 여부</b></td>
														<td style="padding: 0px 0px 0px 12px;"><input
															type="hidden" name="usrtaxa" value="0"> X</td>
													</tr>

													<tr height="30">
														<td bgcolor="#F6F6F6" style="padding: 3px 0px 0px 12px;"><b>외부인원
																여부</b></td>
														<td style="padding: 0px 0px 0px 12px;"><input
															type="hidden" name="usrwrka" value="0"> 사내직원</td>
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
							<!--기능TB START-->
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tbody>
									<tr>
										<td align="left">
											<table border="0" cellspacing="0" cellpadding="0">
												<tbody>
													<tr>
														<td width="5"></td>
														<td><input type="image"
															src="/img/webmail/bt_save2.gif"></td>
													</tr>
												</tbody>
											</table>
										</td>
										<td align="right" style="padding: 0 12px 0 0;"></td>
									</tr>
								</tbody>
							</table> <!--기능TB END-->
						</td>
					</tr>
					<tr>
						<td height="30"></td>
					</tr>
				</tbody>
			</table>
		</form> <!--본문TB END-->
	</td>
</body>