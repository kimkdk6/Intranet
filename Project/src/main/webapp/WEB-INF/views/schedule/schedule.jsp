<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		일정관리 <small>Se7en Internatinal</small>
	</h1>
	<!-- 	<ol class="breadcrumb"> -->
	<!-- 		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li> -->
	<!-- 		<li class="active">Calendar</li> -->
	<!-- 	</ol> -->
</section>

<!-- Main content -->
<section class="content">
	<div class="row">  
		<div class="col-md-3">
			<div class="box box-solid">
				<div class="box-header with-border">
					<h4 class="box-title">부서</h4>
				</div>
				<div class="box-body">
					<!-- the events -->
					<div id='external-events'>
						<c:forEach items="${getSchCategoryDept}" var="d" varStatus="bs">
                     <div class='external-event' style="color:#fff; background-color:${d.color};">${d.catename}</div>
                  </c:forEach>
					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /. box -->

			<div class="box box-solid">
				<div class="box-header with-border">
					<h4 class="box-title">팀</h4>
				</div>
				<div class="box-body">
					<!-- the events -->
					<div id='external-events'>
						<c:forEach items="${getSchCategoryTeam}" var="t" varStatus="bs">
                     <div class='external-event' style="color:#fff; background-color:${t.color};">${ t.catename }</div>
                  </c:forEach>
					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /. box -->

			<div class="box box-solid">
				<div class="box-header with-border">
					<h4 class="box-title">개인</h4>
				</div>
				<div class="box-body">
					<!-- the events -->
					<div id='external-events'>
						<c:forEach items="${getSchCategoryUser}" var="u" varStatus="bs">
                     <div class='external-event' style="color:#fff; background-color:${u.color};">${ u.catename }</div>
                  </c:forEach>

					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /. box -->


			<div class="box box-solid">
				<div class="box-header with-border">
					<h4 class="box-title">카테고리 설정</h4>
				</div>
				<div class="box-body">
					<!-- the events -->
					<div id='external-events'>
						<!-- 						<div class='external-event bg-yellow'>여자친구 만나는날</div> -->

						<div>
							<div align="center" style="width: 100%;">
								<button id="add-category" type="button"
									class="btn btn-primary btn-flat bg-gold">카테고리 추가</button>
								<button id="delete-category" type="button"
									class="btn btn-primary btn-flat bg-gold">카테고리 삭제</button>
							</div>

						</div>
					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /. box -->

		</div>
		<!-- /.col -->
		<div class="col-md-9">
			<div class="box box-primary">
				<div class="box-body no-padding">
					<!-- THE CALENDAR -->
					<div id="calendar"></div>
					
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /. box -->
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
</section>
<!-- /.content -->

<!-- 스케줄 추가 -->
<div id="_schedule_desc" width="100%" border="0" cellspacing="0" cellpadding="0" class="left_menu" title="일정추가하기">
	<form id="_schedule_form" name="_schedule_layer" action="">
	<input type="hidden" id="scstart" name="scstart"/>
	<input type="hidden" id="scend" name="scend"/>
	<input type="hidden" id="userid" name="userid" value="${sessionScope.userid}"/>
		<table id="_schedule_table" width="100%" border="0" cellspacing="0" cellpadding="0" class="left_menu">
			<tbody>
				<tr>
					<td style="padding: 10px 20px 15px 20px;">
						<table width="100%">
							<tbody>
								<tr>
									<td width="65" height="25" style="letter-spacing: 0px; padding-top: 5px;">카테고리</td>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tbody>
												<tr>
													<td width="100%" align="left" style="padding-left: 8px;">
														<select  id="catecode" name="catecode" onchange="chg_category();">
															<option selected disabled="disabled">선택하세요</option>
															<option disabled="disabled">부서 일정</option>	
															<c:forEach items="${getSchCategoryDept}" var="c" varStatus="bs">
																<option value="${c.catecode }" style="color:#fff; background-color:${c.color};">${c.catename}</option> 
															</c:forEach>
															<option disabled="disabled">팀 일정</option>	
															<c:forEach items="${getSchCategoryTeam}" var="c" varStatus="bs">
																<option value="${c.catecode }" style="color:#fff; background-color:${c.color};">${c.catename}</option>
															</c:forEach>
															<option disabled="disabled">개인 일정</option>	
															<c:forEach items="${getSchCategoryUser}" var="c" varStatus="bs">
																<option value="${c.catecode }" style="color:#fff; background-color:${c.color};">${c.catename}</option>
															</c:forEach>
