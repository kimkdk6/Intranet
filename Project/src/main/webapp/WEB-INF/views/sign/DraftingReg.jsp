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
				<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
				<script src="//code.jquery.com/jquery-1.10.2.js"></script>
				<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> -->
				

				<!-- ck 에디터 -->
				<!-- <script type="text/javascript" src="../resources/plugins/ckeditor/ckeditor.js"></script> -->
				<!-- ck 에디터 끝 -->
				
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
						$("#dialog1").dialog({
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
						$("#dialog2").dialog({
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
						$("#dialog3").dialog({
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
						$("#opener1").click(function() {
							$("#dialog1").dialog("open");
						});
						$("#opener2").click(function() {
							$("#dialog1").dialog("open");
						});
						$("#opener3").click(function() {
							$("#dialog1").dialog("open");
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

					
				</script>
				
					<style>
  						.ui-menu { width: 200px; }
  						.ui-widget-header { padding: 0.2em; }
  					</style>
					
					
					
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
      																					<c:forEach items="${team}" var="t">
      																						<c:if test="${t.teamcode == e.teamcode }">
      																							<c:forEach items="${pos}" var="p">
      																								<c:if test="${p.poscode == e.poscode}">
      																									<i class="fa fa-fw fa-user-plus"></i> 
	      																								${t.teamname} ${e.ename} ${p.posname }
	      																								<input type="button" value="지정" onclick="check()"><hr>
      																								</c:if>
      																							</c:forEach>
      																						</c:if>
      																					</c:forEach>
	      																				
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
	      																								<input type="button" value="지정" onclick="check()"><hr>
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
																<button id="opener1">지정</button>
															</td>
															
															
															<td style="border-bottom: 1px #eaeaea solid;">
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
	      																								<input type="button" value="지정" onclick="check()"><hr>
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
																<button id="opener2">지정</button>
															</td>
															<td style="border-bottom: 1px #eaeaea solid;">
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
	      																								<input type="button" value="지정" onclick="check()"><hr>
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
																<button id="opener3">지정</button>
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