<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Date d1 = new Date();
	SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
	String strdate = sdf1.format(d1);
	System.out.println("오늘의 날짜: "+strdate);
	
%>
<c:set var="empid" value="${sessionScope.myemp.userid}" />
<c:set var="todaydate" value="<%=strdate%>" />
<!DOCTYPE html>
<style>
	#dialog {
		padding: 10px;
    	width: 350px;
    	height: 220px;
	}
	#dialog1 {
		padding: 10px;
    	width: 350px;
    	height: 220px;
	}
	#dialog2 {
		padding: 10px;
    	width: 350px;
    	height: 220px;
	}
	#dialog3 {
		padding: 10px;
    	width: 350px;
    	height: 220px;
	}
</style>

<script type="text/javascript">
		//sign 유효성 검사
		 function addsign(){
			
			 if ($("#vadate").text().length > 5) {
					alert("휴가 날짜를 다시 선택하세요");
					signform.bizstart.focus();
					return false;
				}
				
			
			if (!signform.signtitle.value) {
				alert("문서 제목을 입력하세요.");
				signform.signtitle.focus();
				return false;
			}
			
			if (!signform.bizstart.value) {
				alert("출장 시작 날짜를 선택하세요.");
				signform.bizstart.focus();
				return false;
			}
			
			if (!signform.bizend.value) {
				alert("출장 종료 날짜를 선택하세요.");
				signform.bizend.focus();
				return false;
			}
			
			if (!signform.bizloc.value) {
				alert("출장지를 입력하세요.");
				signform.bizloc.focus();
				return false;
			}
			
			if (!signform.bizpur.value) {
				alert("출장 목적을 입력하세요.");
				signform.bizpur.focus();
				return false;
			}
		    if ($("#signer2").length < 1) {
				alert("결재자를 선택하세요");
				signform.users.focus();
				return false;
			}
		    
		    signform.submit();
		    alert("전자 결재 문서 작성이 완료되었습니다.");
		} 
		
		