<!-- 															<option value="72" data-catename="회사일정" style="color:#fff; background-color:#44be1e;" selected="selected">회사일정</option> -->
<!-- 															<option value="74" data-catename="개인"style="color:#fff; background-color:#4b4b4b;">개인</option> -->
<!-- 															<option value="2157" data-catename="테스트" style="color:#fff; background-color:#b4b4b4;">테스트</option> -->
<!-- 															<option value="2357" data-catename="장혜졍씨" style="color:#fff; background-color:#6e9cf2;">장혜졍씨</option> -->
<!-- 															<option value="2359" data-catename="김덕경씨" style="color:#fff; background-color:#6e9cf2;">김덕경씨</option> -->
														</select> 
													<span id="schedule_category_str"></span>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
								<tr>
								<tr>
									<td height="10"></td>
									<td></td>
								</tr>
								<tr>
									<td width="65" height="25" style="letter-spacing: 0px; padding-top: 5px;">시작일</td>
									<td width="">
										
										<input type="text" id="startdate" name="startdate" class="input_date" style="width: 110px; margin-left: 7px" maxlength="10"> 
										<select id="starthh" name="starthh">
											<option value="00" selected="selected">오전 12시</option>
											<option value="01">오전 01시</option>
											<option value="02">오전 02시</option>
											<option value="03">오전 03시</option>
											<option value="04">오전 04시</option>
											<option value="05">오전 05시</option>
											<option value="06">오전 06시</option>
											<option value="07">오전 07시</option>
											<option value="08">오전 08시</option>
											<option value="09">오전 09시</option>
											<option value="10">오전 10시</option>
											<option value="11">오전 11시</option>
											<option value="12">오후 12시</option>
											<option value="13">오후 01시</option>
											<option value="14">오후 02시</option>
											<option value="15">오후 03시</option>
											<option value="16">오후 04시</option>
											<option value="17">오후 05시</option>
											<option value="18">오후 06시</option>
											<option value="19">오후 07시</option>
											<option value="20">오후 08시</option>
											<option value="21">오후 09시</option>
											<option value="22">오후 10시</option>
											<option value="23">오후 11시</option>
									</select> 
									<select  id="startmm" name="startmm">
											<option value="00" selected="selected">00 분</option>
											<option value="30">30 분</option>
									</select>
									</td>
								</tr>
								<tr>
									<td height="10"></td>
									<td></td>
								</tr>
								<tr>
								<td width="65" height="25" style="letter-spacing: 0px; padding-top: 5px;">
									종료일
								</td>
									<td width="">
									<input type="text" id="enddate" name="enddate" class="input_date" style="width: 110px; margin-left: 7px;" maxlength="10"> 
									<select id="endhh" name="endhh">
											<option value="00" selected="selected">오전 12시</option>
											<option value="01">오전 01시</option>
											<option value="02">오전 02시</option>
											<option value="03">오전 03시</option>
											<option value="04">오전 04시</option>
											<option value="05">오전 05시</option>
											<option value="06">오전 06시</option>
											<option value="07">오전 07시</option>
											<option value="08">오전 08시</option>
											<option value="09">오전 09시</option>
											<option value="10">오전 10시</option>
											<option value="11">오전 11시</option>
											<option value="12">오후 12시</option>
											<option value="13">오후 01시</option>
											<option value="14">오후 02시</option>
											<option value="15">오후 03시</option>
											<option value="16">오후 04시</option>
											<option value="17">오후 05시</option>
											<option value="18">오후 06시</option>
											<option value="19">오후 07시</option>
											<option value="20">오후 08시</option>
											<option value="21">오후 09시</option>
											<option value="22">오후 10시</option>
											<option value="23">오후 11시</option>
									</select> 
									<select id="endmm" name="endmm">
											<option value="00" selected="selected">00 분</option>
											<option value="30">30 분</option>
									</select>
									</td>
								</tr>
								

								<tr>
									<td height="10"></td>
									<td></td>
								</tr>
								
								<tr>
									<td height="20" valign="top" style="padding-top: 5px;">제목</td>
									<td><input type="text" id="sctitle" name="sctitle" class="input_date" style="width: 100%; margin-left: 7px;">
									</td>
								</tr>
								<tr>
									<td height="10"></td>
									<td></td>
								</tr>

								<tr>
									<td height="20" valign="top" style="padding-top: 5px;">내용</td>
									<td>
										<textarea id ="sccontent" name="sccontent" class="input_type1" style="width: 100%; height: 160px; overflow: auto; margin-left: 7px">
										</textarea>
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

