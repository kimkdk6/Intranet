<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<script language="javascript">
	/* 결재자 메뉴 띄우는 기능 */
	// ============= 첫번째 ======================
	$(function() {
		var dialog;
		var dialog1;
		var dialog2;
		var dialog3;

		dialog = $("#dialog").dialog({
			autoOpen : false,
			width : 500,
			show : {
				effect : "blind",
				duration : 1000
			},

			hide : {
				/* effect : "explode", */
				duration : 1000
			},

			buttons : {
				"추가" : addUser,
				Cancel : function() {
					dialog.dialog("close");
				}
			}
		});

		function addUser() {
			var valid = true;

			if (valid) {
				$("#users")
						.html(
								"<td>"
										+ $('input[name="name"]:checked').val()
										+ "<br><input type='button' id='cancel' value='취소'/> "
										+ "</td>");
				dialog.dialog("close");
			}

			$("#cancel").click(function() {
				$("#users").html("<button id='opener'>지정1</button>");
				// $("#users").html("<button onclick='function().dialog(#dialog)'>지정1</button>");
			});

			return valid;

		}

		// ============== 두번째 =====================
		dialog1 = $("#dialog1").dialog({
			autoOpen : false,
			width : 500,
			show : {
				effect : "blind",
				duration : 1000
			},
			hide : {
				/* effect : "explode", */
				duration : 1000
			},
			buttons : {
				"추가" : addUser1,
				Cancel : function() {
					dialog1.dialog("close");
				}
			}
		});

		function addUser1() {
			var valid = true;

			if (valid) {
				$("#users1").replaceWith(
						"<td>" + $('input[name="name1"]:checked').val()
								+ "</td>");
				dialog1.dialog("close");
			}
			return valid;
		}

		// ================ 세번째 ========================
		dialog2 = $("#dialog2").dialog({
			autoOpen : false,
			width : 500,
			show : {
				effect : "blind",
				duration : 1000
			},
			hide : {
				/* effect : "explode", */
				duration : 1000
			},
			buttons : {
				"추가" : addUser2,
				Cancel : function() {
					dialog2.dialog("close");
				}
			}
		});

		function addUser2() {
			var valid = true;

			if (valid) {
				$("#users2").html(
						"<td>" + $('input[name="name2"]:checked').val()
								+ "</td>");
				dialog2.dialog("close");
			}
			return valid;
		}

		// ================ 세번째 ===================
		dialog3 = $("#dialog3").dialog({
			autoOpen : false,
			width : 500,
			show : {
				effect : "blind",
				duration : 1000
			},
			hide : {
				/* effect : "explode", */
				duration : 1000
			},
			buttons : {
				"추가" : addUser3,
				Cancel : function() {
					dialog3.dialog("close");
				}
			}
		});

		function addUser3() {
			var valid = true;

			if (valid) {
				$("#users3").html(
						"<td>" + $('input[name="name3"]:checked').val()
								+ "</td>");
				dialog3.dialog("close");
			}
			return valid;
		}

		$("#opener").click(function() {
			$("#dialog").dialog("open");
		});
		$("#opener1").click(function() {
			$("#dialog1").dialog("open");
		});
		$("#opener2").click(function() {
			$("#dialog2").dialog("open");
		});
		$("#opener3").click(function() {
			$("#dialog3").dialog("open");
		});
	});
	/* 결재자 메뉴 띄우는 기능 끝*/

	/* 결재자 트리 띄우는 기능 */
	$(function() {
		$("#accordion").accordion({
			heightStyle : "content"
		});
	});
	$(function() {
		$("#accordion1").accordion({
			heightStyle : "content"
		});
	});
	$(function() {
		$("#accordion2").accordion({
			heightStyle : "content"
		});
	});
	$(function() {
		$("#accordion3").accordion({
			heightStyle : "content"
		});
	});
	/* 결재자 트리 띄우는 기능 끝*/
</script>