</script>
<script language="javascript">

	/* 결재자 메뉴 띄우는 기능 */
	// ============= 첫번째 ======================
	$(function() {
		

		// 자신을 선택 못하게
		$('input:radio[name="name"]').click(function() {

			var res = $(this).val().split(",");
			console.log("res[0]: " + res[0]);
			if (res[0].trim() == '${empid}') {
				alert("본인은 결재자에 포함될 수 없습니다.");
				return false;
			}
			return;

		});

		$('input:radio[name="name1"]').click(function() {

			var res = $(this).val().split(",");
			console.log("res[0]: " + res[0]);
			if (res[0].trim() == '${empid}') {
				alert("본인은 결재자에 포함될 수 없습니다.");
				return false;
			}
			return;

		});

		$('input:radio[name="name2"]').click(function() {

			var res = $(this).val().split(",");
			console.log("res[0]: " + res[0]);
			if (res[0].trim() == '${empid}') {
				alert("본인은 결재자에 포함될 수 없습니다.");
				return false;
			}
			return;

		});

		$('input:radio[name="name3"]').click(function() {

			var res = $(this).val().split(",");
			console.log("res[0]: " + res[0]);
			if (res[0].trim() == '${empid}') {
				alert("본인은 결재자에 포함될 수 없습니다.");
				return false;
			}
			return;

		});

		var dialog;
		var dialog1;
		var dialog2;
		var dialog3;

		$("#cancel").hide();
		$("#cancel1").hide();
		$("#cancel2").hide();
		$("#cancel3").hide();
		dialog = $("#dialog").dialog({
			autoOpen : false,
			width : 500,
			modal: true,
			show : {
				effect : "blind",
				duration : 1000
			},

			hide : {
				/*  effect : "explode",  */
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

				var res = $('input[name="name"]:checked').val().split(",");
				var checkedvalpos = res[2];
				var checkedvalname = res[1] + " 님";
				var checkedvalid = res[0];
				console.log("아이디1: " + checkedvalid.trim());

				$("#opener").hide();
				$("#cancel").show();
				$("#dept0")
						.html("<div id='dept0_'>" + checkedvalpos + "</div>");
				$("#users")
						.prepend(
								"<td id='signer_1'>"
										+ checkedvalname
										+ "<input type='hidden' name='signer2' id='signer2' value='"
										+ checkedvalid.trim() + "'></td>");

				dialog.dialog("close");

			}

			$("#cancel").click(function() {
				$(this).hide('fast', function() {
					$("#signer_1").remove();
					$("#signer2").remove();
					$("#dept0_").remove();
					$("#opener").show();
				});

			});

			return valid;

		}

		// ============== 두번째 =====================
		dialog1 = $("#dialog1").dialog({
			autoOpen : false,
			width : 500,
			modal: true,
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
				var res = $('input[name="name1"]:checked').val().split(",");
				var checkedvalpos = res[2];
				var checkedvalname = res[1] + " 님";
				var checkedvalid = res[0];
				console.log("아이디2: " + checkedvalid.trim());
				$("#opener1").hide();
				$("#cancel1").show();
				$("#dept1")
						.html("<div id='dept1_'>" + checkedvalpos + "</div>");
				$("#users1")
						.prepend(
								"<td id='signer_2'>"
										+ checkedvalname
										+ "<input type='hidden' name='signer3' id='signer3' value='"
										+ checkedvalid.trim() + "'></td>");

				dialog1.dialog("close");
			}

			$("#cancel1").click(function() {
				$(this).hide('fast', function() {
					$("#signer_2").remove();
					$("#signer3").remove();
					$("#dept1_").remove();
					$("#opener1").show();
				});

			});

			return valid;
		}

		// ================ 세번째 ========================
		dialog2 = $("#dialog2").dialog({
			autoOpen : false,
			width : 500,
			modal: true,
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
				var res = $('input[name="name2"]:checked').val().split(",");
				var checkedvalpos = res[2];
				var checkedvalname = res[1] + " 님";
				var checkedvalid = res[0];
				console.log("아이디3: " + checkedvalid.trim());
				$("#opener2").hide();
				$("#cancel2").show();
				$("#dept2")
						.html("<div id='dept2_'>" + checkedvalpos + "</div>");
				$("#users2")
						.prepend(
								"<td id='signer_3'>"
										+ checkedvalname
										+ "<input type='hidden' name='signer4' id='signer4' value='"
										+ checkedvalid.trim() + "'></td>");

				dialog2.dialog("close");
			}

			$("#cancel2").click(function() {
				$(this).hide('fast', function() {
					$("#signer_3").remove();
					$("#signer4").remove();
					$("#dept2_").remove();
					$("#opener2").show();
				});

			});

			return valid;
		}

		// ================ 세번째 ===================
		dialog3 = $("#dialog3").dialog({
			autoOpen : false,
			width : 500,
			modal: true,
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
				var res = $('input[name="name3"]:checked').val().split(",");
				var checkedvalpos = res[2];
				var checkedvalname = res[1] + " 님";
				var checkedvalid = res[0];
				console.log("아이디4: " + checkedvalid.trim());
				$("#opener3").hide();
				$("#cancel3").show();
				$("#dept3")
						.html("<div id='dept3_'>" + checkedvalpos + "</div>");
				$("#users3")
						.prepend(
								"<td id='signer_4'>"
										+ checkedvalname
										+ "<input type='hidden' name='signer5' id='signer5' value='"
										+ checkedvalid.trim() + "'></td>");

				dialog3.dialog("close");
			}

			$("#cancel3").click(function() {
				$(this).hide('fast', function() {
					$("#signer_4").remove();
					$("#signer5").remove();
					$("#dept3_").remove();
					$("#opener3").show();
				});

			});

			return valid;
		}

		$("#opener").click(function() {
			$("#dialog").dialog("open");
		});
		$("#opener1").click(function() {
			if ($("#signer2").length < 1) {
				alert("이전 결재자를 선택하세요");
				return false;
			}
			$("#dialog1").dialog("open");
			
		});
		$("#opener2").click(function() {
			if ($("#signer2").length < 1 || $("#signer3").length < 1) {
				alert("이전 결재자를 선택하세요");
				return false;
			}
			$("#dialog2").dialog("open");
		});
		$("#opener3").click(function() {
			if ($("#signer2").length < 1 || $("#signer3").length < 1 || $("#signer4").length < 1) {
				alert("이전 결재자를 선택하세요");
				return false;
			}
			$("#dialog3").dialog("open");
		});
	});
	/* 결재자 메뉴 띄우는 기능 끝*/

	/* 결재자 트리 띄우는 기능 */
	$(function() {
		$("#accordion").accordion({
			heightStyle : "fill"
		});
	});
	$(function() {
		$( "#dialog" ).resizable({
			minHeight: 100,
	      	minWidth: 100,
	      	resize: function() {
	      		$( "#accordion" ).accordion( "refresh" );
	      	}
	    });
	});
	
	
	$(function() {
		$("#accordion1").accordion({
			heightStyle : "fill"
		});
	});
	$(function() {
		$( "#dialog1" ).resizable({
			minHeight: 100,
	      	minWidth: 100,
	      	resize: function() {
	      		$( "#accordion1" ).accordion( "refresh" );
	      	}
	    });
	});
	
	
	$(function() {
		$("#accordion2").accordion({
			heightStyle : "fill"
		});
	});
	$(function() {
		$( "#dialog2" ).resizable({
			minHeight: 100,
	      	minWidth: 100,
	      	resize: function() {
	      		$( "#accordion2" ).accordion( "refresh" );
	      	}
	    });
	});
	
	
	$(function() {
		$("#accordion3").accordion({
			heightStyle : "fill"
		});
	});
	$(function() {
		$( "#dialog3" ).resizable({
			minHeight: 100,
	      	minWidth: 100,
	      	resize: function() {
	      		$( "#accordion3" ).accordion( "refresh" );
	      	}
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
				<a class="title_txt" href="#"> 결재 문서 작성 &gt; 출장 신청서 &gt; 문서작성</a>
			</h3>
		</div>
		<div class="box-body">
			<form name="signform" action="" method="post"
				enctype="multipart/form-data">
				<input type="hidden" id="signtype" name="signtype" value="4">
				<input type="hidden" id="dept" name="dept"
					value="${sessionScope.dept}"> <input type="hidden"
					id="team" name="team" value="${sessionScope.team}"> <input
					type="hidden" id="ename" name="ename"
					value="${sessionScope.myemp.ename}"> <input type="hidden"
					id="posname" name="posname" value="${sessionScope.pos}">
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
															<td class="dochead" valign="top"
																style="font-size: 30px; padding-left: 400px">출장 보고서</td>
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
																		<tr height="20" align="center" bgcolor="#E1F9DD"
																			style="border: solid 1px;">
																			<td width="7%" rowspan="4" style="border: solid 1px;"><b>결<br>
																					<br> <br>재
																			</b></td>
																			<td width="19%"
																				style="border: 1px solid; padding: 3px 0 0 0;">기안자</td>
																			<td width="19%" id="dept0"
																				style="border: 1px solid; padding: 3px 0 0 0;">
																			</td>
																			<td width="19%" id="dept1"
																				style="border: 1px solid; padding: 3px 0 0 0;">
																			</td>
																			<td width="19%" id="dept2"
																				style="border: 1px solid; padding: 3px 0 0 0;">
																			</td>
																			<td width="19%" id="dept3"
																				style="border: 1px solid; padding: 3px 0 0 0;">
																			</td>
																		</tr>
																		<tr height="70" align="center">
																			<td>${sessionScope.myemp.ename}</td>
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
																														<input type="radio" name="name" id="name"
																															value="${e.userid},${e.ename},${p.posname}">
																														<i class="fa fa-fw fa-user-plus"></i> 
                                                                                 	${t.teamname} ${e.ename} ${p.posname}
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

																				</div> <!--  <button id="opener">지정1</button> --> <input
																				type="button" id="opener" class="btn btn-default" style="padding-left: 3px;padding-right: 3px;" value="지정1" /> <!-- <button id="cancel1" >취소</button> -->
																				<input type='button' id='cancel'class="btn btn-default" style="padding-left: 3px;padding-right: 3px;" value='취소' />
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
																														<input type="radio" name="name1"
																															id="name1"
																															value="${e.userid},${e.ename},${p.posname}">
																														<i class="fa fa-fw fa-user-plus"></i> 
                                                                                 ${t.teamname} ${e.ename} ${p.posname}
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
																				</div> <input type="button" id="opener1" value="지정2" class="btn btn-default" style="padding-left: 3px;padding-right: 3px;"/> <input
																				type='button' id='cancel1' value='취소' class="btn btn-default" style="padding-left: 3px;padding-right: 3px;"/>
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
																														<input type="radio" name="name2"
																															id="name2"
																															value="${e.userid},${e.ename},${p.posname}">
																														<i class="fa fa-fw fa-user-plus"></i> 
                                                                                 ${t.teamname} ${e.ename} ${p.posname }
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
																				</div> <input type="button" id="opener2" value="지정3" class="btn btn-default" style="padding-left: 3px;padding-right: 3px;"/> <input
																				type='button' id='cancel2' value='취소' class="btn btn-default" style="padding-left: 3px;padding-right: 3px;"/>
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
																														<input type="radio" name="name3"
																															id="name3"
																															value="${e.userid},${e.ename},${p.posname}">
																														<i class="fa fa-fw fa-user-plus"></i> 
                                                                                 ${t.teamname} ${e.ename} ${p.posname }
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
																				</div> <input type="button" id="opener3" value="지정4" class="btn btn-default" style="padding-left: 3px;padding-right: 3px;"/> <input
																				type='button' id='cancel3' value='취소' class="btn btn-default" style="padding-left: 3px;padding-right: 3px;"/>
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
															<td height="30" align="center" bgcolor="#FFFDCD"
																class="m_sp"><b>문서종류</b></td>
															<td
																style="border: solid 1px #C0BFC1; padding: 0 0 0 12px;">출장
																보고서</td>
														</tr>
														<tr>
															<td height="30" align="center" bgcolor="#FFFDCD"
																class="m_sp"><b>문서상태</b></td>
															<td
																style="padding: 0 0 0 12px; border: solid 1px #C0BFC1;">
																작성전 문서입니다.</td>
														</tr>
														<tr>
															<td height="30" align="center" bgcolor="#FFFDCD"
																class="m_sp"><b>부서</b></td>
															<td colspan="2"
																style="border: solid 1px #C0BFC1; padding: 0 0 0 12px;">
																${sessionScope.dept}</td>
														</tr>
														<tr>
															<td height="30" align="center" bgcolor="#FFFDCD"
																class="m_sp"><b>기안자</b></td>
															<td colspan="2"
																style="border: solid 1px #C0BFC1; padding: 0 0 0 12px;">
																<c:set var="empname" value="${sessionScope.myemp.ename}" />
																${sessionScope.team} ${empname} ${sessionScope.pos}
															</td>
														</tr>
														<tr>
															<td height="30" align="center" bgcolor="#FFFDCD"
																class="m_sp" style="padding: 7px 0 7px 0"><b>기안일</b></td>
															<td colspan="2"
																style="border: solid 1px #C0BFC1; padding: 7px 0 7px 12px;">${todaydate}</td>
														</tr>



														<tr>
															<td height="30" align="center" bgcolor="#FFFDCD"
																class="m_sp"><b>제목</b></td>
															<td colspan="2" style="padding: 0 0 0 2px;"><input
																id="signtitle" name="signtitle" type="text"
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
																				style="padding-top:50px; border: 0;">
																				<table id="detail_table" width="100%"
																					cellspacing="0" cellpadding="0"
																					class="tbl_appreport">
																					<tbody>
																						<tr height="35">
																							<td width="120" class="title" bgcolor="F1F7F7"
																								align="center"
																								style="border: solid 1px #C0BFC1;">기간</td>
																							<td width="" class="item" align="left"
																								style="border: solid 1px #C0BFC1; padding-left: 7px;"">
																								<input
																								type="text" name="bizstart" id="bizstart"
																								readonly="" class="input_approval"
																								style="width: 200px" maxlength="10">
																								~ <input type="text" name="bizend" id="bizend"
																								readonly="" class="input_approval"
																								style="width: 200px" maxlength="10">
																								<span id="vadate"></span>
																							</td>
																						</tr>
																						<td class="title" bgcolor="F1F7F7" align="center"
																							style="border: solid 1px #C0BFC1;">출장지</td>
																						<td class="item" align="left"
																							style="border: solid 1px #C0BFC1; padding-top: 7px; padding-left: 7px; padding-right: 7px;"><textarea
																								name="bizloc" id="bizloc"
																								style="width: 100%; height: 56px; padding: 8px 8px 5px 8px;"></textarea>
																						</td>
																						<tr>
																							<td class="title" bgcolor="F1F7F7" align="center"
																								style="border: solid 1px #C0BFC1;">출장목적</td>
																							<td class="item" align="left"
																								style="border: solid 1px #C0BFC1; padding-top: 7px; padding-left: 7px; padding-right: 7px;"><textarea
																									name="bizpur" id="bizpur"
																									style="width: 100%; height: 56px; padding: 8px 8px 5px 8px;"></textarea>
																							</td>
																						</tr>
																						<tr>
																							<td class="title" bgcolor="F1F7F7" align="center"
																								style="border: solid 1px #C0BFC1;">기타사항</td>
																							<td class="item" align="left"
																								style="border: solid 1px #C0BFC1; padding-top: 7px; padding-left: 7px; padding-right: 7px;"><textarea
																									name="signnote" id="signnote"
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
			</form>
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
												<td><input type="button" class="btn bg-navy margin" value="작성완료"
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
			<tr>
				<td height="30"></td>
			</tr>
			</tbody>

			</table>

		</div>
	</div>
</section>
<script type="text/javascript">

	$(function() {
		var dtNow = new Date();
		$( "#bizstart" ).datepicker({
			changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
	        changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
	        minDate: dtNow, // 현재날짜로부터 100년이전까지 년을 표시한다.
	        nextText: '다음 달', // next 아이콘의 툴팁.
	        prevText: '이전 달', // prev 아이콘의 툴팁.
	        numberOfMonths: [1,1], // 한번에 얼마나 많은 월을 표시할것인가. [2,3] 일 경우, 2(행) x 3(열) = 6개의 월을 표시한다.
	        yearRange: 'c-99:c+100', // 년도 선택 셀렉트박스를 현재 년도에서 이전, 이후로 얼마의 범위를 표시할것인가.
	        currentText: '오늘 날짜' , // 오늘 날짜로 이동하는 버튼 패널
	        closeText: '닫기',  // 닫기 버튼 패널
	        dateFormat: "yy-mm-dd", // 텍스트 필드에 입력되는 날짜 형식.
	        showAnim: "blind", //애니메이션을 적용한다.
	        showMonthAfterYear: true , // 월, 년순의 셀렉트 박스를 년,월 순으로 바꿔준다. 
	        dayNamesMin: ['일','월', '화', '수', '목', '금', '토'], // 요일의 한글 형식.
	        monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], 
		    onClose: function( selectedDate ) {
		        $( "#bizend" ).datepicker( "option", "minDate", selectedDate );
		      }
		});
		
		$( "#bizend" ).datepicker({
			changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
	        changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
	        minDate: '-100y', // 현재날짜로부터 100년이전까지 년을 표시한다.
	        nextText: '다음 달', // next 아이콘의 툴팁.
	        prevText: '이전 달', // prev 아이콘의 툴팁.
	        numberOfMonths: [1,1], // 한번에 얼마나 많은 월을 표시할것인가. [2,3] 일 경우, 2(행) x 3(열) = 6개의 월을 표시한다.
	        yearRange: 'c-99:c+100', // 년도 선택 셀렉트박스를 현재 년도에서 이전, 이후로 얼마의 범위를 표시할것인가.
	        currentText: '오늘 날짜' , // 오늘 날짜로 이동하는 버튼 패널
	        closeText: '닫기',  // 닫기 버튼 패널
	        dateFormat: "yy-mm-dd", // 텍스트 필드에 입력되는 날짜 형식.
	        showAnim: "blind", //애니메이션을 적용한다.
	        showMonthAfterYear: true , // 월, 년순의 셀렉트 박스를 년,월 순으로 바꿔준다. 
	        dayNamesMin: ['일','월', '화', '수', '목', '금', '토'], // 요일의 한글 형식.
	        monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		    onClose: function( selectedDate ) {
		        $( "#bizstart" ).datepicker( "option", "maxDate", selectedDate );
		        }
		}); 
		
		$('#bizend').change(function(){
			console.log($('#bizstart').val());
			console.log($(this).val());
			
			$.ajax({
				url : "<%=request.getContextPath() %>/sign/CheckDate.htm",
				type : "POST",
				dataType : "json",
				data : {startdate : $('#bizstart').val(), enddate : $('#bizend').val()},
				success : function(data) {
					 console.log("data"+data.result);
					var msg ="";
					if(data.result == 1){
						msg = '출장이나 휴가 일정이 겹칩니다.';
					}
				 	$('#vadate').html('<font style="font-weight:bold; color:#FF0000">'+msg+'</font>'); 
				},
				error: function (xhr,Options,thrownError) {
			    },
				
			});
		});
	});
</script>