<!-- 스케줄 확인 -->
<div id="_schedule_view" width="100%" border="0" cellspacing="0" cellpadding="0" class="left_menu" title="일정확인하기">
	<form id="_read_schedule_form" name="_read_schedule_form">
		<table id="_read_schedule_table" width="100%" border="0" cellspacing="0" cellpadding="0" class="left_menu">
			<tbody>
				<tr>
					<td style="padding: 10px 20px 15px 20px;">
						<table width="100%">
							<tbody>
							
								
								<tr>
									<td width="65" height="25" style="letter-spacing: 0px; padding-top: 5px;">카테고리</td>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tbody>
												<tr>
													<td width="100%" align="left">
														<input type="text" id="readcatename" name="readcatename" class="input_date" style="width: 100%; margin-left: 7px">
													<span id="schedule_category_str"></span>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
								<tr>
								<tr>
									<td height="10"></td>
									<td></td>
								</tr>
								<tr>
									<td width="65" height="25" style="letter-spacing: 0px; padding-top: 5px;">시작일</td>
									<td width="">
										<input type="text" id="readstartdate" name="readstartdate" class="input_date" readonly="readonly" style="width: 200px; margin-left: 7px" maxlength="10"> 
									</td>
								</tr>
								<tr>
									<td height="10"></td>
									<td></td>
								</tr>
								<tr>
								<td width="65" height="25" style="letter-spacing: 0px; padding-top: 5px;">
									종료일
								</td>
									<td width="">
									<input type="text" right="owner" id="readenddate" name="readenddate" readonly="readonly" class="input_date" style="width: 200px; margin-left: 7px;" maxlength="10"> 
									</td>
								</tr>
								

								<tr>
									<td height="10"></td>
									<td></td>
								</tr>
								
								<tr>
									<td height="20" valign="top" style="padding-top: 5px;">제목</td>
									<td><input type="text" id="readsctitle" name="readsctitle" readonly="readonly" class="input_date" style="width: 100%; margin-left: 7px;">
									</td>
								</tr>
								<tr>
									<td height="10"></td>
									<td></td>
								</tr>

								<tr>
									<td height="20" valign="top" style="padding-top: 5px;">내용</td>
									<td>
										<textarea id="readsccontent" name="readsccontent" class="input_type1" readonly="readonly" style="width: 100%; height: 160px; overflow: auto; margin-left: 7px">
										</textarea>
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

