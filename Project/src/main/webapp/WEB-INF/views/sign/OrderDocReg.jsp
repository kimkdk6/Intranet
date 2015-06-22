<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<script language="javascript">
	function _docprint(docmgno) {
		window
				.open(
						'PrintPage.htm?docnum=' + docmgno,
						"PrintPage",
						'toolbar=0,location=0,directories=0, status=0,menubar=0,scrollbars=yes,resizable=1,width=800,height=600');
	}
</script>

<section class="content-header">
	<h1>
		전자결재 문서 작성 <small>발주서 작성 페이지</small>
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
				<a class="title_txt" href="#"> 받은 결재 문서함 &gt; 미결재 문서 &gt; 문서작성</a>
			</h3>
		</div>
		<div class="box-body">
			<table>
				<tbody>
					<tr>
						<td align="center" valign="top"
							style="padding: 19px 15px 19px 15px;">

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
															style="font-size: 30px">발주서</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
									<tr>
										<td align="center" valign="top">

											<table width="100%" border="0" class="tbl_c9c9c9"
												cellspacing="0" cellpadding="0" style="table-layout: fixed;">
												<tbody>

													<tr>
														<td width="95" height="30" align="center"
															bgcolor="#E1F9DD" class="m_sp"><b>문서번호</b></td>
														<td width="" style="padding: 0 0 0 12px;">${sign.docnum}</td>
														<td width="365" rowspan="3" align="center" valign="top"
															style="padding: 0; border-bottom: 1px #E1F9DD solid;">

															<table width="100%" cellpadding="0" cellspacing="0"
																class="tbl_c9c9c9" style="table-layout: fixed;"
																rel="proc_s">
																<tbody>
																	<tr height="20" align="center" bgcolor="#E1F9DD">
																		<td width="7%" rowspan="4"><b>결<br> <br>
																				<br>재
																		</b></td>
																		<td width="19%"
																			style="border-bottom: 1px #E1F9DD solid; padding: 3px 0 0 0;">기안자</td>
																		<td width="19%"
																			style="border-bottom: 1px #E1F9DD solid; padding: 3px 0 0 0;">${sign.signer2}</td>
																		<td width="19%"
																			style="border-bottom: 1px #E1F9DD solid; padding: 3px 0 0 0;">${sign.signer3}</td>
																		<td width="19%"
																			style="border-bottom: 1px #E1F9DD solid; padding: 3px 0 0 0;">${sign.signer4}</td>
																		<td width="19%"
																			style="border-bottom: 1px #E1F9DD solid; padding: 3px 0 0 0;">${sign.signer5}</td>
																	</tr>
																	<tr height="70" align="center">
																		<td style="border-bottom: 1px #E1F9DD solid;">
																			<table width="55" class="noborder" cellspacing="0"
																				cellpadding="0">
																				<tbody>
																					<tr>
																						<c:choose>
																							<c:when test="${signline.signok1 == 1}">
																								<td height="42" align="center" valign="middle"
																									background="../resources/img/stamp_bg.gif"
																									style="background-repeat: no-repeat; color: #E1F9DD; font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																									${sign.signer1}</td>
																							</c:when>
																							<c:otherwise>
																								<td>${sign.signer1}</td>
																							</c:otherwise>
																						</c:choose>
																					</tr>
																					<tr>
																						<td height="20" align="center">${sign.signer1}</td>
																					</tr>
																				</tbody>
																			</table>
																		</td>
																		<td style="border-bottom: 1px #E1F9DD solid;">
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
																							<c:otherwise>
																								<td height="42" align="center" valign="middle"
																									style="font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																								</td>
																							</c:otherwise>
																						</c:choose>
																					</tr>
																					<tr>
																						<td height="20" align="center">${sign.signer2}</td>
																					</tr>
																				</tbody>
																			</table>
																		</td>
																		<td style="border-bottom: 1px #E1F9DD solid;">
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
																							<c:otherwise>
																								<td height="42" align="center" valign="middle"
																									style="font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																								</td>
																							</c:otherwise>
																						</c:choose>
																					</tr>
																					<tr>
																						<td height="20" align="center">${sign.signer3}</td>
																					</tr>
																				</tbody>
																			</table>
																		</td>
																		<td style="border-bottom: 1px #E1F9DD solid;">
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
																							<c:otherwise>
																								<td height="42" align="center" valign="middle"
																									style="font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																								</td>
																							</c:otherwise>
																						</c:choose>
																					</tr>
																					<tr>
																						<td height="20" align="center">${sign.signer4}</td>
																					</tr>
																				</tbody>
																			</table>
																		</td>
																		<td style="border-bottom: 1px #E1F9DD solid;">
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
																							<c:otherwise>
																								<td height="42" align="center" valign="middle"
																									style="font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
																								</td>
																							</c:otherwise>
																						</c:choose>
																					</tr>
																					<tr>
																						<td height="20" align="center">${sign.signer5}</td>
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
																		<tr height="20" align="center" bgcolor="#E1F9DD">
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
																		<tr height="20" align="center" bgcolor="#E1F9DD">
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
														<td height="30" align="center" bgcolor="#E1F9DD"
															class="m_sp"><b>문서종류</b></td>
														<td style="padding: 0 0 0 12px;">발주서</td>
													</tr>
													<tr>
														<td height="30" align="center" bgcolor="#E1F9DD"
															class="m_sp"><b>문서상태</b></td>
														<td style="padding: 0 0 0 12px;"><c:choose>
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
														<td style="padding: 0 0 0 12px;">${sign.dept}</td>
													</tr>
													<tr>
														<td height="30" align="center" bgcolor="#E1F9DD"
															class="m_sp"><b>기안자</b></td>
														<td style="padding: 0 0 0 12px;">${sign.team}
															${sign.ename} ${sign.posname}</td>
													</tr>
													<tr>
														<td height="30" align="center" bgcolor="#E1F9DD"
															class="m_sp" style="padding: 7px 0 7px 0"><b>기안일</b></td>
														<td style="padding: 7px 0 7px 12px;">${sign.draftdate }</td>
													</tr>



													<tr>
														<td height="30" align="center" bgcolor="#E1F9DD"
															class="m_sp"><b>제목</b></td>
														<td colspan="2" style="padding: 7px 0 7px 12px;">${sign.signtitle }</td>
													</tr>
												</tbody>
											</table>
									<tr>
										<td colspan="3" align="center" valign="top" class="m_sp"
											style="padding: 0; border: 0;">
											<table width="100%" cellpadding="0" cellspacing="0">
												<tbody>
													<tr>
														<td width="100%" style="padding: 0; border-top: 0;">

															<table width="100%" border="0" cellspacing="0"
																cellpadding="0">
																<tbody>
																	<tr>
																		<td width="100%" style="border: 0">
																			<table width="100%" class="noborder" cellspacing="0"
																				cellpadding="0">
																				<tbody>
																					<tr>

																						<td width="50%" align="right"
																							style="padding: 5px 5px 0px 0px; letter-spacing: -1px; font-size: 11px; color: #4f4c4c;">
																							<a href="javascript:addItemLine()"><img
																								src="/img/calendar/bt_plus.gif"
																								align="absmiddle">라인추가</a>
																						</td>
																					</tr>
																				</tbody>
																			</table>

																			<table id="detail_table" width="100%" cellspacing="0"
																				cellpadding="0" class="tbl_appreport">
																				<tbody>

																					<tr>
																						<td align="center" width="22%" class="title" bgcolor="F1F7F7">품명</td>
																						<td align="center"width="15%" class="title" bgcolor="F1F7F7" >단가</td>
																						<td align="center"width="10%" class="title" bgcolor="F1F7F7" >수량</td>
																						<td align="center"width="10%" class="title" bgcolor="F1F7F7" >규격</td>
																						<td align="center"width="23%" class="title" bgcolor="F1F7F7" >비고</td>
																						<td align="center"width="20%" class="title" bgcolor="F1F7F7">금액</td>
																					</tr>
																					<tr height="27" align="center">
																						<td class="item"><input type="text"
																							name="orname[]" class="input_approval"
																							style="width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="amount[]" rel="amount"
																							onblur="constraintValue('FEE',this); calcAmount()"
																							class="input_approval"
																							style="text-align: right; width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="orcount[]" rel="count"
																							onblur="constraintValue('NUMBER',this); calcAmount()"
																							class="input_approval"
																							style="text-align: right; width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="standard[]" class="input_approval"
																							style="width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="etc[]" class="input_approval"
																							style="width: 90%" value=""></td>
																						<td class="item" rel="fee" align="right">0</td>
																					</tr>
																					<tr height="27" align="center">
																						<td class="item"><input type="text"
																							name="orname[]" class="input_approval"
																							style="width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="amount[]" rel="amount"
																							onblur="constraintValue('FEE',this); calcAmount()"
																							class="input_approval"
																							style="text-align: right; width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="orcount[]" rel="count"
																							onblur="constraintValue('NUMBER',this); calcAmount()"
																							class="input_approval"
																							style="text-align: right; width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="standard[]" class="input_approval"
																							style="width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="etc[]" class="input_approval"
																							style="width: 90%" value=""></td>
																						<td class="item" rel="fee" align="right">0</td>
																					</tr>
																					<tr height="27" align="center">
																						<td class="item"><input type="text"
																							name="orname[]" class="input_approval"
																							style="width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="amount[]" rel="amount"
																							onblur="constraintValue('FEE',this); calcAmount()"
																							class="input_approval"
																							style="text-align: right; width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="orcount[]" rel="count"
																							onblur="constraintValue('NUMBER',this); calcAmount()"
																							class="input_approval"
																							style="text-align: right; width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="standard[]" class="input_approval"
																							style="width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="etc[]" class="input_approval"
																							style="width: 90%" value=""></td>
																						<td class="item" rel="fee" align="right">0</td>
																					</tr>
																					<tr height="27" align="center">
																						<td class="item"><input type="text"
																							name="orname[]" class="input_approval"
																							style="width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="amount[]" rel="amount"
																							onblur="constraintValue('FEE',this); calcAmount()"
																							class="input_approval"
																							style="text-align: right; width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="orcount[]" rel="count"
																							onblur="constraintValue('NUMBER',this); calcAmount()"
																							class="input_approval"
																							style="text-align: right; width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="standard[]" class="input_approval"
																							style="width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="etc[]" class="input_approval"
																							style="width: 90%" value=""></td>
																						<td class="item" rel="fee" align="right">0</td>
																					</tr>
																					<tr height="27" align="center">
																						<td class="item"><input type="text"
																							name="orname[]" class="input_approval"
																							style="width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="amount[]" rel="amount"
																							onblur="constraintValue('FEE',this); calcAmount()"
																							class="input_approval"
																							style="text-align: right; width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="orcount[]" rel="count"
																							onblur="constraintValue('NUMBER',this); calcAmount()"
																							class="input_approval"
																							style="text-align: right; width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="standard[]" class="input_approval"
																							style="width: 90%" value=""></td>
																						<td class="item"><input type="text"
																							name="etc[]" class="input_approval"
																							style="width: 90%" value=""></td>
																						<td class="item" rel="fee" align="right">0</td>
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
																			<table width="100%" cellspacing="0" cellpadding="0"
																				class="tbl_appreport">
																				<tbody>
																					<tr height="27" class="chtax">
																						<td width="80%" align="center" class="title">공급가액</td>
																						<td width="20%" align="right"
																							style="padding-right: 18px; color: #000000;"
																							class="item"><span id="detail_amount"
																							style="color: #000000;">0</span></td>
																					</tr>
																					<tr height="27" class="chtax">
																						<td width="80%" align="center" class="title">세
																							액</td>
																						<td width="20%" align="right"
																							style="padding-right: 18px; color: #000000;"
																							class="item"><span id="detail_tax"
																							style="color: #000000;">0</span></td>
																					</tr>
																					<tr height="27">
																						<td width="80%" align="center" class="title">합
																							계</td>
																						<td width="20%" align="right"
																							style="padding-right: 18px; color: #000000;"
																							class="item"><b>\</b> <span
																							id="detail_total"
																							style="font-weight: bold; color: #000000; font-size: 14px;">0</span>
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
																			<table id="detail_table" width="100%" cellspacing="0"
																				cellpadding="0" class="tbl_appreport">
																				<tbody>
																					<tr>
																						<td width="100" class="title" bgcolor="F1F7F7" align="center">기타사항</td>
																						<td class="item" width="" align="left"><textarea
																								name="content"
																								style="width: 100%; height: 126px; padding: 8px 8px 5px 8px;"></textarea></td>
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
				</tbody>
			</table>
		</div>
	</div>
</section>

</body>
</html>