<section class="content-header">
	<h1>
		전자결재 문서 작성 <small>출장 보고서 작성 페이지</small>
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
															style="font-size: 30px">출장 보고서</td>
													</tr>
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
																	<tr height="20" align="center" bgcolor="#E1F9DD"
																		style="border: solid 1px;">
																		<td width="7%" rowspan="4" style="border: solid 1px;"><b>결<br>
																				<br> <br>재
																		</b></td>
																		<td width="19%"
																			style="border: 1px solid; padding: 3px 0 0 0;">기안자</td>
																		<td width="19%"
																			style="border: 1px solid; padding: 3px 0 0 0;">${sign.signer2}</td>
																		<td width="19%"
																			style="border: 1px solid; padding: 3px 0 0 0;">${sign.signer3}</td>
																		<td width="19%"
																			style="border: 1px solid; padding: 3px 0 0 0;">${sign.signer4}</td>
																		<td width="19%"
																			style="border: 1px solid; padding: 3px 0 0 0;">${sign.signer5}</td>
																	</tr>
																	<tr height="70" align="center">
																		<td>데모사용자</td>
																		<td id="users"
																			style="border-bottom: 1px #eaeaea solid;">
																			<div id="dialog" title="결재자 지정하기">
																				<div id="accordion">
																					<c:forEach items="${dept}" var="d">
																						<h3>${d.deptname}</h3>
																						<div>
																							<c:forEach items="${emp}" var="e">
																								<c:if test="${d.deptcode == e.deptcode}">
																									<c:forEach items="${team}" var="t">
																										<c:if test="${t.teamcode == e.teamcode }">
																											<c:forEach items="${pos}" var="p">
																												<c:if test="${p.poscode == e.poscode}">
																													<i class="fa fa-fw fa-user-plus"></i> 
                                                                                									${t.teamname} ${e.ename} ${p.posname }
                                                                                 									<input
																														type="radio" name="name" id="name"
																														value="${t.teamname} ${e.ename} ${p.posname}">
																													<hr>
																												</c:if>
																											</c:forEach>
																										</c:if>
																									</c:forEach>

																								</c:if>
																							</c:forEach>
																						</div>
																					</c:forEach>


																				</div>
																				<!-- <input type="button" value="완료" onclick="check()"> -->
																			</div>
																			<button id="opener">지정1</button> <!-- <button id="cancel1" >취소</button> -->
																		</td>

																		<td id="users1"
																			style="border-bottom: 1px #eaeaea solid;">
																			<div id="dialog1" title="결재자 지정하기">
																				<div id="accordion1">
																					<c:forEach items="${dept}" var="d">
																						<h3>${d.deptname}</h3>
																						<div>
																							<c:forEach items="${emp}" var="e">
																								<c:if test="${d.deptcode == e.deptcode}">
																									<c:forEach items="${team}" var="t">
																										<c:if test="${t.teamcode == e.teamcode }">
																											<c:forEach items="${pos}" var="p">
																												<c:if test="${p.poscode == e.poscode}">
																													<i class="fa fa-fw fa-user-plus"></i> 
                                                                                 ${t.teamname} ${e.ename} ${p.posname }
                                                                                <input
																														type="radio" name="name1" id="name1"
																														value="${t.teamname} ${e.ename} ${p.posname}">
																													<hr>
																												</c:if>
																											</c:forEach>
																										</c:if>
																									</c:forEach>
																								</c:if>
																							</c:forEach>
																						</div>
																					</c:forEach>
																				</div>
																			</div>
																			<button id="opener1">지정2</button>
																		</td>

																		<td id="users2"
																			style="border-bottom: 1px #eaeaea solid;">
																			<div id="dialog2" title="결재자 지정하기">
																				<div id="accordion2">
																					<c:forEach items="${dept}" var="d">
																						<h3>${d.deptname}</h3>
																						<div>
																							<c:forEach items="${emp}" var="e">
																								<c:if test="${d.deptcode == e.deptcode}">
																									<c:forEach items="${team}" var="t">
																										<c:if test="${t.teamcode == e.teamcode }">
																											<c:forEach items="${pos}" var="p">
																												<c:if test="${p.poscode == e.poscode}">
																													<i class="fa fa-fw fa-user-plus"></i> 
                                                                                 ${t.teamname} ${e.ename} ${p.posname }
                                                                                 <input
																														type="radio" name="name2" id="name2"
																														value="${t.teamname} ${e.ename} ${p.posname}">
																													<hr>
																												</c:if>
																											</c:forEach>
																										</c:if>
																									</c:forEach>
																								</c:if>
																							</c:forEach>
																						</div>
																					</c:forEach>
																				</div>
																			</div>
																			<button id="opener2">지정3</button>
																		</td>

																		<td id="users3"
																			style="border-bottom: 1px #eaeaea solid;">
																			<div id="dialog3" title="결재자 지정하기">
																				<div id="accordion3">
																					<c:forEach items="${dept}" var="d">
																						<h3>${d.deptname}</h3>
																						<div>
																							<c:forEach items="${emp}" var="e">
																								<c:if test="${d.deptcode == e.deptcode}">
																									<c:forEach items="${team}" var="t">
																										<c:if test="${t.teamcode == e.teamcode }">
																											<c:forEach items="${pos}" var="p">
																												<c:if test="${p.poscode == e.poscode}">
																													<i class="fa fa-fw fa-user-plus"></i> 
                                                                                 ${t.teamname} ${e.ename} ${p.posname }
                                                                                 <input
																														type="radio" name="name3" id="name3"
																														value="${t.teamname} ${e.ename} ${p.posname}">
																													<hr>
																												</c:if>
																											</c:forEach>
																										</c:if>
																									</c:forEach>
																								</c:if>
																							</c:forEach>
																						</div>
																					</c:forEach>
																				</div>
																			</div>
																			<button id="opener3">지정3</button>
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
															style="border: solid 1px #C0BFC1; padding: 0 0 0 12px;">출장
															보고서</td>
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
															style="border: solid 1px #C0BFC1; padding: 7px 0 7px 12px;">${sysDate }</td>
													</tr>



													<tr>
														<td height="30" align="center" bgcolor="#E1F9DD"
															class="m_sp"><b>제목</b></td>
														<td colspan="2" style="padding: 0 0 0 2px;"><input
															id="t_subject" name="subject" type="text"
															style="width: 630px;" value=""></td>
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
																		<td width="100%"
																			style="padding: 10px 17px 10px 17px; border: 0;">
																			<table id="detail_table" width="100%" cellspacing="0"
																				cellpadding="0" class="tbl_appreport">
																				<tbody>
																					<tr height="35">
																						<td width="120" class="title" bgcolor="F1F7F7"
																							align="center" style="border: solid 1px #C0BFC1;">기간</td>
																						<td width="" class="item" align="left"
																							style="border: solid 1px #C0BFC1; padding-left: 7px;""><input
																							type="text" name="vafrom" readonly=""
																							class="input_approval" style="width: 85px"
																							maxlength="10" onclick="popUpCalendarYmd(this)"
																							value=""> ~ <input type="text"
																							name="vato" readonly="" class="input_approval"
																							style="width: 85px" maxlength="10"
																							onclick="popUpCalendarYmd(this)" value="">
																						</td>
																					</tr>
																					<td class="title" bgcolor="F1F7F7" align="center"
																						style="border: solid 1px #C0BFC1;">출장지</td>
																					<td class="item" align="left"
																						style="border: solid 1px #C0BFC1; padding-top: 7px; padding-left: 7px; padding-right: 7px;"><textarea
																							name="reason"
																							style="width: 100%; height: 56px; padding: 8px 8px 5px 8px;"></textarea>
																					</td>
																					<tr>
																						<td class="title" bgcolor="F1F7F7" align="center"
																							style="border: solid 1px #C0BFC1;">출장목적</td>
																						<td class="item" align="left"
																							style="border: solid 1px #C0BFC1; padding-top: 7px; padding-left: 7px; padding-right: 7px;"><textarea
																								name="reason"
																								style="width: 100%; height: 56px; padding: 8px 8px 5px 8px;"></textarea>
																						</td>
																					</tr>
																					<tr>
																						<td class="title" bgcolor="F1F7F7" align="center"
																							style="border: solid 1px #C0BFC1;">연락처</td>
																						<td class="item" align="left"
																							style="border: solid 1px #C0BFC1; padding-top: 7px; padding-left: 7px; padding-right: 7px;"><textarea
																								name="reason"
																								style="width: 100%; height: 56px; padding: 8px 8px 5px 8px;"></textarea>
																						</td>
																					</tr>
																					<tr>
																						<td class="title" bgcolor="F1F7F7" align="center"
																							style="border: solid 1px #C0BFC1;">기타사항</td>
																						<td class="item" align="left"
																							style="border: solid 1px #C0BFC1; padding-top: 7px; padding-left: 7px; padding-right: 7px;"><textarea
																								name="reason"
																								style="width: 100%; height: 56px; padding: 8px 8px 5px 8px;"></textarea>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																			<div
																				style="height: 60px; text-align: center; padding-top: 20px;">
																				상기와 같은 사유로 인하여 출장 보고서를 제출하오니 재가바랍니다.</div>
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
												<td><input type="button" value="작성완료" onclick="check()">
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
			<tr>
				<td height="30"></td>
			</tr>
			</tbody>
			</table>
		</div>
	</div>
</section>

</body>
</html>