<!-- 카테고리 추가 -->
<div id="_category_desc" title="새 카테고리 등록">
	<form id="_category_form" name="category_layer"
		action="<%=request.getContextPath()%>/schedule/insertCategory.htm">
		<table width="100%" border="0" cellspacing="0" cellpadding="0"
			class="left_menu">
			<tbody>
				<tr>
					<!--     <td height="30" id="cat_title_background" bgcolor="#f4f4f4" style="padding: 3px 0px 0px 20px; background-color: rgb(110, 156, 242);">  -->
					<!--       <table width="100%" border="0" cellspacing="0" cellpadding="0">  -->
					<!--         <tbody><tr>  -->
					<!--           <td style="letter-spacing:-1px;font-weight:bold;color:#fff;" id="cat_layer_title">새 카테고리 만들기</td>  -->
					<!--           <td width="22" align="left"><a href="javascript:"><img src="/img/webmail/bt_closelayer.gif" onclick="jQuery('#_category_desc').gbxHide();"></a></td>  -->
					<!--         </tr>  -->
					<!--       </tbody></table></td>  -->
				</tr>
				<tr>
					<td style="padding: 10px 20px 15px 20px;">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tbody>
								<tr>
									<td width="85" height="20" style="letter-spacing: 0px;">카테고리명</td>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tbody>
												<tr>
													<td width="" id="name_container" bgcolor="#638cd9" style="background-color: rgb(110, 156, 242);">
														<input id="catename" name="catename" type="text" class="input_trans" style="width: 100%;" title="카테고리명">
													</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
								<tr>
									<td height="3"></td>
									<td></td>
								</tr>
								<tr>
									<td height="50" valign="top" style="padding-top: 5px;">설명</td>
									<td>
										<textarea id="id_content" title="내용" name="catecontent" class="input_type1" style="width: 100%; height: 48px; overflow: auto;"></textarea>
									</td>
								</tr>
								<tr>
									<td height="3"></td>
									<td></td>
								</tr>
								<!-- 공유 설정 -->
								<tr>
									<td colspan="2" height="1" bgcolor="#efefef"></td>
								</tr>
								<tr>
									<td height="20" valign="top" style="padding-top: 5px;">일정
										분류</td>
									<td><label title="같은 회사 직원과 일정을 공유합니다."><input
											type="radio" name="cateshare" id="cateshare" value="d">부서 일정 </label> &nbsp;
										<label title="같은 부서 직원과 일정을 공유합니다."><input
											type="radio" name="cateshare" id="cateshare" value="t">팀 일정 </label> &nbsp;
										<label title="해당 카테고리 일정은 개인 일정입니다."><input
											type="radio" name="cateshare" id="cateshare" value="u" checked="checked">개인
											일정 </label></td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
				<tr>
					<td><select id="catecode2" name="catecode2"
						onchange="chg_categoryIns();" style="width: 400px">
							<option selected disabled="disabled">선택하세요</option>
							<option value="#CC3D3D" style="background-color: #CC3D3D">Se7en
								International</option>
							<option value="#CC723D" style="background-color: #CC723D">Se7en
								International</option>
							<option value="#CCA63D" style="background-color: #CCA63D">Se7en
								International</option>
							<option value="#C4B73B" style="background-color: #C4B73B">Se7en
								International</option>
							<option value="#9FC93C" style="background-color: #9FC93C">Se7en
								International</option>
							<option value="#47C83E" style="background-color: #47C83E">Se7en
								International</option>
							<option value="#3DB7CC" style="background-color: #3DB7CC">Se7en
								International</option>
							<option value="#6799FF" style="background-color: #6799FF">Se7en
								International</option>
							<option value="#6B66FF" style="background-color: #6B66FF">Se7en
								International</option>
							<option value="#A566FF" style="background-color: #A566FF">Se7en
								International</option>
							<option value="#F361DC" style="background-color: #F361DC">Se7en
								International</option>
							<option value="#F361A6" style="background-color: #F361A6">Se7en
								International</option>
							<option value="#A6A6A6" style="background-color: #A6A6A6">Se7en
								International</option>
							<option value="#5D5D5D" style="background-color: #5D5D5D">Se7en
								International</option>
					</select> <!-- </div> --> 
					</td>
			</tbody>
		</table>
	</form>
</div>

