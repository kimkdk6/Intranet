<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="signer1" value="${sign.signer1}" />
<!DOCTYPE html>
<script language="javascript">
	function divPrint()
	{
		document.pf.printzone.value = printdiv.innerHTML;
		window.open("PrintPage.htm", "print_open","width=800,height=700,top=0,left=0,noresizable,toolbar=no,status=no,scrollbars=yes,directory=no");
	    // document.body.innerHTML = printdiv.innerHTML;
	
	}
	
	
	// 결재/반려
	function myApp(proc)
	{
	    var f = document.draform;
	    if(proc == 'F')
	    {
	        if( !confirm( '결재하시겠습니까.') ) return;
	        f.action = "signOK.htm";
	    }
	    
	    else if(proc == 'R')
	    {
	        if( !confirm('반려하시겠습니까.') ) return;
	        f.action = 'reject.htm';
	    }
	  
	    
	    f.submit();
	}
</script>
<form name="pf">
	<input type=hidden name="printzone">
</form>
<section class="content-header">
	<h1>
		전자결재 문서 작성 <small>출장 결과 보고서 상세 페이지</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">전자결재</li>
	</ol>
</section>
<section class="content-header">
	<!-- /.box-header -->
	<div class="box">
		<div class="box-header with-border">
			<h3 class="box-title">
				<a class="title_txt" href="#"> 결재 문서함 &gt; 문서조회</a>
			</h3>
		</div>
		<div class="box-body">
		<form name="draform" action="" method="post">
				<input type="hidden" name="docnum" id="docnum"
					value="${param.docnum}">
				<input type="hidden" name="signtype" id="signtype"
					value="${sign.signtype}">
			<table>
				<tbody>

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
														<td><a href="#">
																	<button type="button" class="btn bg-orange margin">목 록</button>
															</a></td>
														<td><a href="javascript:divPrint();">
																	<button type="button" class="btn bg-navy margin">인 쇄</button>
															</a></td>
													</tr>
												</tbody>
											</table>
										</td>
										<td align="right" style="padding: 0 12px 0 0;">
											<table border="0" cellspacing="0" cellpadding="0">
												<tbody>
													<tr>
															<c:set var="useridcheck" value="${sign.userid}" />
															<c:set var="checkid" value="${sessionScope.myemp.userid}" />
															<c:if
																test="${!useridcheck.equals(checkid) && sign.signstate==0}">
																<td><a href="javascript:myApp('F')"><span
																		style="font-size: 20px;"
																		class="label pull-right bg-green"> 결 재</span></a></td>
																<td width="5"></td>
																<td><a href="javascript:myApp('R')"><span
																		style="font-size: 20px;"
																		class="label pull-right bg-red"> 반 려</span></a></td>
															</c:if>
														</tr>
												</tbody>
											</table>
										</td>
									</tr>
								</tbody>
							</table> <!--기능TB END-->
						</td>
					</tr>
					<tr>
						<td align="center" valign="top"
							style="padding: 19px 15px 19px 15px;">
							<div id="printdiv">
							<table width="100%" border="0" cellspacing="0" cellpadding="0"
								class="tbl_appdoc">
								<tbody>
									<tr>
										<td class="dochead" align="center" valign="top"
											style="padding-bottom: 20px;">
											<table width="100%" border="0" frame="void" cellspacing="0"
												cellpadding="0">
												<tbody>
													<tr>
														<td width="120"></td>
														<td class="dochead" align="center" valign="top"
															style="font-size: 30px">출장 결과 보고서</td>
												</tbody>
											</table>
										</td>
									</tr>
									<tr>
										<td align="center" valign="top">

											<table width="100%" border="0" class="tbl_c9c9c9"
												cellspacing="0" cellpadding="0"
												style="table-layout: fixed; border: solid 1px #C0BFC1;">
												<tbody>

													<tr>
														<td width="95" height="30" align="center"
															bgcolor="#E1F9DD" class="m_sp"><b>문서번호</b></td>
														<td width=""
															style="padding: 0 0 0 12px; border: solid 1px #C0BFC1;">${sign.docnum}</td>
														<td width="365" rowspan="3" align="center" valign="top"
															style="border: solid 2px; padding: 0;">

															<table width="100%" cellpadding="0" cellspacing="0"
																class="tbl_c9c9c9"
																style="border: solid 1px; table-layout: fixed;"
																rel="proc_s">
																<tbody>
																	<tr height="20" align="center" bgcolor="#E1F9DD">
																				<td width="7%" rowspan="4"
																					style="border: solid 1px;"><b>결<br> <br>
																						<br>재
																				</b></td>
																				<td width="19%"
																					style="border: 1px solid; padding: 3px 0 0 0;">기안자</td>
																				<td width="19%"
																					style="border: 1px solid; padding: 3px 0 0 0;">
																					<c:forEach var="signer" items="${signerlist}">
																						<c:choose>
																							<c:when test="${sign.signer2 == signer.userid}">
						                                                				${signer.deptcode}
						                                                			</c:when>
																							<c:otherwise>

																							</c:otherwise>
																						</c:choose>
																					</c:forEach>
																				</td>
																				<td width="19%"
																					style="border: 1px solid; padding: 3px 0 0 0;">
																					<c:forEach var="signer" items="${signerlist}">
																						<c:choose>
																							<c:when test="${sign.signer3 == signer.userid}">
						                                                				${signer.deptcode}
						                                                			</c:when>
																							<c:otherwise>

																							</c:otherwise>
																						</c:choose>
																					</c:forEach>
																				</td>
																				<td width="19%"
																					style="border: 1px solid; padding: 3px 0 0 0;">
																					<c:forEach var="signer" items="${signerlist}">
																						<c:choose>
																							<c:when test="${sign.signer4 == signer.userid}">
						                                                				${signer.deptcode}
						                                                			</c:when>
																							<c:otherwise>

																							</c:otherwise>
																						</c:choose>
																					</c:forEach>
																				</td>
																				<td width="19%"
																					style="border: 1px solid; padding: 3px 0 0 0;">
																					<c:forEach var="signer" items="${signerlist}">
																						<c:choose>
																							<c:when test="${sign.signer5 == signer.userid}">
						                                                				${signer.deptcode}
						                                                			</c:when>
																							<c:otherwise>

																							</c:otherwise>
																						</c:choose>
																					</c:forEach>
																				</td>
																			</tr>
																	<tr height="70" align="center">
																				<td style="border-bottom: 1px #eaeaea solid;">
																					<table width="55" class="noborder" cellspacing="0"
																						cellpadding="0">
																						<tbody>
																							<tr>
																								<c:choose>
																									<c:when test="${signline.signok1 == 1}">
																										<td height="42" align="center" valign="middle"
																											background="../resources/img/stamp_bg.gif"
																											style="background-repeat: no-repeat; color: #d30000; font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																											<div class="signer1">${sign.signer1}</div>
																										</td>
																									</c:when>
																									<c:otherwise>
																										<td>${sign.signer1}</td>
																									</c:otherwise>
																								</c:choose>
																							</tr>
																							<tr>
																								<td height="20" align="center"><div
																										class="signer1">
																										<c:forEach var="signer" items="${signerlist}">
																											<c:choose>
																												<c:when
																													test="${sign.signer1 == signer.userid}">
				                                                				${signer.ename}
				                                                		</c:when>
																												<c:otherwise>

																												</c:otherwise>
																											</c:choose>
																										</c:forEach>
																									</div></td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																				<td style="border-bottom: 1px #eaeaea solid;">
																					<table width="55" class="noborder" cellspacing="0"
																						cellpadding="0">
																						<tbody>
																							<tr>
																								<c:choose>
																									<c:when test="${signline.signok2 == 1}">
																										<td height="42" align="center" valign="middle"
																											background="../resources/img/stamp_bg.gif"
																											style="background-repeat: no-repeat; color: #d30000; font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																											${sign.signer2}</td>
																									</c:when>
																									<c:when test="${signline.signok2 == 2}">
																										<td height="42" align="center" valign="middle"
																											style="background-repeat: no-repeat; color: #d30000; font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																											<img src="../resources/img/icon_return.gif">
																										</td>
																									</c:when>
																									<c:otherwise>
																										<td height="42" align="center" valign="middle"
																											style="font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																										</td>
																									</c:otherwise>
																								</c:choose>
																							</tr>
																							<tr>
																								<td height="20" align="center"><c:forEach
																										var="signer" items="${signerlist}">
																										<c:choose>
																											<c:when
																												test="${sign.signer2 == signer.userid}">
				                                                				${signer.ename}
				                                                		</c:when>
																											<c:otherwise>

																											</c:otherwise>
																										</c:choose>
																									</c:forEach></td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																				<td style="border-bottom: 1px #eaeaea solid;">
																					<table width="55" class="noborder" cellspacing="0"
																						cellpadding="0">
																						<tbody>
																							<tr>
																								<c:choose>
																									<c:when test="${signline.signok3 == 1}">
																										<td height="42" align="center" valign="middle"
																											background="../resources/img/stamp_bg.gif"
																											style="background-repeat: no-repeat; color: #d30000; font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																											${sign.signer3}</td>
																									</c:when>
																									<c:when test="${signline.signok3 == 2}">
																										<td height="42" align="center" valign="middle"
																											style="background-repeat: no-repeat; color: #d30000; font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																											<img src="../resources/img/icon_return.gif">
																										</td>
																									</c:when>
																									<c:otherwise>
																										<td height="42" align="center" valign="middle"
																											style="font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																										</td>
																									</c:otherwise>
																								</c:choose>
																							</tr>
																							<tr>
																								<td height="20" align="center"><c:forEach
																										var="signer" items="${signerlist}">
																										<c:choose>
																											<c:when
																												test="${sign.signer3 == signer.userid}">
				                                                				${signer.ename}
				                                                		</c:when>
																											<c:otherwise>

																											</c:otherwise>
																										</c:choose>
																									</c:forEach></td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																				<td style="border-bottom: 1px #eaeaea solid;">
																					<table width="55" class="noborder" cellspacing="0"
																						cellpadding="0">
																						<tbody>
																							<tr>
																								<c:choose>
																									<c:when test="${signline.signok4 == 1}">
																										<td height="42" align="center" valign="middle"
																											background="../resources/img/stamp_bg.gif"
																											style="background-repeat: no-repeat; color: #d30000; font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																											${sign.signer4}</td>
																									</c:when>
																									<c:when test="${signline.signok4 == 2}">
																										<td height="42" align="center" valign="middle"
																											style="background-repeat: no-repeat; color: #d30000; font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																											<img src="../resources/img/icon_return.gif">
																										</td>
																									</c:when>
																									<c:otherwise>
																										<td height="42" align="center" valign="middle"
																											style="font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																										</td>
																									</c:otherwise>
																								</c:choose>
																							</tr>
																							<tr>
																								<td height="20" align="center"><c:forEach
																										var="signer" items="${signerlist}">
																										<c:choose>
																											<c:when
																												test="${sign.signer4 == signer.userid}">
				                                                				${signer.ename}
				                                                		</c:when>
																											<c:otherwise>

																											</c:otherwise>
																										</c:choose>
																									</c:forEach></td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																				<td style="border-bottom: 1px #eaeaea solid;">
																					<table width="55" class="noborder" cellspacing="0"
																						cellpadding="0">
																						<tbody>
																							<tr>
																								<c:choose>
																									<c:when test="${signline.signok5 == 1}">
																										<td height="42" align="center" valign="middle"
																											background="../resources/img/stamp_bg.gif"
																											style="background-repeat: no-repeat; color: #d30000; font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																											${sign.signer5}</td>
																									</c:when>
																									<c:when test="${signline.signok5 == 2}">
																										<td height="42" align="center" valign="middle"
																											style="background-repeat: no-repeat; color: #d30000; font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																											<img src="../resources/img/icon_return.gif">
																										</td>
																									</c:when>
																									<c:otherwise>
																										<td height="42" align="center" valign="middle"
																											style="font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																										</td>
																									</c:otherwise>
																								</c:choose>
																							</tr>
																							<tr>
																								<td height="20" align="center"><c:forEach
																										var="signer" items="${signerlist}">
																										<c:choose>
																											<c:when
																												test="${sign.signer5 == signer.userid}">
				                                                				${signer.ename}
				                                                		</c:when>
																											<c:otherwise>

																											</c:otherwise>
																										</c:choose>
																									</c:forEach></td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>

																	<tr align="center">
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
																	</tr>
																</tbody>
															</table>

															

														</td>
													</tr>
													<tr>
														<td height="30" align="center" bgcolor="#E1F9DD"
															class="m_sp"><b>문서종류</b></td>
														<td
															style="border: solid 1px #C0BFC1; padding: 0 0 0 12px;">출장 결과 보고서</td>
													</tr>
													<tr>
														<td height="30" align="center" bgcolor="#E1F9DD"
															class="m_sp"><b>문서상태</b></td>
														<td
															style="padding: 0 0 0 12px; border: solid 1px #C0BFC1;"><c:choose>
																<c:when test="${sign.signstate == 0}">
                                 			결재 대기중
                                 		</c:when>
																<c:when test="${sign.signstate == 1}">
                                 			결재 완료 
                                 		</c:when>
																<c:when test="${sign.signstate == 2}">
                                 			반려
                                 		</c:when>
															</c:choose></td>
													</tr>
													<tr>
														<td height="30" align="center" bgcolor="#E1F9DD"
															class="m_sp"><b>부서</b></td>
														<td colspan="2"
															style="border: solid 1px #C0BFC1; padding: 0 0 0 12px;">${sign.dept}</td>
													</tr>
													<tr>
														<td height="30" align="center" bgcolor="#E1F9DD"
															class="m_sp"><b>기안자</b></td>
														<td colspan="2"
															style="border: solid 1px #C0BFC1; padding: 0 0 0 12px;">${sign.team}
															${sign.ename} ${sign.posname}</td>
													</tr>
													<tr>
														<td height="30" align="center" bgcolor="#E1F9DD"
															class="m_sp" style="padding: 7px 0 7px 0"><b>기안일</b></td>
														<td colspan="2"
															style="border: solid 1px #C0BFC1; padding: 7px 0 7px 12px;">${sign.draftdate }</td>
													</tr>



													<tr>
														<td height="30" align="center" bgcolor="#E1F9DD"
															class="m_sp"><b>제목</b></td>
														<td colspan="2"
															style="border: solid 1px #C0BFC1; padding: 7px 0 7px 12px;">${sign.signtitle }</td>
													</tr>
												</tbody>
											</table>

											<table width="100%" border="0" class="tbl_c9c9c9"
												cellspacing="0" cellpadding="0">
												<tbody>
													<tr>
														<td height="350" align="left" valign="top"
															style="padding: 8px 8px 5px 8px; border-top: 0">
															<table width="100%" border="0" cellspacing="0"
																cellpadding="0">
																<tbody>
																	<tr>
																		<td width="100%"
																			style="padding: 10px 17px 10px 17px; border: 0">
																			<table id="detail_table" width="100%" cellspacing="0"
																				cellpadding="0" class="tbl_appreport">
																				<tbody>
																					<tr>
																						<td width="120" class="title" align="center"
																							bgcolor="F1F7F7"
																							style="border: solid 1px #C0BFC1;">출장기간</td>

																						<td colspan="2"
																							style="border: solid 1px #C0BFC1; padding: 7px 0 7px 12px;">
																								${biztriprep.bizrepstart} 부터 ~ ${biztriprep.bizrepend } 까지
																							</td>
																					</tr>
																					<tr>
																						<td class="title" bgcolor="F1F7F7" align="center"
																							style="border: solid 1px #C0BFC1;">출장지</td>

																						<td colspan="2"
																							style="border: solid 1px #C0BFC1; padding: 7px 0 7px 12px;">
																								${biztriprep.bizloc}
																							</td>
																					</tr>
																					<tr>
																						<td class="title" bgcolor="F1F7F7" align="center"
																							style="border: solid 1px #C0BFC1;">출장목적</td>

																						<td colspan="2"
																							style="border: solid 1px #C0BFC1; padding: 7px 0 7px 12px;">
																								${biztriprep.bizpur}
																							</td>
																					</tr>
																					<tr>
																						<td class="title" bgcolor="F1F7F7" align="center"
																							style="border: solid 1px #C0BFC1;">인원</td>
																						<td colspan="2"
																							style="border: solid 1px #C0BFC1; padding: 7px 0 7px 12px;">
																								${biztriprep.bizmem}
																							</td>
																					</tr>	
																					<tr>
																						<td class="title" bgcolor="F1F7F7" align="center"
																							style="border: solid 1px #C0BFC1;width: 152px;">출장일정 및 업무내용</td>
																						<td colspan="2"
																							style="border: solid 1px #C0BFC1; padding: 7px 0 7px 12px;">
																								${biztriprep.bizcon}
																							</td>
																					</tr>
																					<!-- <tr>
																						<td class="title" bgcolor="F1F7F7" align="center"
																							style="border: solid 1px #C0BFC1;">업무내용</td>
																					<td colspan="2"
																							style="border: solid 1px #C0BFC1; padding: 7px 0 7px 12px;"></td>
																					</tr> -->
																					<tr>
																						
																					</tr>
																				</tbody>
																			</table>

																			<table width="100%" border="0" class="tbl_c9c9c9"
												cellspacing="0" cellpadding="0">
												<tbody>
													<tr>
														<td height="350" align="left" valign="top"
															style="border-top: 0; padding-top: 15px; padding-bottom: 8px;">
															<table width="100%" border="0" cellspacing="0"
																cellpadding="0">
																<tbody>
																	<tr>
																		<td width="100%" style="border: 0;">
																			<table id="detail_table" width="100%" cellspacing="0"
																				cellpadding="0" class="tbl_appreport">
																				<tbody>


																					<tr>
																						<td align="center" width="22%" class="title"
																							bgcolor="F1F7F7"
																							style="border: solid 1px #C0BFC1;">날짜</td>
																						<td align="center" width="15%" class="title"
																							bgcolor="F1F7F7"
																							style="border: solid 1px #C0BFC1;">지출내역</td>
																						<td align="center" width="10%" class="title"
																							bgcolor="F1F7F7"
																							style="border: solid 1px #C0BFC1;">비고</td>
																						<td align="center" width="10%" class="title"
																							bgcolor="F1F7F7"
																							style="border: solid 1px #C0BFC1;">금액</td>
																						 
																					</tr>
																					<c:forEach var="costlist" items="${biztripcost}">
																						<tr height="27" align="center">
																							<td class="item" rel="fee"
																								style="border: solid 1px #C0BFC1;">${costlist.bizdate}</td>
																							<td class="item" rel="fee"
																								style="border: solid 1px #C0BFC1;">${costlist.bizcostdetail}</td>
																							<td class="item" rel="fee"
																								style="border: solid 1px #C0BFC1;">${costlist.biznote }</td>
																							<td class="item" rel="fee"
																								style="border: solid 1px #C0BFC1;">${costlist.bizcost }</td>
																							 
																						</tr>
																					
																					</c:forEach>
																						
																				</tbody>
																			</table>
																			<table width="100%" class="noborder" cellspacing="0"
																				cellpadding="0">
																				<tbody>
																					<tr height="3">
																						<td></td>
																					</tr>
																				</tbody>
																			</table>
																			<table width="100%" cellspacing="0" cellpadding="0"
																				class="tbl_appreport">
																				<tbody>
																					<tr height="27">
																						<td width="80%" align="center" class="title"
																							bgcolor="F1F7F7"
																							style="border: solid 1px #C0BFC1;">합 계</td>
																						<td width="20%" align="right"
																							style="border: solid 1px #C0BFC1; color: #000000;"
																							class="item"><b>${biztriprep.biztot}</b> 
																						</td>
																					</tr>
																				</tbody>
																			</table>
																			<table width="100%" class="noborder" cellspacing="0"
																				cellpadding="0">
																				<tbody>
																					<tr height="3">
																						<td></td>
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

																		</td>
																	</tr>
																</tbody>
															</table>
														</td>
													</tr>
 
													</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>

									 
								</tbody>
							</table>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			
			</tbody>
			</table>
			</form>
		</div>
	</div>
</section>
 