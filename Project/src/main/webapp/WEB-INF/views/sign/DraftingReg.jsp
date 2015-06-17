<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<section class="content-header">
	<h1>
		전자결재 작성 <small>전자결재 작성 페이지</small>
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
	    	<a class="title_txt" href="DraftingReg.htm">
	    			결재문서 작성	&gt; 기안서</a>     	
		</h3>
	</div>
	<div class="box-body">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td height="40">
				<!--타이틀TB START-->
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="360" align="center" class="title_txt"
								style="padding: 5px 0 0 14px; font-size: 30px">기안서</td>
							<td width="" align="right" style="padding: 0 12px 0 0;">&nbsp;</td>
						</tr>
					</tbody>
				</table> <!--타이틀TB END-->
			</td>
		</tr>
		
		<tr>
			<td align="center" valign="top" style="padding: 19px 15px 19px 15px;">
			
				<!-- 결재자 메뉴 띄우는 기능 -->
				<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
				<script src="//code.jquery.com/jquery-1.10.2.js"></script>
				<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
				<link rel="stylesheet" href="/resources/demos/style.css">

				<!-- ck 에디터 -->
				<script type="text/javascript" src="../resources/plugins/ckeditor/ckeditor.js"></script>
				<!-- ck 에디터 끝 -->
				
				<script type="text/javascript" src="/js/upload.js"></script>
				<script language="javascript">
					
					/* 결재자 메뉴 띄우는 기능 */
					$(function() {
						$("#dialog").dialog({
							autoOpen : false,
							show : {
								effect : "blind",
								duration : 1000
							},
							hide : {
								/* effect : "explode", */
								duration : 1000
							}
						});

						$("#opener").click(function() {
							$("#dialog").dialog("open");
						});
					});
					/* 결재자 메뉴 띄우는 기능 끝*/
					
					/* 결재자 트리 띄우는 기능 */
					$(function() {
						$("#accordion").accordion({
							heightStyle : "content"
						});
					});
					/* 결재자 트리 띄우는 기능 끝*/

					var oEditors = [];
					var __maxsize = 31457280;
					var __remains = 9686275080;

					var myLine = [];
					myLine[myLine.length] = {
						"appmgno" : "186",
						"domkey" : "2",
						"usrkey" : "1532",
						"appname" : "\ud14c\uc2a4\ud2b8\uacb0\uc7ac\uc120",
						"approver" : "2400|2838",
						"rcvdept" : "22|629",
						"refusr" : "2400|2838",
						"alsusr" : "2400|2838",
						"arrApprover" : [ {
							"usrmgno" : "2400",
							"deptname" : "\ub300\ud45c\uc774\uc0ac",
							"respname" : "\ubd80\uc7a5 test",
							"usrname" : "\ub370\ubaa81"
						}, {
							"usrmgno" : "2838",
							"deptname" : "\ub300\ud45c\uc774\uc0ac",
							"respname" : "\ubd80\uc7a5 test",
							"usrname" : "\ud14c\uc2a4\ud1301"
						} ],
						"arrRcvdept" : [ {
							"deptmgno" : "22",
							"deptname" : "\ub300\ud45c\uc774\uc0ac"
						}, {
							"deptmgno" : "629",
							"deptname" : "\uac1c\ubc1c\ud300"
						} ],
						"arrRefusr" : [ {
							"usrmgno" : "2400",
							"deptname" : "\ub300\ud45c\uc774\uc0ac",
							"respname" : "\ubd80\uc7a5 test",
							"usrname" : "\ub370\ubaa81"
						}, {
							"usrmgno" : "2838",
							"deptname" : "\ub300\ud45c\uc774\uc0ac",
							"respname" : "\ubd80\uc7a5 test",
							"usrname" : "\ud14c\uc2a4\ud1301"
						} ],
						"arrAlsusr" : [ {
							"usrmgno" : "2400",
							"deptname" : "\ub300\ud45c\uc774\uc0ac",
							"respname" : "\ubd80\uc7a5 test",
							"usrname" : "\ub370\ubaa81"
						}, {
							"usrmgno" : "2838",
							"deptname" : "\ub300\ud45c\uc774\uc0ac",
							"respname" : "\ubd80\uc7a5 test",
							"usrname" : "\ud14c\uc2a4\ud1301"
						} ]
					};
					myLine[myLine.length] = {
						"appmgno" : "133",
						"domkey" : "2",
						"usrkey" : "1532",
						"appname" : "ddaddsad",
						"approver" : "31|2390|2400",
						"rcvdept" : "",
						"refusr" : "",
						"alsusr" : "",
						"arrApprover" : [ {
							"usrmgno" : "31",
							"deptname" : "\uc5f0\uad6c\ubd80\ubb38",
							"respname" : "\ubd80\uc7a5 test",
							"usrname" : "\uad00\ub9ac\uc790"
						}, {
							"usrmgno" : "2390",
							"deptname" : "\uc804\ubb34",
							"respname" : "\ub300\ud45c\uc774\uc0ac test",
							"usrname" : "\ub370\ubaa82"
						}, {
							"usrmgno" : "2400",
							"deptname" : "\ub300\ud45c\uc774\uc0ac",
							"respname" : "\ubd80\uc7a5 test",
							"usrname" : "\ub370\ubaa81"
						} ]
					};
					myLine[myLine.length] = {
						"appmgno" : "153",
						"domkey" : "2",
						"usrkey" : "1532",
						"appname" : "\uc784\uc2dc",
						"approver" : "2485|31",
						"rcvdept" : "",
						"refusr" : "",
						"alsusr" : "",
						"arrApprover" : [ {
							"usrmgno" : "2485",
							"deptname" : "\uc804\ubb34",
							"respname" : "\ub300\ud45c\uc774\uc0ac test",
							"usrname" : "1234"
						}, {
							"usrmgno" : "31",
							"deptname" : "\uc5f0\uad6c\ubd80\ubb38",
							"respname" : "\ubd80\uc7a5 test",
							"usrname" : "\uad00\ub9ac\uc790"
						} ]
					};
					myLine[myLine.length] = {
						"appmgno" : "184",
						"domkey" : "2",
						"usrkey" : "1532",
						"appname" : "ddd",
						"approver" : "",
						"rcvdept" : "20",
						"refusr" : "2390|2485",
						"alsusr" : "2390|2485",
						"arrRcvdept" : [ {
							"deptmgno" : "20",
							"deptname" : "\uc804\ubb34"
						} ],
						"arrRefusr" : [ {
							"usrmgno" : "2390",
							"deptname" : "\uc804\ubb34",
							"respname" : "\ub300\ud45c\uc774\uc0ac test",
							"usrname" : "\ub370\ubaa82"
						}, {
							"usrmgno" : "2485",
							"deptname" : "\uc804\ubb34",
							"respname" : "\ub300\ud45c\uc774\uc0ac test",
							"usrname" : "1234"
						} ],
						"arrAlsusr" : [ {
							"usrmgno" : "2390",
							"deptname" : "\uc804\ubb34",
							"respname" : "\ub300\ud45c\uc774\uc0ac test",
							"usrname" : "\ub370\ubaa82"
						}, {
							"usrmgno" : "2485",
							"deptname" : "\uc804\ubb34",
							"respname" : "\ub300\ud45c\uc774\uc0ac test",
							"usrname" : "1234"
						} ]
					};

					$(document)
							.ready(
									function() {
										$("#uploadify")
												.uploadify(
														{
															'uploader' : '/js/uploadify.swf',
															'script' : '/util/uploadify.php',
															'folder' : '/home/hangroup/www/uploads/20150616_75950ad67154a41cc08e3f70a47eccce',
															'cancelImg' : '/img/cancel.png',
															'queueID' : 'fileQueue',
															'width' : '60',
															'height' : '20',
															'auto' : true,
															'multi' : true,
															'onSelect' : onSelect,
															'onComplete' : onComplete,
															'onProgress' : onProgress
														});
									});

					function onSelect(e, id, obj) {
						if (obj.size > __maxsize) {
							alert("'" + obj.name + "' 은  최대 허용량("
									+ replace_size(__maxsize)
									+ ")을 초과하여 첨부할 수 없습니다.");
							$("#uploadify").uploadifyCancel(id);
							$("#uploadify").uploadifyClearQueue();
							return false;
						}
						if (obj.size > __remains) {
							alert('저장 용량이 부족합니다.');
							$("#uploadify").uploadifyCancel(id);
							$("#uploadify").uploadifyClearQueue();
							return false;
						}
						for (i = 0; i < attaches.length; i++) {
							if (obj.name == attaches[i]) {
								alert(obj.name
										+ '이름의 화일이 이미 첨부되어 있습니다.\n 동일한 이름의 파일을 중복 첨부할 수 없습니다.');
								stopUploading(id);
								return false;
							}
						}

						$("#fileQueue").css("position", "absolute");
						__remains -= obj.size;
					}

					function doc_edit_submit(status) {
						f = document.doApp;
						f.ingstatus.value = status;
						if (f.subject.value.length == 0) {
							alert('제목을 입력하세요');
							f.subject.focus();
							return;
						}

						$('#attFiles').val(attaches.join("|"));
						$('#tmpFiles').val(tmpnames.join("|"));

						if (status == 'I') {
							var exist = false;
							var procs = document.getElementsByName("docproc[]");
							for (var i = 0; i < procs.length; i++) {
								if (procs[i].value != '') {
									exist = true;
									break;
								}
							}
							if (!exist) {
								if (!confirm('결재자 없이 문서를 상신하시겠습니까?\n\n상신 즉시 완료처리 됩니다.'))
									return;
							} else {
								if (!confirm('문서를 상신하시겠습니까?\n\n상신된 문서의 내용은 수정하실 수 없습니다.'))
									return;
							}

							$("#_pass_conf").gbxShow();
							passConfForm.mypass.value = '';
							passConfForm.mypass.focus();
							return;
						}
						f.submit();
					}

					function _delete(pos) {
						$("#cid" + pos).empty();
						$("#cid" + pos).hide();

						document.doApp.delFiles.value = document.doApp.delFiles.value
								+ pos + '|';
					}

					function getAppLineDataIndex(appmgno) {
						for (var i = 0; i < myLine.length; i++) {
							if (myLine[i].appmgno == appmgno)
								return i;
						}

						return -1;
					}

					/* ck 에디터 기능 */
					$(function() {
						CKEDITOR
								.replace(
										'ckeditor',
										{//해당 이름으로 된 textarea에 에디터를 적용
											width : '100%',
											height : '400px',
											filebrowserImageUploadUrl : '/community/imageUpload' //여기 경로로 파일을 전달하여 업로드 시킨다.
										});

						CKEDITOR.on('dialogDefinition', function(ev) {
							var dialogName = ev.data.name;
							var dialogDefinition = ev.data.definition;

							switch (dialogName) {
							case 'image': //Image Properties dialog
								//dialogDefinition.removeContents('info');
								dialogDefinition.removeContents('Link');
								dialogDefinition.removeContents('advanced');
								break;
							}
						});

					});
					/* ck 에디터 기능 끝*/

					function applyAppLine(appmgno) {
						for (var i = 0; i < 9; i++)
							procCancel(i);
						$("#_depttext").val("");
						$("#_deptkeys").val("");
						$("#_reftext").val("");
						$("#_refkeys").val("");

						if (appmgno) {
							var idx = getAppLineDataIndex(appmgno);
							if (idx > -1) {
								var lineData = myLine[idx];
								if (lineData.arrApprover) {
									for (var i = 0; i < lineData.arrApprover.length; i++) {
										$("#dept" + i)
												.text(
														lineData.arrApprover[i].respname);
										$("#divCan" + i).show();
										$("#procName" + i)
												.text(
														lineData.arrApprover[i].usrname);
										$("#proc" + i)
												.val(
														lineData.arrApprover[i].usrmgno);
										$("#divSel" + i).hide();
										$("#sel_proc").hide();
									}
								}
								if (lineData.arrRcvdept) {
									var keys = [];
									var deps = [];
									for (var i = 0; i < lineData.arrRcvdept.length; i++) {
										keys[keys.length] = lineData.arrRcvdept[i].deptmgno;
										deps[deps.length] = lineData.arrRcvdept[i].deptname;
									}
									$("#_depttext").val(deps.join(", "));
									$("#_deptkeys").val(keys.join("|"));
								}
								if (lineData.arrAlsusr) {
									var keys = [];
									var refs = [];
									for (var i = 0; i < lineData.arrAlsusr.length; i++) {
										keys[keys.length] = lineData.arrAlsusr[i].usrmgno;
										refs[refs.length] = lineData.arrAlsusr[i].usrname;
									}
									$("#_alstext").val(refs.join(", "));
									$("#_alskeys").val(keys.join("|"));
								}
								if (lineData.arrRefusr) {
									var keys = [];
									var refs = [];
									for (var i = 0; i < lineData.arrRefusr.length; i++) {
										keys[keys.length] = lineData.arrRefusr[i].usrmgno;
										refs[refs.length] = lineData.arrRefusr[i].usrname;
									}
									$("#_reftext").val(refs.join(", "));
									$("#_refkeys").val(keys.join("|"));
								}
							}
						}
					}
				</script>
				
					<style>
  						.ui-menu { width: 200px; }
  						.ui-widget-header { padding: 0.2em; }
  					</style>
					
					<input type="hidden" name="passconf">
					<input type="hidden" name="dockind" value="D"> <!-- mod : 휴가계 최초 수정시 수정 휴가계 작성 위해 수정이 아닌 신규 작성임 -->
					<input type="hidden" name="docmgno" value="">
					<input type="hidden" name="docnumb" value="">
					<input type="hidden" name="ingstatus">
					<input type="hidden" name="folder" value="20150616_75950ad67154a41cc08e3f70a47eccce">
					<input type="hidden" name="attFiles" id="attFiles">
					<input type="hidden" name="tmpFiles" id="tmpFiles">
					<input type="hidden" name="delFiles">
					<input type="hidden" id="_deptkeys" name="deptkeys" value=""> 
					<input type="hidden" id="_refkeys" name="refkeys" value=""> 
					<input type="hidden" id="_alskeys" name="alskeys" value="">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tbl_appdoc" id="writeForm">
					
					<tbody>
						<tr>
							<td align="center" valign="top">
								<table width="100%" class="tbl_c9c9c9" cellspacing="0"
									cellpadding="0" style="table-layout: fixed;">
									<tbody>
										<tr>
											<td width="95" height="30" align="center" bgcolor="#f6f6f6"
												class="m_sp"><b>문서번호</b></td>
											<td width="" style="padding: 0 0 0 12px;"></td>
											<td width="365" rowspan="3" align="center" valign="top"
												style="padding: 1;">

												<table width="100%" class="tbl_c9c9c9" cellpadding="0"
													cellspacing="0">
													<tbody>
														<tr height="10" align="center" bgcolor="#f6f6f6">
															<td width="7%" rowspan="4"><b>결<br> <br>
																	<br>재
															</b></td>
															<td width="19%"
																style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;">기안자</td>
															<input type="hidden" name="docproc[]" id="proc0" value="">
															<td width="19%"
																style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
																id="dept0"></td>
															<input type="hidden" name="docproc[]" id="proc1" value="">
															<td width="19%"
																style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
																id="dept1"></td>
															<input type="hidden" name="docproc[]" id="proc2" value="">
															<td width="19%"
																style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
																id="dept2"></td>
															<input type="hidden" name="docproc[]" id="proc3" value="">
															<td width="19%"
																style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
																id="dept3"></td>
														</tr>
														<tr height="70" align="center">
															<td style="border-bottom: 1px #eaeaea solid;">데모사용자</td>
															<td style="border-bottom: 1px #eaeaea solid;">
																
																<div id="dialog" title="결재자 지정하기">
      																<div id="accordion">
      																	<c:forEach items="${dept}" var="d">
      																		<h3>${d.deptname}</h3>
      																		<div>
      																			<c:forEach items="${emp}" var="e">
      																				<c:if test="${d.deptcode == e.deptcode}">
	      																				<i class="fa fa-fw fa-user-plus"></i> ${e.ename} <input type="button" value="지정" onclick="check()"><hr>
																					</c:if>
																				</c:forEach>	
																			</div>
      																	</c:forEach>
      																	
  																		<!-- <h3>임원</h3>
  																		<div>
  																			대표이사 <input type="button" value="지정" onclick="check()">
																			<hr>
																			전무 <input type="button" value="지정" onclick="check()">
  																		</div> -->
  																		
  																		
																	</div>
																	<input type="button" value="완료" onclick="check()">
   																</div>

   																<button id="opener">지정</button>
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
														
														
													</tbody>
												</table>

											</td>
										</tr>
										<tr>
											<td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"><b>문서종류</b></td>
											<td style="padding: 0 0 0 12px;">기안서</td>
										</tr>
										<tr>
											<td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"><b>문서상태</b></td>
											<td style="padding: 0 0 0 12px;">작성전 문서입니다.</td>
										</tr>
										<tr>
											<td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"><b>부
													서</b></td>
											<td style="padding: 0 0 0 12px;">지원부문</td>
										</tr>
										<tr>
											<td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"><b>기안자</b></td>
											<td style="padding: 0 0 0 12px;">데모사용자 대표이사 test</td>
										</tr>
										<tr>
											<td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"
												valign="top" style="padding-top: 7px;"><b>기안일</b></td>
											<td colspan="2" style="padding: 0 0 0 12px;" valign="top">
												<input
												type="text" name="reportdt" readonly="" class="input_type2"
												style="width: 85px" maxlength="10"
												onblur="constraintValue('DATEFORMAT',this)"
												onclick="popUpCalendarYmd(this)" value="2015-06-16">
											</td>
										</tr>


										<tr>
											<td align="center" bgcolor="#f6f6f6" class="m_sp"><b>파일첨부</b></td>
											<td colspan="2" style="padding: 0 0 0 12px;">
											<input id="File_sign" name="File_sign" type="file"></td>
										</tr>
							
										<tr>
											<td height="30" align="center" bgcolor="#f6f6f6" class="m_sp">
												<b>제목</b>
											</td>
											<td colspan="2" style="padding: 0 0 0 12px;">
												<input id="t_subject" name="subject" type="text"
												class="input_type2" style="width: 630px;" value="">
											</td>
										</tr>
										<tr>
											<td colspan="3" align="center" valign="top" class="m_sp"
												style="padding: 0; border: 0;">
												<table width="100%" cellpadding="0" cellspacing="0">
													<tbody>
														<tr>
															<td width="100%" style="padding: 0; border-top: 0;">
																
																<script type="text/javascript">
																		$(
																				document)
																				.ready(
																						function() {
																						});
																</script>
																<table cellspacing="0" cellpadding="0" width="100%"
																	class="noborder">
																	<tbody>
																		<tr>
																			<td width="100%" style="padding: 2px">
																				<div id="new_content_toolbar" style="width: 100%;">
																					<table width="100%" border="0" cellspacing="0"
																						cellpadding="0" align="left"
																						style="text-align: left;">

																					</table>
																				</div>
																				<textarea rows="1000" cols="3000" name="CONTENT" id="CONTENT"></textarea>
																					<script type="text/javascript">
																						CKEDITOR.replace('CONTENT');
																					</script>
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
				</table> <script language="javascript">
					$(document)
							.ready(
									function() {
										$("#_appproc_menu")
												.dynatree(
														{
															rootVisible : false,
															//persist: true,
															checkbox : false,
															selectMode : 3,
															clickFolderMode : 3,
															minExpandLevel : 1,
															children : menuJSON,
															onActivate : function(
																	dtnode) {
																if (dtnode.data.key
																		.substr(
																				0,
																				3) == 'usr') {
																	var procs = document
																			.getElementsByName("docproc[]");
																	var key = dtnode.data.key
																			.substr(3);
																	var seq = $(
																			"#sel_proc")
																			.attr(
																					"sequence");

																	if (key == 1532) {
																		alert('본인은 결재자에 포함될 수 없습니다.');
																		return;
																	}

																	for (var i = 0; i < procs.length; i++) {
																		if (procs[i].value == key) {
																			alert('이미 결재선에 포함되어 있는 직원입니다.');
																			return;
																		}
																	}
																	$(
																			"#dept"
																					+ seq)
																			.text(
																					dtnode.data.respname);
																	$(
																			"#divCan"
																					+ seq)
																			.show();
																	$(
																			"#procName"
																					+ seq)
																			.text(
																					dtnode.data.title);
																	$(
																			"#proc"
																					+ seq)
																			.val(
																					dtnode.data.key
																							.substr(3));
																	$(
																			"#divSel"
																					+ seq)
																			.hide();
																	$(
																			"#sel_proc")
																			.hide();
																}
															}
														});

										$(".bt_procsel")
												.click(
														function() {
															var pos = $(this)
																	.position();
															var _left = pos.left;
															var _top = pos.top;
															var _width = $(
																	"#sel_proc")
																	.width()
																	- $(this)
																			.width();
															$("#sel_proc")
																	.css(
																			"left",
																			_left
																					- _width);
															$("#sel_proc")
																	.css(
																			"top",
																			_top
																					+ $(
																							this)
																							.height());
															$("#sel_proc")
																	.attr(
																			"sequence",
																			$(
																					this)
																					.attr(
																							"value"));
															$("#sel_proc")
																	.show();
														});
									});
					function procCancel(seq) {
						$("#dept" + seq).empty();
						$("#divCan" + seq).hide();
						$("#proc" + seq).val("");
						$("#procName" + seq).empty();
						$("#divSel" + seq).show();
					}
				</script>
				<div id="sel_proc" sequence="0"
					style="border-width: 2px; border-style: solid; border-color: #666666; background-color: #ffffff; position: absolute; left: 0px; top: 0px; z-index: 10; PADDING: 0 0 0 0; display: none; width: 300px;">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="left_menu">
						<tbody>
							<tr>
								<td height="30" bgcolor="#f4f4f4" style="padding: 3px 0 0 20px;">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<td style="letter-spacing: -1px;"><b>결재자 지정하기</b></td>
												
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td style="padding: 10px 20px 15px 20px;">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<td height="50" valign="top" style="padding-top: 5px;">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">
														<tbody>
															<tr>
																<td align="center" valign="top">
																	<table width="100%" border="2" bordercolor="#c9c9c9"
																		cellspacing="0" cellpadding="0" height="300">
																		<tbody>
																			<tr>
																				<td height="30" bgcolor="#ececec"
																					style="border-bottom: 1px #c9c9c9 solid; padding: 0 0 0 12px;">
																					<!--기능TB START-->
																					<table width="100%" border="0" cellspacing="0"
																						cellpadding="0">
																						<tbody>
																							<tr>
																								<td align="left">
																									<table border="0" cellspacing="0"
																										cellpadding="0">
																										<tbody>
																											<tr>
																												<td><a
																													href="javascript:_expand('_appproc_menu', true)"><img
																														src="/img/organ/bt_open_folder.gif"></a></td>
																												<td width="5"></td>
																												<td><a
																													href="javascript:_expand('_appproc_menu', false)"><img
																														src="/img/organ/bt_close_folder.gif"></a></td>
																												<td width="5"></td>
																											</tr>
																										</tbody>
																									</table>
																								</td>
																								<td align="right" style="padding: 0 12px 0 0;">&nbsp;</td>
																							</tr>
																						</tbody>
																					</table> <!--기능TB END-->
																				</td>
																			</tr>
																			<tr>
																				<td align="left" valign="top"
																					style="padding: 10px 10px 5px 10px;"
																					id="_appproc_menu"><div
																						class="ui-dynatree-container">
																						<span id="undefinedroot"
																							class="ui-dynatree-folder ui-dynatree-expanded ui-dynatree-has-children ui-dynatree-lastsib ui-dynatree-exp-el ui-dynatree-ico-ef"
																							style="display: none;"><span
																							class="ui-dynatree-expander"></span><span
																							class="ui-dynatree-icon"></span><a href="#"
																							class="ui-dynatree-title">null</a></span>
																						<div>
																							<span id="undefineddept20"
																								class="ui-dynatree-folder ui-dynatree-has-children ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																								class="ui-dynatree-expander"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">전무</a></span>
																							<div style="display: none;">
																								<span id="undefinedusr2390"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">데모2 대표이사 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr2485"
																									class="ui-dynatree-folder ui-dynatree-lastsib member ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">1234 대표이사 test</a></span>
																							</div>
																						</div>
																						<div>
																							<span id="undefineddept21"
																								class="ui-dynatree-folder ui-dynatree-has-children ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																								class="ui-dynatree-expander"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">연구부문</a></span>
																							<div style="display: none;">
																								<span id="undefinedusr31"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">관리자 부장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr2565"
																									class="ui-dynatree-folder ui-dynatree-lastsib member ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">dd테스트 부장 test</a></span>
																							</div>
																						</div>
																						<div>
																							<span id="undefineddept22"
																								class="ui-dynatree-folder ui-dynatree-has-children ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																								class="ui-dynatree-expander"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">대표이사</a></span>
																							<div style="display: none;">
																								<span id="undefinedusr2400"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">데모1 부장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr2838"
																									class="ui-dynatree-folder ui-dynatree-lastsib member ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">테스터1 부장 test</a></span>
																							</div>
																						</div>
																						<div>
																							<span id="undefineddept629"
																								class="ui-dynatree-folder ui-dynatree-has-children ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																								class="ui-dynatree-expander"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">개발팀</a></span>
																							<div style="display: none;">
																								<span id="undefinedusr3233"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">장그래 대표이사 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr3237"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">a1 부장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr2661"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">demo 부장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr3232"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">임경균 과장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr3238"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">a2 과장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr3239"
																									class="ui-dynatree-folder ui-dynatree-lastsib member ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">a3 대리 test</a></span>
																							</div>
																						</div>
																						<div>
																							<span id="undefineddept441"
																								class="ui-dynatree-folder ui-dynatree-has-children ui-dynatree-lastsib ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																								class="ui-dynatree-expander"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">지원부문</a></span>
																							<div style="display: none;">
																								<span id="undefinedusr2068"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-empty"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">정시현 대표이사 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr1532"
																									class="ui-dynatree-folder ui-dynatree-lastsib member ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																									class="ui-dynatree-empty"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">데모사용자 대표이사 test</a></span>
																							</div>
																						</div>
																					</div></td>
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
												<td height="8"></td>
											</tr>
											<tr>
												<td height="1" bgcolor="#efefef"></td>
											</tr>
											<tr>
												<td height="5"></td>
											</tr>
											<tr>
												<td colspan="2" align="center"><input name="input"
													type="button" value="닫기"
													style="padding: 3px 0 0 0; font-size: 11px;"
													onclick="jQuery('#sel_proc').hide()"></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
				</div> <script language="javascript">
					var menuJSON = [ {
						"title" : "전무",
						"key" : "dept20",
						"isFolder" : "true",
						"children" : [ {
							"title" : "데모2 대표이사 test",
							"key" : "usr2390",
							"addClass" : "member",
							"isFolder" : "false",
							"usrmgno" : "2390",
							"usriden" : "demo2",
							"usrname" : "데모2",
							"usrwrka" : "0",
							"email" : "",
							"deptname" : "전무",
							"respname" : "대표이사 test",
							"mobile" : "011-1111-1111"
						}, {
							"title" : "1234 대표이사 test",
							"key" : "usr2485",
							"addClass" : "member",
							"isFolder" : "false",
							"usrmgno" : "2485",
							"usriden" : "demo3",
							"usrname" : "1234",
							"usrwrka" : "0",
							"email" : "",
							"deptname" : "전무",
							"respname" : "대표이사 test",
							"mobile" : ""
						} ]
					}, {
						"title" : "연구부문",
						"key" : "dept21",
						"isFolder" : "true",
						"children" : [ {
							"title" : "관리자 부장 test",
							"key" : "usr31",
							"addClass" : "member",
							"isFolder" : "false",
							"usrmgno" : "31",
							"usriden" : "admin",
							"usrname" : "관리자",
							"usrwrka" : "0",
							"email" : "",
							"deptname" : "연구부문",
							"respname" : "부장 test",
							"mobile" : ""
						}, {
							"title" : "dd테스트 부장 test",
							"key" : "usr2565",
							"addClass" : "member",
							"isFolder" : "false",
							"usrmgno" : "2565",
							"usriden" : "ddtest",
							"usrname" : "dd테스트",
							"usrwrka" : "0",
							"email" : "",
							"deptname" : "연구부문",
							"respname" : "부장 test",
							"mobile" : ""
						} ]
					}, {
						"title" : "대표이사",
						"key" : "dept22",
						"isFolder" : "true",
						"children" : [ {
							"title" : "데모1 부장 test",
							"key" : "usr2400",
							"addClass" : "member",
							"isFolder" : "false",
							"usrmgno" : "2400",
							"usriden" : "demo1",
							"usrname" : "데모1",
							"usrwrka" : "0",
							"email" : "",
							"deptname" : "대표이사",
							"respname" : "부장 test",
							"mobile" : ""
						}, {
							"title" : "테스터1 부장 test",
							"key" : "usr2838",
							"addClass" : "member",
							"isFolder" : "false",
							"usrmgno" : "2838",
							"usriden" : "test1",
							"usrname" : "테스터1",
							"usrwrka" : "0",
							"email" : "test1@test.test",
							"deptname" : "대표이사",
							"respname" : "부장 test",
							"mobile" : "01012345678"
						} ]
					}, {
						"title" : "개발팀",
						"key" : "dept629",
						"isFolder" : "true",
						"children" : [ {
							"title" : "장그래 대표이사 test",
							"key" : "usr3233",
							"addClass" : "member",
							"isFolder" : "false",
							"usrmgno" : "3233",
							"usriden" : "jang",
							"usrname" : "장그래",
							"usrwrka" : "0",
							"email" : "",
							"deptname" : "개발팀",
							"respname" : "대표이사 test",
							"mobile" : "010-54-5431"
						}, {
							"title" : "a1 부장 test",
							"key" : "usr3237",
							"addClass" : "member",
							"isFolder" : "false",
							"usrmgno" : "3237",
							"usriden" : "a1",
							"usrname" : "a1",
							"usrwrka" : "0",
							"email" : "",
							"deptname" : "개발팀",
							"respname" : "부장 test",
							"mobile" : ""
						}, {
							"title" : "demo 부장 test",
							"key" : "usr2661",
							"addClass" : "member",
							"isFolder" : "false",
							"usrmgno" : "2661",
							"usriden" : "demo-2",
							"usrname" : "demo",
							"usrwrka" : "0",
							"email" : "ewrwer@naver.com",
							"deptname" : "개발팀",
							"respname" : "부장 test",
							"mobile" : "010-2617-8985"
						}, {
							"title" : "임경균 과장 test",
							"key" : "usr3232",
							"addClass" : "member",
							"isFolder" : "false",
							"usrmgno" : "3232",
							"usriden" : "kglim",
							"usrname" : "임경균",
							"usrwrka" : "0",
							"email" : "",
							"deptname" : "개발팀",
							"respname" : "과장 test",
							"mobile" : "010-3431-5411"
						}, {
							"title" : "a2 과장 test",
							"key" : "usr3238",
							"addClass" : "member",
							"isFolder" : "false",
							"usrmgno" : "3238",
							"usriden" : "a2",
							"usrname" : "a2",
							"usrwrka" : "0",
							"email" : "",
							"deptname" : "개발팀",
							"respname" : "과장 test",
							"mobile" : ""
						}, {
							"title" : "a3 대리 test",
							"key" : "usr3239",
							"addClass" : "member",
							"isFolder" : "false",
							"usrmgno" : "3239",
							"usriden" : "a3",
							"usrname" : "a3",
							"usrwrka" : "0",
							"email" : "",
							"deptname" : "개발팀",
							"respname" : "대리 test",
							"mobile" : ""
						} ]
					}, {
						"title" : "지원부문",
						"key" : "dept441",
						"isFolder" : "true",
						"children" : [ {
							"title" : "정시현 대표이사 test",
							"key" : "usr2068",
							"addClass" : "member",
							"isFolder" : "false",
							"usrmgno" : "2068",
							"usriden" : "criss",
							"usrname" : "정시현",
							"usrwrka" : "0",
							"email" : "",
							"deptname" : "지원부문",
							"respname" : "대표이사 test",
							"mobile" : "010-9164-2169"
						}, {
							"title" : "데모사용자 대표이사 test",
							"key" : "usr1532",
							"addClass" : "member",
							"isFolder" : "false",
							"usrmgno" : "1532",
							"usriden" : "demo-1",
							"usrname" : "데모사용자",
							"usrwrka" : "0",
							"email" : "",
							"deptname" : "지원부문",
							"respname" : "대표이사 test",
							"mobile" : ""
						} ]
					} ];

					$(document)
							.ready(
									function() {
										$("#_appals_menu")
												.dynatree(
														{
															rootVisible : false,
															checkbox : true,
															selectMode : 3,
															clickFolderMode : 3,
															minExpandLevel : 1,
															children : menuJSON,
															onSelect : function(
																	flag,
																	dtnode) {
																var selKeys = $
																		.map(
																				dtnode.tree
																						.getSelectedNodes(),
																				function(
																						node) {
																					if (node.data.key
																							.substr(
																									0,
																									3) !== 'usr')
																						return;
																					return node.data.key
																							.substr(3);
																				});
																var selTitles = $
																		.map(
																				dtnode.tree
																						.getSelectedNodes(),
																				function(
																						node) {
																					if (node.data.key
																							.substr(
																									0,
																									3) !== 'usr')
																						return;
																					return node.data.title;
																				});
																selectedKey = selKeys
																		.join("|");
																selTitles = selTitles
																		.join(", ");

																$("#_alstext")
																		.val(
																				selTitles);
																$("#_alskeys")
																		.val(
																				selectedKey);
															},
															onPostInit : function(
																	isReloading,
																	isError) {
																this
																		.reactivate();
															}
														});

										$("#_appref_menu")
												.dynatree(
														{
															rootVisible : false,
															checkbox : true,
															selectMode : 3,
															clickFolderMode : 3,
															minExpandLevel : 1,
															children : menuJSON,
															onSelect : function(
																	flag,
																	dtnode) {
																var selKeys = $
																		.map(
																				dtnode.tree
																						.getSelectedNodes(),
																				function(
																						node) {
																					if (node.data.key
																							.substr(
																									0,
																									3) !== 'usr')
																						return;
																					return node.data.key
																							.substr(3);
																				});
																var selTitles = $
																		.map(
																				dtnode.tree
																						.getSelectedNodes(),
																				function(
																						node) {
																					if (node.data.key
																							.substr(
																									0,
																									3) !== 'usr')
																						return;
																					return node.data.title;
																				});
																selectedKey = selKeys
																		.join("|");
																selTitles = selTitles
																		.join(", ");

																$("#_reftext")
																		.val(
																				selTitles);
																$("#_refkeys")
																		.val(
																				selectedKey);
															},
															onPostInit : function(
																	isReloading,
																	isError) {
																this
																		.reactivate();
															}
														});

										$("#_appdept_menu")
												.dynatree(
														{
															rootVisible : false,
															checkbox : true,
															selectMode : 2,
															clickFolderMode : 2,
															minExpandLevel : 1,
															children : eraseChild(menuJSON),
															onSelect : function(
																	flag,
																	dtnode) {
																var selKeys = $
																		.map(
																				dtnode.tree
																						.getSelectedNodes(),
																				function(
																						node) {
																					return node.data.key
																							.substr(4);
																				});
																var selTitles = $
																		.map(
																				dtnode.tree
																						.getSelectedNodes(),
																				function(
																						node) {
																					return node.data.title;
																				});
																selectedKey = selKeys
																		.join("|");
																selTitles = selTitles
																		.join(", ");
																$("#_depttext")
																		.val(
																				selTitles);
																$("#_deptkeys")
																		.val(
																				selectedKey);
															},
															onPostInit : function(
																	isReloading,
																	isError) {
																this
																		.reactivate();
															}
														});

										$("#bt_deptsel")
												.click(
														function() {
															var pos = $(this)
																	.position();
															var _left = pos.left;
															var _top = pos.top;
															var _width = $(
																	"#sel_dept")
																	.width()
																	- $(this)
																			.width();
															$("#sel_dept")
																	.css(
																			"left",
																			_left
																					- _width);
															$("#sel_dept")
																	.css(
																			"top",
																			_top
																					+ $(
																							this)
																							.height());
															$("#sel_dept")
																	.show();
														});

										$("#bt_alssel")
												.click(
														function() {
															var pos = $(this)
																	.position();
															var _left = pos.left;
															var _top = pos.top;
															var _width = $(
																	"#sel_als")
																	.width()
																	- $(this)
																			.width();
															$("#sel_als")
																	.css(
																			"left",
																			_left
																					- _width);
															$("#sel_als")
																	.css(
																			"top",
																			_top
																					+ $(
																							this)
																							.height());
															$("#sel_als")
																	.show();
														});

										$("#bt_refsel")
												.click(
														function() {
															var pos = $(this)
																	.position();
															var _left = pos.left;
															var _top = pos.top;
															var _width = $(
																	"#sel_ref")
																	.width()
																	- $(this)
																			.width();
															$("#sel_ref")
																	.css(
																			"left",
																			_left
																					- _width);
															$("#sel_ref")
																	.css(
																			"top",
																			_top
																					+ $(
																							this)
																							.height());
															$("#sel_ref")
																	.show();
														});
									});

					function eraseChild(jsonData) {
						var _data = jsonData;
						for (i = 0; i < _data.length; i++)
							_data[i].children = "";

						return _data;
					}

					function _expand(id, flag) {
						$("#" + id).dynatree("getRoot").visit(function(dtnode) {
							dtnode.expand(flag);
						});
					}

					function _select(id, flag, key) {
						$("#" + id).dynatree("getRoot").visit(function(dtnode) {
							if (key !== undefined && dtnode.data.key !== key)
								return;
							dtnode.select(flag);
						});
					}
				</script>




				<div id="sel_dept" sequence="0"
					style="border-width: 2px; border-style: solid; border-color: #666666; background-color: #ffffff; position: absolute; left: 0px; top: 0px; z-index: 10; PADDING: 0 0 0 0; display: none; width: 300px;">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="left_menu">
						<tbody>
							<tr>
								<td height="30" bgcolor="#f4f4f4" style="padding: 3px 0 0 20px;">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<td style="letter-spacing: -1px;"><b>수신부서 지정하기</b></td>
												<td width="22" align="left"><a href="javascript:"><img
														src="/img/webmail/bt_closelayer.gif"
														onclick="jQuery('#sel_dept').hide()"></a></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td style="padding: 10px 20px 15px 20px;">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<td height="50" valign="top" style="padding-top: 5px;">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">
														<tbody>
															<tr>
																<td align="center" valign="top">
																	<table width="100%" border="2" bordercolor="#c9c9c9"
																		cellspacing="0" cellpadding="0" height="300">
																		<tbody>
																			<tr>
																				<td height="30" bgcolor="#ececec"
																					style="border-bottom: 1px #c9c9c9 solid; padding: 0 0 0 12px;">
																					<!--기능TB START-->
																					<table width="100%" border="0" cellspacing="0"
																						cellpadding="0">
																						<tbody>
																							<tr>
																								<td align="left">
																									<table border="0" cellspacing="0"
																										cellpadding="0">
																										<tbody>
																											<tr>
																												<td><a
																													href="javascript:_select('_appdept_menu', true)"><img
																														src="/img/organ/bt_sel_all.gif"></a></td>
																												<td width="5"></td>
																												<td><a
																													href="javascript:_select('_appdept_menu', false)"><img
																														src="/img/organ/bt_sel_del.gif"></a></td>
																												<td width="5"></td>
																											</tr>
																										</tbody>
																									</table>
																								</td>
																								<td align="right" style="padding: 0 12px 0 0;">&nbsp;</td>
																							</tr>
																						</tbody>
																					</table> <!--기능TB END-->
																				</td>
																			</tr>
																			<tr>
																				<td align="left" valign="top"
																					style="padding: 10px 10px 5px 10px;"
																					id="_appdept_menu"><div
																						class="ui-dynatree-container">
																						<span id="undefinedroot"
																							class="ui-dynatree-folder ui-dynatree-expanded ui-dynatree-has-children ui-dynatree-lastsib ui-dynatree-exp-el ui-dynatree-ico-ef"
																							style="display: none;"><span
																							class="ui-dynatree-expander"></span><span
																							class="ui-dynatree-checkbox"></span><span
																							class="ui-dynatree-icon"></span><a href="#"
																							class="ui-dynatree-title">null</a></span>
																						<div>
																							<span id="undefineddept20"
																								class="ui-dynatree-folder ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																								class="ui-dynatree-connector"></span><span
																								class="ui-dynatree-checkbox"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">전무</a></span>
																						</div>
																						<div>
																							<span id="undefineddept21"
																								class="ui-dynatree-folder ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																								class="ui-dynatree-connector"></span><span
																								class="ui-dynatree-checkbox"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">연구부문</a></span>
																						</div>
																						<div>
																							<span id="undefineddept22"
																								class="ui-dynatree-folder ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																								class="ui-dynatree-connector"></span><span
																								class="ui-dynatree-checkbox"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">대표이사</a></span>
																						</div>
																						<div>
																							<span id="undefineddept629"
																								class="ui-dynatree-folder ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																								class="ui-dynatree-connector"></span><span
																								class="ui-dynatree-checkbox"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">개발팀</a></span>
																						</div>
																						<div>
																							<span id="undefineddept441"
																								class="ui-dynatree-folder ui-dynatree-lastsib ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																								class="ui-dynatree-connector"></span><span
																								class="ui-dynatree-checkbox"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">지원부문</a></span>
																						</div>
																					</div></td>
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
												<td height="8"></td>
											</tr>
											<tr>
												<td height="1" bgcolor="#efefef"></td>
											</tr>
											<tr>
												<td height="5"></td>
											</tr>
											<tr>
												<td colspan="2" align="center"><input name="input"
													type="button" value="닫기"
													style="padding: 3px 0 0 0; font-size: 11px;"
													onclick="jQuery('#sel_dept').hide()"></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
				</div>


				<div id="sel_als" sequence="0"
					style="border-width: 2px; border-style: solid; border-color: #666666; background-color: #ffffff; position: absolute; left: 0px; top: 0px; z-index: 10; PADDING: 0 0 0 0; display: none; width: 300px;">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="left_menu">
						<tbody>
							<tr>
								<td height="30" bgcolor="#f4f4f4" style="padding: 3px 0 0 20px;">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<td style="letter-spacing: -1px;"><b>승인 전 참조자 지정하기</b></td>
												<td width="22" align="left"><a href="javascript:"><img
														src="/img/webmail/bt_closelayer.gif"
														onclick="jQuery('#sel_als').hide()"></a></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td style="padding: 10px 20px 15px 20px;">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<td height="50" valign="top" style="padding-top: 5px;">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">
														<tbody>
															<tr>
																<td align="center" valign="top">
																	<table width="100%" border="2" bordercolor="#c9c9c9"
																		cellspacing="0" cellpadding="0" height="300">
																		<tbody>
																			<tr>
																				<td height="30" bgcolor="#ececec"
																					style="border-bottom: 1px #c9c9c9 solid; padding: 0 0 0 12px;">
																					<!--기능TB START-->
																					<table width="100%" border="0" cellspacing="0"
																						cellpadding="0">
																						<tbody>
																							<tr>
																								<td align="left">
																									<table border="0" cellspacing="0"
																										cellpadding="0">
																										<tbody>
																											<tr>
																												<td><a
																													href="javascript:_expand('_appals_menu', true)"><img
																														src="/img/organ/bt_open_folder.gif"></a></td>
																												<td width="5"></td>
																												<td><a
																													href="javascript:_expand('_appals_menu', false)"><img
																														src="/img/organ/bt_close_folder.gif"></a></td>
																												<td width="5"></td>
																											</tr>
																										</tbody>
																									</table>
																								</td>
																								<td align="right" style="padding: 0 12px 0 0;">&nbsp;</td>
																							</tr>
																						</tbody>
																					</table> <!--기능TB END-->
																				</td>
																			</tr>
																			<tr>
																				<td align="left" valign="top"
																					style="padding: 10px 10px 5px 10px;"
																					id="_appals_menu"><div
																						class="ui-dynatree-container">
																						<span id="undefinedroot"
																							class="ui-dynatree-folder ui-dynatree-expanded ui-dynatree-has-children ui-dynatree-lastsib ui-dynatree-exp-el ui-dynatree-ico-ef"
																							style="display: none;"><span
																							class="ui-dynatree-expander"></span><span
																							class="ui-dynatree-checkbox"></span><span
																							class="ui-dynatree-icon"></span><a href="#"
																							class="ui-dynatree-title">null</a></span>
																						<div>
																							<span id="undefineddept20"
																								class="ui-dynatree-folder ui-dynatree-has-children ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																								class="ui-dynatree-expander"></span><span
																								class="ui-dynatree-checkbox"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">전무</a></span>
																							<div style="display: none;">
																								<span id="undefinedusr2390"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">데모2 대표이사 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr2485"
																									class="ui-dynatree-folder ui-dynatree-lastsib member ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">1234 대표이사 test</a></span>
																							</div>
																						</div>
																						<div>
																							<span id="undefineddept21"
																								class="ui-dynatree-folder ui-dynatree-has-children ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																								class="ui-dynatree-expander"></span><span
																								class="ui-dynatree-checkbox"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">연구부문</a></span>
																							<div style="display: none;">
																								<span id="undefinedusr31"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">관리자 부장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr2565"
																									class="ui-dynatree-folder ui-dynatree-lastsib member ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">dd테스트 부장 test</a></span>
																							</div>
																						</div>
																						<div>
																							<span id="undefineddept22"
																								class="ui-dynatree-folder ui-dynatree-has-children ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																								class="ui-dynatree-expander"></span><span
																								class="ui-dynatree-checkbox"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">대표이사</a></span>
																							<div style="display: none;">
																								<span id="undefinedusr2400"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">데모1 부장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr2838"
																									class="ui-dynatree-folder ui-dynatree-lastsib member ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">테스터1 부장 test</a></span>
																							</div>
																						</div>
																						<div>
																							<span id="undefineddept629"
																								class="ui-dynatree-folder ui-dynatree-has-children ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																								class="ui-dynatree-expander"></span><span
																								class="ui-dynatree-checkbox"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">개발팀</a></span>
																							<div style="display: none;">
																								<span id="undefinedusr3233"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">장그래 대표이사 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr3237"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">a1 부장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr2661"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">demo 부장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr3232"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">임경균 과장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr3238"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">a2 과장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr3239"
																									class="ui-dynatree-folder ui-dynatree-lastsib member ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">a3 대리 test</a></span>
																							</div>
																						</div>
																						<div>
																							<span id="undefineddept441"
																								class="ui-dynatree-folder ui-dynatree-has-children ui-dynatree-lastsib ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																								class="ui-dynatree-expander"></span><span
																								class="ui-dynatree-checkbox"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">지원부문</a></span>
																							<div style="display: none;">
																								<span id="undefinedusr2068"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-empty"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">정시현 대표이사 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr1532"
																									class="ui-dynatree-folder ui-dynatree-lastsib member ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																									class="ui-dynatree-empty"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">데모사용자 대표이사 test</a></span>
																							</div>
																						</div>
																					</div></td>
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
												<td height="8"></td>
											</tr>
											<tr>
												<td height="1" bgcolor="#efefef"></td>
											</tr>
											<tr>
												<td height="5"></td>
											</tr>
											<tr>
												<td colspan="2" align="center"><input name="input"
													type="button" value="닫기"
													style="padding: 3px 0 0 0; font-size: 11px;"
													onclick="jQuery('#sel_als').hide()"></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
				</div>


				<div id="sel_ref" sequence="0"
					style="border-width: 2px; border-style: solid; border-color: #666666; background-color: #ffffff; position: absolute; left: 0px; top: 0px; z-index: 10; PADDING: 0 0 0 0; display: none; width: 300px;">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="left_menu">
						<tbody>
							<tr>
								<td height="30" bgcolor="#f4f4f4" style="padding: 3px 0 0 20px;">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<td style="letter-spacing: -1px;"><b>승인 후 참조자 지정하기</b></td>
												<td width="22" align="left"><a href="javascript:"><img
														src="/img/webmail/bt_closelayer.gif"
														onclick="jQuery('#sel_ref').hide()"></a></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td style="padding: 10px 20px 15px 20px;">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<td height="50" valign="top" style="padding-top: 5px;">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">
														<tbody>
															<tr>
																<td align="center" valign="top">
																	<table width="100%" border="2" bordercolor="#c9c9c9"
																		cellspacing="0" cellpadding="0" height="300">
																		<tbody>
																			<tr>
																				<td height="30" bgcolor="#ececec"
																					style="border-bottom: 1px #c9c9c9 solid; padding: 0 0 0 12px;">
																					<!--기능TB START-->
																					<table width="100%" border="0" cellspacing="0"
																						cellpadding="0">
																						<tbody>
																							<tr>
																								<td align="left">
																									<table border="0" cellspacing="0"
																										cellpadding="0">
																										<tbody>
																											<tr>
																												<td><a
																													href="javascript:_expand('_appref_menu', true)"><img
																														src="/img/organ/bt_open_folder.gif"></a></td>
																												<td width="5"></td>
																												<td><a
																													href="javascript:_expand('_appref_menu', false)"><img
																														src="/img/organ/bt_close_folder.gif"></a></td>
																												<td width="5"></td>
																											</tr>
																										</tbody>
																									</table>
																								</td>
																								<td align="right" style="padding: 0 12px 0 0;">&nbsp;</td>
																							</tr>
																						</tbody>
																					</table> <!--기능TB END-->
																				</td>
																			</tr>
																			<tr>
																				<td align="left" valign="top"
																					style="padding: 10px 10px 5px 10px;"
																					id="_appref_menu"><div
																						class="ui-dynatree-container">
																						<span id="undefinedroot"
																							class="ui-dynatree-folder ui-dynatree-expanded ui-dynatree-has-children ui-dynatree-lastsib ui-dynatree-exp-el ui-dynatree-ico-ef"
																							style="display: none;"><span
																							class="ui-dynatree-expander"></span><span
																							class="ui-dynatree-checkbox"></span><span
																							class="ui-dynatree-icon"></span><a href="#"
																							class="ui-dynatree-title">null</a></span>
																						<div>
																							<span id="undefineddept20"
																								class="ui-dynatree-folder ui-dynatree-has-children ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																								class="ui-dynatree-expander"></span><span
																								class="ui-dynatree-checkbox"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">전무</a></span>
																							<div style="display: none;">
																								<span id="undefinedusr2390"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">데모2 대표이사 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr2485"
																									class="ui-dynatree-folder ui-dynatree-lastsib member ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">1234 대표이사 test</a></span>
																							</div>
																						</div>
																						<div>
																							<span id="undefineddept21"
																								class="ui-dynatree-folder ui-dynatree-has-children ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																								class="ui-dynatree-expander"></span><span
																								class="ui-dynatree-checkbox"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">연구부문</a></span>
																							<div style="display: none;">
																								<span id="undefinedusr31"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">관리자 부장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr2565"
																									class="ui-dynatree-folder ui-dynatree-lastsib member ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">dd테스트 부장 test</a></span>
																							</div>
																						</div>
																						<div>
																							<span id="undefineddept22"
																								class="ui-dynatree-folder ui-dynatree-has-children ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																								class="ui-dynatree-expander"></span><span
																								class="ui-dynatree-checkbox"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">대표이사</a></span>
																							<div style="display: none;">
																								<span id="undefinedusr2400"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">데모1 부장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr2838"
																									class="ui-dynatree-folder ui-dynatree-lastsib member ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">테스터1 부장 test</a></span>
																							</div>
																						</div>
																						<div>
																							<span id="undefineddept629"
																								class="ui-dynatree-folder ui-dynatree-has-children ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																								class="ui-dynatree-expander"></span><span
																								class="ui-dynatree-checkbox"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">개발팀</a></span>
																							<div style="display: none;">
																								<span id="undefinedusr3233"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">장그래 대표이사 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr3237"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">a1 부장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr2661"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">demo 부장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr3232"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">임경균 과장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr3238"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">a2 과장 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr3239"
																									class="ui-dynatree-folder ui-dynatree-lastsib member ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																									class="ui-dynatree-vline"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">a3 대리 test</a></span>
																							</div>
																						</div>
																						<div>
																							<span id="undefineddept441"
																								class="ui-dynatree-folder ui-dynatree-has-children ui-dynatree-lastsib ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																								class="ui-dynatree-expander"></span><span
																								class="ui-dynatree-checkbox"></span><span
																								class="ui-dynatree-icon"></span><a href="#"
																								class="ui-dynatree-title">지원부문</a></span>
																							<div style="display: none;">
																								<span id="undefinedusr2068"
																									class="ui-dynatree-folder member ui-dynatree-exp-c ui-dynatree-ico-cf"><span
																									class="ui-dynatree-empty"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">정시현 대표이사 test</a></span>
																							</div>
																							<div style="display: none;">
																								<span id="undefinedusr1532"
																									class="ui-dynatree-folder ui-dynatree-lastsib member ui-dynatree-exp-cl ui-dynatree-ico-cf"><span
																									class="ui-dynatree-empty"></span><span
																									class="ui-dynatree-connector"></span><span
																									class="ui-dynatree-checkbox"></span><span
																									class="ui-dynatree-icon"></span><a href="#"
																									class="ui-dynatree-title">데모사용자 대표이사 test</a></span>
																							</div>
																						</div>
																					</div></td>
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
												<td height="8"></td>
											</tr>
											<tr>
												<td height="1" bgcolor="#efefef"></td>
											</tr>
											<tr>
												<td height="5"></td>
											</tr>
											<tr>
												<td colspan="2" align="center"><input name="input"
													type="button" value="닫기"
													style="padding: 3px 0 0 0; font-size: 11px;"
													onclick="jQuery('#sel_ref').hide()"></td>
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
											<td>
												<input type="button" value="작성완료" onclick="check()">
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