<!-- 카테고리 삭제  -->
<div id="_category_delete" title="카테고리 삭제">
	<form id="_category_delform" name="category_layer" action="<%=request.getContextPath()%>/schedule/deleteCategory.htm">
		<table width="100%" border="0" cellspacing="0" cellpadding="0"
			class="left_menu">
			<tbody>
				<tr>
					<td style="padding: 10px 20px 15px 20px;">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tbody>
								<tr>
									<td width="65" height="25" style="letter-spacing: 0px; padding-top: 5px;">카테고리</td>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tbody>
												<tr>
													<td width="100%" align="left" style="padding-left: 8px;">
														<select  id="catecode1" name="catecode1" style="width: 300px"  onchange="chg_categoryDel();">
															<option selected disabled="disabled" style="background-color: white">선택하세요</option>
															<option disabled="disabled" style="background-color: white">부서 일정</option>															
															<c:forEach items="${getSchCategoryDept}" var="c" varStatus="bs">
																<option value="${c.catecode }" style="color:#fff; background-color:${c.color};">${c.catename}</option> 
															</c:forEach>
															<option disabled="disabled" style="background-color: white">팀 일정</option>	
															<c:forEach items="${getSchCategoryTeam}" var="c" varStatus="bs">
																<option value="${c.catecode }" style="color:#fff; background-color:${c.color};">${c.catename}</option>
															</c:forEach>
															<option disabled="disabled" style="background-color: white">개인 일정</option>	
															<c:forEach items="${getSchCategoryUser}" var="c" varStatus="bs">
																<option value="${c.catecode }" style="color:#fff; background-color:${c.color};">${c.catename}</option>
															</c:forEach>
														</select> 
													<span id="schedule_category_str"></span>
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
</div>

