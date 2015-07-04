<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<c:set var="signer1" value="${sign.signer1}" />
<c:set var="curruser" value="${sessionScope.myemp.userid}"/>
<c:set var="signuser" value="${sign.userid}"/>
<c:set var="signst" value="${sign.signstate}"/>
<c:choose>
	<c:when test="${curruser == signuser}">
		<c:choose>
			<c:when test="${signst == 1}">
				<c:set var="returnurl" value="signsList.htm?type=1&cpage=${cpage}"/>
			</c:when>
			<c:when test="${signst == 2}">
				<c:set var="returnurl" value="signsList.htm?type=2&cpage=${cpage}"/>
			</c:when>
			<c:otherwise>
				<c:set var="returnurl" value="SendsignsList.htm?cpage=${cpage}"/>
			</c:otherwise>
		</c:choose>
	</c:when>
	<c:otherwise>
			<c:choose>
				<c:when test="${signst == 1}">
					<c:set var="returnurl" value="ReceiveSignList.htm?type=1&cpage=${cpage}"/>
				</c:when>
				<c:when test="${signst == 0}">
					<c:set var="returnurl" value="ReceiveSignList.htm?type=2&cpage=${cpage}"/>
				</c:when>
			</c:choose>
	</c:otherwise>
</c:choose>
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
		전자결재 문서 작성 <small>휴가계 상세 페이지</small>
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
							
								<!--기능TB START-->
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tbody>
										<tr>
											<td align="left">
												<table border="0" cellspacing="0" cellpadding="0">
													<tbody>
														<tr>
															<td><a href="${returnurl}">
																	<button type="button" class="btn btn-block btn-default btn-flat" style="
    padding-top: 5px;
    padding-bottom: 5px;
    padding-left: 15px;
    padding-right: 15px;
    
