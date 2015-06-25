<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--본문TB START-->
<form name="doApp" method="post"
	action="/approval/execute/doc_edit_exe.php">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tbody>
			<tr>
				<td height="40">
					<!--타이틀TB START-->
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td width="360" align="left" class="title_txt"
									style="padding: 5px 0 0 14px;">결재문서 작성</td>
								<td width="" align="right" style="padding: 0 12px 0 0;">&nbsp;</td>
							</tr>
						</tbody>
					</table> <!--타이틀TB END-->
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
												<td><a href="javascript:doc_edit_submit('I')"><img
														src="/img/approval/bt_report.gif"></a></td>
												<td width="5"></td>
												<td><a href="javascript:doc_edit_submit('S')"><img
														src="/img/approval/bt_tmp_save.gif"></a></td>
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
				<td align="center" valign="top"
					style="padding: 19px 15px 19px 15px;"><input type="hidden"
					name="passconf"> <input type="hidden" name="dockind"
					value="T"> <!-- mod : 휴가계 최초 수정시 수정 휴가계 작성 위해 수정이 아닌 신규 작성임 -->
					<input type="hidden" name="docmgno" value=""> <input
					type="hidden" name="docnumb" value=""> <input type="hidden"
					name="ingstatus"> <input type="hidden" name="folder"
					value="20150616_30220d16b2b78f8482cc0b3b56455e82"> <input
					type="hidden" name="attFiles" id="attFiles"> <input
					type="hidden" name="tmpFiles" id="tmpFiles"> <input
					type="hidden" name="delFiles"> <input type="hidden"
					id="_deptkeys" name="deptkeys" value=""> <input
					type="hidden" id="_refkeys" name="refkeys" value=""> <input
					type="hidden" id="_alskeys" name="alskeys" value="">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="tbl_appdoc" id="writeForm">
						<tbody>
							<tr>
								<td class="dochead" align="center" valign="top">
									<table width="100%" border="0" frame="void" cellspacing="0"
										cellpadding="0">
										<tbody>
											<tr>
												<td width="120"></td>
												<td class="dochead" align="center" valign="top">출장 결과
													보고서</td>
												<td width="120"><select name="select4" class="sel2"
													style="background-color: #c9eaff;"
													onchange="applyAppLine(this.options[this.selectedIndex].value); this.blur()">
														<option>-- 결재선 선택 --</option>
														<option value="49">영업일지1</option>
														<option value="123">신프로젝트</option>
														<option value="76">\</option>
														<option value="122">PM</option>
														<option value="119">ffff</option>
												</select></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td align="center" valign="top">

									<table width="100%" class="tbl_c9c9c9" cellspacing="0"
										cellpadding="0" style="table-layout: fixed;">
										<tbody>
											<tr>
												<td width="95" height="30" align="center" bgcolor="#f6f6f6"
													class="m_sp"><b>문서번호</b></td>
												<td width="" style="padding: 0 0 0 12px;"></td>
												<td width="365" rowspan="6" align="center" valign="top"
													style="padding: 0; border-bottom: 1px #afafaf solid;">

													<table width="100%" class="tbl_c9c9c9" cellpadding="0"
														cellspacing="0">
														<tbody>
															<tr height="20" align="center" bgcolor="#f6f6f6">
																<td width="7%" rowspan="4"><b>결<br> <br>
																		<br>재
																</b></td>
																<td width="19%"
																	style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;">기안자</td>
																<input type="hidden" name="docproc[]" id="proc0"
																	value="">
																<td width="19%"
																	style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
																	id="dept0"></td>
																<input type="hidden" name="docproc[]" id="proc1"
																	value="">
																<td width="19%"
																	style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
																	id="dept1"></td>
																<input type="hidden" name="docproc[]" id="proc2"
																	value="">
																<td width="19%"
																	style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
																	id="dept2"></td>
																<input type="hidden" name="docproc[]" id="proc3"
																	value="">
																<td width="19%"
																	style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
																	id="dept3"></td>
															</tr>
															<tr height="70" align="center">
																<td style="border-bottom: 1px #eaeaea solid;">관리자</td>
																<td style="border-bottom: 1px #eaeaea solid;">
																	<div id="divCan0" style="display: none">
																		<span id="procName0"></span><br> <a
																			href="javascript:procCancel('0')"><img
																			src="/img/approval/bt_cancel.gif"></a>
																	</div>
																	<div id="divSel0" style="display: block">
																		<a href="javascript:"><img class="bt_procsel"
																			value="0" src="/img/approval/bt_sel.gif"></a>
																	</div>
																</td>
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
															<tr height="20" align="center" bgcolor="#f6f6f6">
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

												</td>
											</tr>
											<tr>
												<td height="30" align="center" bgcolor="#f6f6f6"
													class="m_sp"><b>문서종류</b></td>
												<td style="padding: 0 0 0 12px;">출장 결과 보고서</td>
											</tr>
											<tr>
												<td height="30" align="center" bgcolor="#f6f6f6"
													class="m_sp"><b>문서상태</b></td>
												<td style="padding: 0 0 0 12px;">작성전 문서입니다.</td>
											</tr>
											<tr>
												<td height="30" align="center" bgcolor="#f6f6f6"
													class="m_sp"><b>부 서</b></td>
												<td style="padding: 0 0 0 12px;">연구부문</td>
											</tr>
											<tr>
												<td height="30" align="center" bgcolor="#f6f6f6"
													class="m_sp"><b>기안자</b></td>
												<td style="padding: 0 0 0 12px;">관리자 부장 test</td>
											</tr>
											<tr>
												<td height="30" align="center" bgcolor="#f6f6f6"
													class="m_sp" valign="top" style="padding-top: 7px;"><b>`</b></td>
												<td style="padding: 5 0 0 12px;" valign="top"><input
													type="text" name="reportdt" readonly="" class="input_type2"
													style="width: 85px" maxlength="10"
													onblur="constraintValue('DATEFORMAT',this)"
													onclick="popUpCalendarYmd(this)" value="2015-06-16">
												</td>
											</tr>
											<tr>
												<td height="30" align="center" bgcolor="#f6f6f6"
													class="m_sp"><b>수신부서</b></td>
												<td style="padding: 0 0 0 12px;" colspan="2"><input
													id="_depttext" name="depttext" type="text"
													class="input_type2" style="width: 555px;" readonly="">
													<a href="javascript:"><img id="bt_deptsel"
														src="/img/approval/bt_recieve1.gif" align="absmiddle"></a></td>
											</tr>
											<tr>
												<td height="30" align="center" bgcolor="#f6f6f6"
													class="m_sp"><b>승인 전 참조</b></td>
												<td colspan="2" style="padding: 0 0 0 12px;"><input
													id="_alstext" name="alstext" type="text"
													class="input_type2" style="width: 555px;" readonly="">
													<a href="javascript:"><img id="bt_alssel"
														src="/img/approval/bt_refer1.gif" align="absmiddle"></a></td>
											</tr>
											<tr>
												<td height="30" align="center" bgcolor="#f6f6f6"
													class="m_sp"><b>승인 후 참조</b></td>
												<td colspan="2" style="padding: 0 0 0 12px;"><input
													id="_reftext" name="reftext" type="text"
													class="input_type2" style="width: 555px;" readonly="">
													<a href="javascript:"><img id="bt_refsel"
														src="/img/approval/bt_refer1.gif" align="absmiddle"></a></td>
											</tr>
											<tr>
												<td align="center" bgcolor="#f6f6f6" class="m_sp"><b>파일첨부</b></td>
												<td colspan="2" style="padding: 3px 11px 0px 11px;"><input
													type="file" name="uploadify" id="uploadify" width="60"
													height="20" style="display: none;"> <object
														type="application/x-shockwave-flash"
														data="/js/uploadify.swf" width="60" height="20"
														id="uploadifyUploader" style="visibility: visible;">
														<param name="quality" value="high">
														<param name="wmode" value="opaque">
														<param name="allowScriptAccess" value="sameDomain">
														<param name="flashvars"
															value="uploadifyID=uploadify&amp;pagepath=/approval/&amp;script=/util/uploadify.php&amp;folder=/home/hangroup/www/uploads/20150616_30220d16b2b78f8482cc0b3b56455e82&amp;width=60&amp;height=20&amp;wmode=opaque&amp;method=POST&amp;queueSizeLimit=999&amp;simUploadLimit=1&amp;multi=true&amp;auto=true&amp;fileDataName=Filedata&amp;queueID=fileQueue">
													</object>
													<table width="100%" class="noborder" cellspacing="0"
														cellpadding="0">
														<tbody>
															<tr>
																<td id="fileQueue"></td>
															</tr>
														</tbody>
													</table>
													<table width="100%" class="noborder" cellspacing="0"
														cellpadding="0" id="attachWrap">
														<tbody>
															<tr>
																<td id="attachList"></td>
															</tr>
														</tbody>
													</table></td>
											</tr>
											<tr>
												<td height="30" align="center" bgcolor="#f6f6f6"
													class="m_sp"><b>제 목</b></td>
												<td colspan="2" style="padding: 0 0 0 12px;"><input
													id="t_subject" name="subject" type="text"
													class="input_type2" style="width: 630px;" value=""></td>
											</tr>
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
																				<td width="100%"
																					style="padding: 10px 17px 10px 17px; border: 0;">
																					<table width="100%" cellspacing="0" cellpadding="0"
																						class="tbl_appreport">
																						<tbody>
																							<tr height="35">
																								<td width="120" class="title">출장기간</td>
																								<td width="" class="item" align="left"><input
																									type="text" name="bufrom" readonly=""
																									class="input_approval" style="width: 75px"
																									maxlength="10" onclick="popUpCalendarYmd(this)"
																									value=""> ~ <input type="text"
																									name="buto" readonly="" class="input_approval"
																									style="width: 75px" maxlength="10"
																									onclick="popUpCalendarYmd(this)" value="">
																									&nbsp; <span id="vadate"
																									style="font-weight: bold; color: #000">
																								</span></td>
																							</tr>
																							<tr>
																								<td class="title">출장지</td>
																								<td class="item" align="left"><textarea
																										name="whereto"
																										style="width: 100%; height: 56px; padding: 8px 8px 5px 8px;"></textarea>
																								</td>
																							</tr>
																							<tr>
																								<td class="title">출장목적</td>
																								<td class="item" align="left"><textarea
																										name="reason"
																										style="width: 100%; height: 56px; padding: 8px 8px 5px 8px;"></textarea>
																								</td>
																							</tr>
																							<tr>
																								<td class="title">인원 및 연락처</td>
																								<td class="item" align="left"><textarea
																										name="contact"
																										style="width: 100%; height: 56px; padding: 8px 8px 5px 8px;"></textarea>
																								</td>
																							</tr>
																							<tr>
																								<td class="title">출장일정 및 업무내용</td>
																								<td class="item" align="left"><textarea
																										name="diary"
																										style="width: 100%; height: 386px; padding: 8px 8px 5px 8px;"></textarea>
																								</td>
																							</tr>
																							<!-- tr>
          <td class="title">업무내용</td>
          <td class="item" align="left"><textarea name="etc" style="width:100%;height:126px;padding:8px 8px 5px 8px;"></textarea></td>
        </tr -->
																						</tbody>
																					</table> <br>
																					<table width="100%" class="noborder"
																						cellspacing="0" cellpadding="0">
																						<tbody>
																							<tr>
																								<td width="50%" align="left"
																									style="padding: 5px 5px 0px 0px;"><font
																									color="#000">- 출장 경비 내역</font></td>
																								<td width="50%" align="right"
																									style="padding: 5px 5px 0px 0px; letter-spacing: -1px; font-size: 11px; color: #4f4c4c;">
																									<a href="javascript:addItemLine()"><img
																										src="/img/calendar/bt_plus.gif"
																										align="absmiddle">라인추가</a>
																								</td>
																							</tr>
																						</tbody>
																					</table>

																					<table id="detail_table" width="100%"
																						cellspacing="0" cellpadding="0"
																						class="tbl_appreport">
																						<tbody>
																							<tr>
																								<td width="100" class="title">날짜</td>
																								<td width="" class="title">지출내역</td>
																								<td width="200" class="title">비고</td>
																								<td width="150" class="title">금액</td>
																							</tr>
																							<tr height="27" align="center">
																								<td class="item"><input type="text"
																									name="usedt[]" readonly=""
																									class="input_approval" style="width: 75px"
																									maxlength="10"
																									onblur="constraintValue('DATEFORMAT',this)"
																									onclick="popUpCalendarYmd(this)" value="">
																								</td>
																								<td class="item"><input type="text"
																									name="body[]" class="input_approval"
																									style="width: 90%" value=""></td>
																								<td class="item"><input type="text"
																									name="etc[]" class="input_approval"
																									style="width: 90%" value=""></td>
																								<td class="item"><input type="text"
																									rel="amount" name="amount[]"
																									onblur="constraintValue('FEE',this); calcAmount()"
																									class="input_approval"
																									style="text-align: right; width: 90%" value=""></td>
																							</tr>
																							<tr height="27" align="center">
																								<td class="item"><input type="text"
																									name="usedt[]" readonly=""
																									class="input_approval" style="width: 75px"
																									maxlength="10"
																									onblur="constraintValue('DATEFORMAT',this)"
																									onclick="popUpCalendarYmd(this)" value="">
																								</td>
																								<td class="item"><input type="text"
																									name="body[]" class="input_approval"
																									style="width: 90%" value=""></td>
																								<td class="item"><input type="text"
																									name="etc[]" class="input_approval"
																									style="width: 90%" value=""></td>
																								<td class="item"><input type="text"
																									rel="amount" name="amount[]"
																									onblur="constraintValue('FEE',this); calcAmount()"
																									class="input_approval"
																									style="text-align: right; width: 90%" value=""></td>
																							</tr>
																							<tr height="27" align="center">
																								<td class="item"><input type="text"
																									name="usedt[]" readonly=""
																									class="input_approval" style="width: 75px"
																									maxlength="10"
																									onblur="constraintValue('DATEFORMAT',this)"
																									onclick="popUpCalendarYmd(this)" value="">
																								</td>
																								<td class="item"><input type="text"
																									name="body[]" class="input_approval"
																									style="width: 90%" value=""></td>
																								<td class="item"><input type="text"
																									name="etc[]" class="input_approval"
																									style="width: 90%" value=""></td>
																								<td class="item"><input type="text"
																									rel="amount" name="amount[]"
																									onblur="constraintValue('FEE',this); calcAmount()"
																									class="input_approval"
																									style="text-align: right; width: 90%" value=""></td>
																							</tr>
																							<tr height="27" align="center">
																								<td class="item"><input type="text"
																									name="usedt[]" readonly=""
																									class="input_approval" style="width: 75px"
																									maxlength="10"
																									onblur="constraintValue('DATEFORMAT',this)"
																									onclick="popUpCalendarYmd(this)" value="">
																								</td>
																								<td class="item"><input type="text"
																									name="body[]" class="input_approval"
																									style="width: 90%" value=""></td>
																								<td class="item"><input type="text"
																									name="etc[]" class="input_approval"
																									style="width: 90%" value=""></td>
																								<td class="item"><input type="text"
																									rel="amount" name="amount[]"
																									onblur="constraintValue('FEE',this); calcAmount()"
																									class="input_approval"
																									style="text-align: right; width: 90%" value=""></td>
																							</tr>
																							<tr height="27" align="center">
																								<td class="item"><input type="text"
																									name="usedt[]" readonly=""
																									class="input_approval" style="width: 75px"
																									maxlength="10"
																									onblur="constraintValue('DATEFORMAT',this)"
																									onclick="popUpCalendarYmd(this)" value="">
																								</td>
																								<td class="item"><input type="text"
																									name="body[]" class="input_approval"
																									style="width: 90%" value=""></td>
																								<td class="item"><input type="text"
																									name="etc[]" class="input_approval"
																									style="width: 90%" value=""></td>
																								<td class="item"><input type="text"
																									rel="amount" name="amount[]"
																									onblur="constraintValue('FEE',this); calcAmount()"
																									class="input_approval"
																									style="text-align: right; width: 90%" value=""></td>
																							</tr>
																						</tbody>
																					</table>
																					<table width="100%" class="noborder"
																						cellspacing="0" cellpadding="0">
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
																								<td width="" align="center" class="title">금액
																									합계</td>
																								<td width="323" align="right"
																									style="padding-right: 18px; color: #000000;"
																									class="item"><b>\</b> <span
																									id="detail_amount"
																									style="font-weight: bold; color: #000000; font-size: 14px;">0</span>
																								</td>
																							</tr>
																						</tbody>
																					</table>


																					<div
																						style="height: 60px; text-align: center; padding-top: 20px;">
																						위와 같이 출장 결과를 보고합니다.</div>
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
		</tbody>
	</table>
</form>
<!--본문TB END-->