<script type="text/javascript">
	
	function chg_categoryDel() {
			
		//$('catecode1').css('background-color', color);
		var color = $("#catecode1 option:selected").css('background-color');
		$('#catecode1').css('background-color', color);
	}
	
	function chg_category() {
		
		//$('catecode1').css('background-color', color);
		var color = $("#catecode option:selected").css('background-color');
		$('#catecode').css('background-color', color);
	}
	
	function chg_categoryIns() {
		
		//$('catecode1').css('background-color', color);
		//var color = $("#catecode option:selected").css('background-color');
		// style="border: 3px solid black;
		var color = $("#catecode2 option:selected").css('background-color');
		$('#catecode2').css('background-color', color);
	}
	
	$(function() {
		
		var currEvent;
		
// 		$('#colorpicker').colpick({
// 			flat:true,
// 			layout:'hex',
// 			submit:0
// 		});

				
		$('#add-category').click(function(){
			$('#_category_desc').dialog('open');
		});		
		
		$('#delete-category').click(function(){
			$('#_category_delete').dialog('open');
		});		
		
		
		var defaultDate;
		$("#startdate").datepicker(
				{

					inline : true,
					dateFormat : "yy-mm-dd", /* 날짜 포맷 */
					prevText : 'prev',
					nextText : 'next',
					changeMonth : true, /* 월 선택박스 사용 */
					changeYear : true, /* 년 선택박스 사용 */
					showOtherMonths : true, /* 이전/다음 달 일수 보이기 */
					selectOtherMonths : true, /* 이전/다음 달 일 선택하기 */
					closeText : '닫기',
					currentText : '오늘',
					showMonthAfterYear : true, /* 년과 달의 위치 바꾸기 */
					/* 한글화 */
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ],
					dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
					showAnim : 'slideDown',
					/* 날짜 유효성 체크 */
					onClose : function(selectedDate) {
						$('#enddate').datepicker("option", "minDate",
								selectedDate);
					}
				});

		$("#enddate").datepicker(
				{

					inline : true,
					dateFormat : "yy-mm-dd", /* 날짜 포맷 */
					prevText : 'prev',
					nextText : 'next',
					changeMonth : true, /* 월 선택박스 사용 */
					changeYear : true, /* 년 선택박스 사용 */
					showOtherMonths : true, /* 이전/다음 달 일수 보이기 */
					selectOtherMonths : true, /* 이전/다음 달 일 선택하기 */
					closeText : '닫기',
					currentText : '오늘',
					showMonthAfterYear : true, /* 년과 달의 위치 바꾸기 */
					/* 한글화 */
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ],
					dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
					showAnim : 'slideDown',
					/* 날짜 유효성 체크 */
					onClose : function(selectedDate) {
						$('#startdate').datepicker("option", "maxDate",
								selectedDate);
					}
				});

		
		/* 스케쥴 추가 */
		var newEvent = $("#_schedule_desc").dialog({
			autoOpen : false,
			height : 500,
			width : 600,
			modal : true,
			buttons : {
				"저 장" : function() {
					var startdate = $("#startdate").val()+" "+$("#starthh").val()+":"+$("#startmm").val()+":00";
					var enddate = $("#enddate").val()+" "+$("#endhh").val()+":"+$("#endmm").val()+":00";
					
					
					$('#scstart').val(startdate);
					$('#scend').val(enddate);
					var a = $('#catecode option:selected').css('background-color');

					$("#calendar").fullCalendar('addEventSource', [ {
 						catecode: $('#catecode option:selected').val(),
						catename:  $('#catecode option:selected').text(),
						title :  $("#sctitle").val(),
						start : new Date(startdate),//년,월,일,시,분
						end : new Date(enddate),
						backgroundColor : a, //red
						borderColor : a, //red
						userid : $('#userid').val(),
						content: $('#sccontent').val()
						
					} ]);
					
					// 일정 추가 
					var formData = $("#_schedule_form").serialize();
		              /*  console.log(formData.scstart);
		               console.log(formData);
		               console.log(scstart.value);
		               console.log(formData[1]); */
		               $.ajax({
		                    Type:"POST",
		                     url:"<%= request.getContextPath() %>/schedule/insertSchedule.htm",
		                     data:formData,
		                     success:function( data ){ alert("insert Success!!");},
		                     error:function(data){alert("일정을 입력 해주세요!!");}
		               });
					
					newEvent.dialog("close");
					document.getElementById("_schedule_form").reset();
// 					document.getElementById("_schedule_form").submit();
				},
				
				
				"취 소" : function(){
					newEvent.dialog("close");
					document.getElementById("_schedule_form").reset();
					
				}
			}
		});
		
		/* 일정 확인 */
		var readEvent = $("#_schedule_view").dialog({
			autoOpen : false,
			height : 500,
			width : 600,
			modal : true,
			buttons : {
				"일정 삭제" : function() { 
					
					//console.log(currEvent);
					var schnum = currEvent.schnum;
					console.log(schnum);
					
					$.ajax({
	                	Type:"get",
	                    url:"<%= request.getContextPath() %>/schedule/deleteSchedule.htm",
	                    data:{ schnum : schnum },
	                    success:function( data ){ alert("delete Success!!");},
	                    error:function(data){alert("일정을 선택해주세요");}
	               });
					
					$('#calendar').fullCalendar( 'removeEventSource', currEvent.source );
					
					readEvent.dialog("close");
				},

				"취 소" : function() {
					readEvent.dialog("close");
				}
			}
		});
		
		/* 카테고리 추가  */
		var categoryEvent = $("#_category_desc").dialog({
			
			autoOpen : false,
			height : 290,
			width : 450,
			modal : true,
			
			buttons : {
				"확 인" : function() { 
					
					if( catename.value == "" ) {

						alert("카테고리명을 작성하세요");
					} else if( id_content.value == "" )
					{
						
						alert("카테고리 설명을 작성하세요");
					} else if( catecode2.value == "선택하세요" )
					{
						
						alert("카테고리를 선택해 주세요");
					} else {
						
						document.getElementById("_category_form").submit();
						categoryEvent.dialog("close");
					}
				},
				
				"취 소" : function(){
					//alert("cate del");
					
					document.getElementById("_category_form").reset();
					$("#_category_desc").dialog("close");
				}
			}
		});
		
		/* 카테고리 삭제 */
		var categoryEvent = $("#_category_delete").dialog({
			
			autoOpen : false,
			height : 178,
			width : 450,
			modal : true,
			
			buttons : {
				"확 인" : function() { 
					
					//var formData = $("#_category_delform").serialize();
					//console.log("aaaa" + catecode1.value);
					
					if( catecode1.value == "선택하세요" ) {
						alert("카테고리를 선택해 주세요");
					} else {
						document.getElementById("_category_delform").submit();
						categoryEvent.dialog("close");
					}
					
		           
				},
				"취 소" : function() {
					
					document.getElementById("_category_delform").reset();
					categoryEvent.dialog("close");
				}
			} 
		});
		
		var date = new Date();
		var d = date.getDate(), m = date.getMonth(), y = date.getFullYear();
		$('#calendar').fullCalendar(
				{
					header : {
						left : "prev,next today",
						center : "title",
						right : "month,basicWeek,basicDay"
					},
					monthNames : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월",
							"8월", "9월", "10월", "11월", "12월" ],
					monthNamesShort : [ "1월", "2월", "3월", "4월", "5월", "6월",
							"7월", "8월", "9월", "10월", "11월", "12월" ],
					dayNames : [ "일요일", "월요일", "화요일", "수요일", "목요일", "금요일",
							"토요일" ],
					dayNamesShort : [ "일", "월", "화", "수", "목", "금", "토" ],
// 					titleFormat : {
// 									month : "YYYY년 MMMM",
// 									week : 'YYYY년 MM월 DD일',
// 									day : "YYYY년 MMM d일 dddd"
// 								  },
					buttonText : {
						today : "오늘",
						month : "월별",
						week : "주별",
						day : "일별"
					},
					timeFormat: 'hh:mm',

					dayClick : function(date, jsEvent, view) {
						newEvent.dialog("open");
					},

					eventClick : function(calEvent, jsEvent, view) {

						var pop_start_date = moment(calEvent.start).format("YYYY-MM-DD");
						var pop_end_date = moment(calEvent.end).format("YYYY-MM-DD");
//						console.log("title: " + calEvent.title + " start: "+ pop_start_date + " end: " + pop_end_date+" content: "+calEvent.content+" userid:"+calEvent.userid);
// 						readEvent.dialog("open");
						readEvent.dialog("open",calEvent);

						var start = new Date(calEvent.start);
						var startDate = moment(calEvent.start).format("YYYY-MM-DD");
						var startHour = start.getHours();
						var startMinute = start.getMinutes();
						var startSecond = start.getSeconds();
						var resultStart = startDate+" "+startHour+":"+startMinute+":00";
						
					//	console.log(resultStart);
						
						$('#readstartdate').val(resultStart);

						var end = new Date(calEvent.end);
						var endDate = moment(calEvent.end).format("YYYY-MM-DD");
						var endHour = end.getHours();
						var endMinute = end.getMinutes();
						var endSecond = end.getSeconds();
						var resultEnd = endDate+" "+endHour+":"+endMinute+":00";
						
						//console.log(resultEnd);
						
						$('#readenddate').val(resultEnd);
						
						$('#readsctitle').val(calEvent.title);
						
						//console.log(calEvent.content);
						
						$('#readsccontent').val(calEvent.content);
						
						console.log(calEvent.catename);
						
						$('#readcatename').val(calEvent.catename);
						
						currEvent = calEvent; 
						
						$( "#_schedule_view" ).dialog('open');
						
					},	

					editable : false,
					droppable : false, 

				});//캘린더 끝
				
		// 일정 추가		
		var userid = { userid : $('#userid').val() };
        $.ajax({
              Type:"get",
              url:"<%= request.getContextPath() %>/schedule/getSchedule.htm",
              dataType:"json",
              data:userid,
              success:function( data ){
                  
                 $.each(data.schedule, function(){
					//console.log("bbbbb : " + this.scstart);
                    $("#calendar").fullCalendar( 'addEventSource', [ {
                       schnum : this.schnum,
                   	   catecode:this.catecode,
                       catename:this.catename,
                       title : this.sctitle,
                       start : new Date(this.scstart), //년,월,일,시,분
                       end : new Date(this.scend), //년,월,일,시,분
                       backgroundColor : this.color, //red
                       borderColor :  this.color, //red
                       userid : this.userid,
                       content: this.sccontent

                   } ] );
                    
                 });
                 
              },
              error:function(data){alert("Error 발생");}
           });
	});