">목 록</button>
															</a></td>
															<td><a href="javascript:divPrint();">
																	<button type="button" class="btn btn-block btn-default btn-flat" style="
   padding-top: 5px;
    padding-bottom: 5px;
  padding-left: 11px;
    padding-right: 11px;
    margin-left: 10px">인 쇄</button>
															</a></td>
														</tr>
													</tbody>
												</table>
											</td>
											
										</tr>
									</tbody>
								</table> <!--기능TB END-->
							
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
																<td class="dochead"  valign="top"
																	style="font-size: 30px; padding-left: 330px">휴가계</td>
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
																	bgcolor="#FFFDCD" class="m_sp"><b>문서번호</b></td>
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

																	<form name="modProc" method="post"
																		action="/approval/execute/doc_mod_proc.php">
																		<input type="hidden" name="docmgno" value="9759">
																		<input type="hidden" name="rtn_url"
																			value="/approval/proc_wait_view.php?rtn_url=&amp;docmgno=9759">
																		<table width="100%" class="tbl_c9c9c9" cellpadding="0"
																			cellspacing="0" rel="proc_f" style="display: none;">
																			<tbody>
																				<tr height="20" align="center" bgcolor="#FFFDCD">
																					<td width="7%" rowspan="4"><b>결<br> <br>
																							<br>재
																					</b></td>
																					<td width="19%"
																						style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;">안자</td>

																					<td width="19%"
																						style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
																						id="dept0"></td>

																					<td width="19%"
																						style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
																						id="dept1"></td>

																					<td width="19%"
																						style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
																						id="dept2"></td>

																					<td width="19%"
																						style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
																						id="dept3"></td>
																				</tr>
																				<tr height="70" align="center">
																					<td style="border-bottom: 1px #eaeaea solid;">a1</td>
																					<td style="border-bottom: 1px #eaeaea solid;">a2</td>
																					<td style="border-bottom: 1px #eaeaea solid;">
																						<div id="divCan1" style="display: none">
																							<span id="procName1"></span><br> <a
																								href="javascript:procCancel('1')"><img
																								src="/img/approval/bt_cancel.gif"></a>
																						</div>
																						<div id="divSel1" style="display: block">
																							<a href="javascript:"><img class="bt_procsel"
																								value="1" src="/img/approval/bt_sel.gif"></a>
																						</div>
																					</td>
																					<td style="border-bottom: 1px #eaeaea solid;">
																						<div id="divCan2" style="display: none">
																							<span id="procName2"></span><br> <a
																								href="javascript:procCancel('2')"><img
																								src="/img/approval/bt_cancel.gif"></a>
																						</div>
																						<div id="divSel2" style="display: block">
																							<a href="javascript:"><img class="bt_procsel"
																								value="2" src="/img/approval/bt_sel.gif"></a>
																						</div>
																					</td>
																					<td style="border-bottom: 1px #eaeaea solid;">
																						<div id="divCan3" style="display: none">
																							<span id="procName3"></span><br> <a
																								href="javascript:procCancel('3')"><img
																								src="/img/approval/bt_cancel.gif"></a>
																						</div>
																						<div id="divSel3" style="display: block">
																							<a href="javascript:"><img class="bt_procsel"
																								value="3" src="/img/approval/bt_sel.gif"></a>
																						</div>
																					</td>
																				</tr>
																				<tr height="20" align="center" bgcolor="#FFFDCD">
																					<input type="hidden" name="docproc[]" id="proc4"
																						value="">
																					<td
																						style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
																						id="dept4"></td>
																					<input type="hidden" name="docproc[]" id="proc5"
																						value="">
																					<td
																						style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
																						id="dept5"></td>
																					<input type="hidden" name="docproc[]" id="proc6"
																						value="">
																					<td
																						style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
																						id="dept6"></td>
																					<input type="hidden" name="docproc[]" id="proc7"
																						value="">
																					<td
																						style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
																						id="dept7"></td>
																					<input type="hidden" name="docproc[]" id="proc8"
																						value="">
																					<td
																						style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
																						id="dept8"></td>
																				</tr>
																				<tr height="70" align="center">
																					<td>
																						<div id="divCan4" style="display: none">
																							<span id="procName4"></span><br> <a
																								href="javascript:procCancel('4')"><img
																								src="/img/approval/bt_cancel.gif"></a>
																						</div>
																						<div id="divSel4" style="display: block">
																							<a href="javascript:"><img class="bt_procsel"
																								value="4" src="/img/approval/bt_sel.gif"></a>
																						</div>
																					</td>
																					<td>
																						<div id="divCan5" style="display: none">
																							<span id="procName5"></span><br> <a
																								href="javascript:procCancel('5')"><img
																								src="/img/approval/bt_cancel.gif"></a>
																						</div>
																						<div id="divSel5" style="display: block">
																							<a href="javascript:"><img class="bt_procsel"
																								value="5" src="/img/approval/bt_sel.gif"></a>
																						</div>
																					</td>
																					<td>
																						<div id="divCan6" style="display: none">
																							<span id="procName6"></span><br> <a
																								href="javascript:procCancel('6')"><img
																								src="/img/approval/bt_cancel.gif"></a>
																						</div>
																						<div id="divSel6" style="display: block">
																							<a href="javascript:"><img class="bt_procsel"
																								value="6" src="/img/approval/bt_sel.gif"></a>
																						</div>
																					</td>
																					<td>
																						<div id="divCan7" style="display: none">
																							<span id="procName7"></span><br> <a
																								href="javascript:procCancel('7')"><img
																								src="/img/approval/bt_cancel.gif"></a>
																						</div>
																						<div id="divSel7" style="display: block">
																							<a href="javascript:"><img class="bt_procsel"
																								value="7" src="/img/approval/bt_sel.gif"></a>
																						</div>
																					</td>
																					<td>
																						<div id="divCan8" style="display: none">
																							<span id="procName8"></span><br> <a
																								href="javascript:procCancel('8')"><img
																								src="/img/approval/bt_cancel.gif"></a>
																						</div>
																						<div id="divSel8" style="display: block">
																							<a href="javascript:"><img class="bt_procsel"
																								value="8" src="/img/approval/bt_sel.gif"></a>
																						</div>
																					</td>
																				</tr>
																			</tbody>
																		</table>
																	</form>

																</td>
															</tr>
															<tr>
																<td height="30" align="center" bgcolor="#FFFDCD"
																	class="m_sp"><b>문서종류</b></td>
																<td
																	style="border: solid 1px #C0BFC1; padding: 0 0 0 12px;">휴가계</td>
															</tr>
															<tr>
																<td height="30" align="center" bgcolor="#FFFDCD"
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
																<td height="30" align="center" bgcolor="#FFFDCD"
																	class="m_sp"><b>부서</b></td>
																<td colspan="2"
																	style="border: solid 1px #C0BFC1; padding: 0 0 0 12px;">${sign.dept}</td>
															</tr>
															<tr>
																<td height="30" align="center" bgcolor="#FFFDCD"
																	class="m_sp"><b>기안자</b></td>
																<td colspan="2"
																	style="border: solid 1px #C0BFC1; padding: 0 0 0 12px;">${sign.team}
																	${sign.ename} ${sign.posname}</td>
															</tr>
															<tr>
																<td height="30" align="center" bgcolor="#FFFDCD"
																	class="m_sp" style="padding: 7px 0 7px 0"><b>기안일</b></td>
																<td colspan="2"
																	style="border: solid 1px #C0BFC1; padding: 7px 0 7px 12px;">${sign.draftdate }</td>
															</tr>



															<tr>
																<td height="30" align="center" bgcolor="#FFFDCD"
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
																	style="border-top: 0"">
																	<table width="100%" border="0" cellspacing="0"
																		cellpadding="0">
																		<tbody>
																			<tr>
																				<td width="100%"
																					style="padding-top: 20px; border: 0">
																					<table id="detail_table" width="100%"
																						cellspacing="0" cellpadding="0"
																						class="tbl_appreport">
																						<tbody>
																							<tr height="35">
																								<td width="120" class="title" bgcolor="F1F7F7"
																									align="center"
																									style="border: solid 1px #C0BFC1;">휴가기간</td>
																								<td width="" class="item" align="left"
																									style="border: solid 1px #C0BFC1; padding-left: 10px;">
																									${holidaydoc.holstart} 부터 ${holidaydoc.holend} 까지 &nbsp; <span
																									id="vadate"
																									style="font-weight: bold; color: #000">
																										  </span> <span
																									style="font-weight: bold; color: #000">
																										</span>
																								</td>
																							</tr>
																							<tr height="35">
																								<td class="title" bgcolor="F1F7F7"
																									align="center"
																									style="border: solid 1px #C0BFC1;">종류</td>
																								<td class="item" align="left"
																									style="border: solid 1px #C0BFC1; padding-left: 10px;">
																									<c:choose>
																										<c:when test="${holidaydoc.holtype == 0}">
																											연차
																										</c:when>
																										<c:when test="${holidaydoc.holtype == 1}">
																											공가
																										</c:when>
																										<c:when test="${holidaydoc.holtype == 2}">
																											병가
																										</c:when>
																										<c:when test="${holidaydoc.holtype == 3}">
																											기타
																										</c:when>
																									</c:choose>	
																								</td>
																							</tr>
																							<tr height="35">
																								<td class="title" bgcolor="F1F7F7"
																									align="center"
																									style="border: solid 1px #C0BFC1;">사유</td>
																								<td class="item" align="left"
																									style="border: solid 1px #C0BFC1; padding-left: 10px;">
																									${holidaydoc.holreason}
																								</td>
																							</tr>
																							<tr height="35">
																								<td class="title" bgcolor="F1F7F7"
																									align="center"
																									style="border: solid 1px #C0BFC1;">행선지</td>
																								<td class="item" align="left"
																									style="border: solid 1px #C0BFC1; padding-left: 10px;">
																									${holidaydoc.destination}
																								</td>
																							</tr>
																							<!-- <tr height="35">
																								<td class="title" bgcolor="F1F7F7"
																									align="center"
																									style="border: solid 1px #C0BFC1;">연락처</td>
																								<td class="item" align="left"
																									style="border: solid 1px #C0BFC1; padding-left: 10px;">s</td>
																							</tr> -->
																						</tbody>
																					</table>
																					<div
																						style="height: 60px; text-align: center; padding-top: 20px;">
																						상기와 같은 사유로 인하여 휴가계를 제출하오니 재가바랍니다.</div>
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
								</div>
								<td align="right" style="padding: 0 12px 0 0;">
												<table border="0" cellspacing="0" cellpadding="0">
													<tbody>
														<tr>
															<c:set var="useridcheck" value="${sign.userid}" />
															<c:set var="checkid" value="${sessionScope.myemp.userid}" />
															<c:if
																test="${!useridcheck.equals(checkid) && sign.signstate==0}">
																<td><a href="javascript:myApp('F')"><span
																		style="font-size: 20px; margin-left: 850px; margin-bottom: 50px"
																		class="label pull-right bg-navy"> 결 재</span></a></td>
																<td width="5"></td>
																<td><a href="javascript:myApp('R')"><span
																		style="font-size: 20px; margin-bottom: 50px;"
																		class="label pull-right bg-red"> 반 려</span></a></td>
															</c:if>
														</tr>
													</tbody>
												</table>
											</td>
						<tr>
							<td height="30"></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
</section>