</script>

<script type="text/javascript">
	//function 

	/* initialize the external events 
	 // 외부 이벤트들을 초기화한다.
	 -----------------------------------------------------------------*/
	//function ini_events(ele) { //$('h3').each(function(index,item))
	//	ele.each(function() { //  each는 반복문..
	//		// create an Event Object 
	//		// 이벤트 객체를 생성한다.
	//		// it doesn't need to have a start or end
	//		// 시작 이나 끝이 필요하지 않다.(??)
	//		var eventObject = {
	//			title : $.trim($(this).text())
	//		// use the element's text as the event title
	//		// 엘리먼트의 text 값을 이벤트 제목으로 사용	
	//		};
	//		// store the Event Object in the DOM element so we can get to it later
	//		$(this).data('eventObject', eventObject);
	//		// make the event draggable using jQuery UI
	//		$(this).draggable({
	//			zIndex : 1070,
	//			revert : true, // will cause the event to go back to its
	//			revertDuration : 0
	//		//  original position after the drag
	//		});
	//	});
	//}
	//       ini_events($('#external-events div.external-event'));
	//	events : [ {
	//	title : '이벤트 테스트',
	//	start : new Date(y, m, 1, 12, 30),//년,월,일,시,분
	//	end : new Date(y, m, 5, 12, 30),
	//// 						url: 'http://google.com/',//URL
	//// 						allDay: false,//하루종일
	//	backgroundColor : "#f56954", //red
	//	borderColor : "#f56954" //red
	//} ],
	//	drop : function(date, allDay) { // this function is called when something is dropped
	//	// retrieve the dropped element's stored Event Object
	//	var originalEventObject = $(this).data('eventObject');
	//	// we need to copy it, so that multiple events don't have a reference to the same object
	//	var copiedEventObject = $.extend({},
	//			originalEventObject);
	//	// assign it the date that was reported
	//	copiedEventObject.start = date;
	//	copiedEventObject.allDay = allDay;
	//	copiedEventObject.backgroundColor = $(this).css(
	//			"background-color");
	//	copiedEventObject.borderColor = $(this).css(
	//			"border-color");
	//	// render the event on the calendar
	//	// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
	//	$('#calendar').fullCalendar('renderEvent',copiedEventObject, true);
	//	// is the "remove after drop" checkbox checked?
	//// 						if ($('#drop-remove').is(':checked')) {
	//// 							// if so, remove the element from the "Draggable Events" list
	//// 							$(this).remove();
	//// 						}
	//}
	
	
	/* ADDING EVENTS */
	//	var currColor = "#3c8dbc"; //Red by default
	//	//Color chooser button
	//	var colorChooser = $("#color-chooser-btn");
	//	$("#color-chooser > li > a").click(function(e) {
	//		e.preventDefault();
	//		//Save color
	//		currColor = $(this).css("color");
	//		//Add color effect to button
	//		$('#add-new-event').css({
	//			"background-color" : currColor,
	//			"border-color" : currColor
	//		});
	//	});
	
	
	//	$("#add-new-event").click(function(e) {
	//		e.preventDefault();
	//		//Get value and make sure it is not null
	//		var val = $("#new-event").val();
	//		if (val.length == 0) {
	//			return;
	//		}
	//		//Create events
	//		var event = $("<div />");
	//		event.css({
	//			"background-color" : currColor,
	//			"border-color" : currColor,
	//			"color" : "#fff"
	//		}).addClass("external-event");
	//		event.html(val);
	//		$('#external-events').prepend(event);
	//		//Add draggable funtionality
	//		ini_events(event);
	//		//Remove event from text input
	//		$("#new-event").val("");
	//	});
</script>
