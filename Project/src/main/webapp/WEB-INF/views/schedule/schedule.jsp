<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
						<div class='external-event bg-red'>새로운 부장님 오시는날</div>
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
						<div class='external-event bg-green'>점심식사</div>
						<div class='external-event bg-black'>95기 회식</div>
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
						<div class='external-event bg-yellow'>여자친구 만나는날</div>

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
								<button id="add-new-event" type="button"
									class="btn btn-primary btn-flat bg-gold">카테고리 추가</button>
								<button id="add-new-event" type="button"
									class="btn btn-primary btn-flat bg-gold">카테고리 삭제</button>
							</div>

						</div>
					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /. box -->

			<!-- 			<div class="box box-solid"> -->
			<!-- 				<div class="box-header with-border"> -->
			<!-- 					<h3 class="box-title">Create Event</h3> -->
			<!-- 				</div> -->
			<!-- 				<div class="box-body"> -->
			<!-- 					<div class="btn-group" style="width: 100%; margin-bottom: 10px;"> -->
			<!-- 						<button type="button" id="color-chooser-btn" class="btn btn-info btn-block dropdown-toggle" data-toggle="dropdown">Color <span class="caret"></span></button> -->
			<!-- 						<ul class="fc-color-picker" id="color-chooser"> -->
			<!-- 							<li><a class="text-aqua" href="#"><i -->
			<!-- 									class="fa fa-square"></i></a></li> -->
			<!-- 							<li><a class="text-blue" href="#"><i -->
			<!-- 									class="fa fa-square"></i></a></li> -->
			<!-- 							<li><a class="text-light-blue" href="#"><i -->
			<!-- 									class="fa fa-square"></i></a></li> -->
			<!-- 							<li><a class="text-teal" href="#"><i -->
			<!-- 									class="fa fa-square"></i></a></li> -->
			<!-- 							<li><a class="text-yellow" href="#"><i -->
			<!-- 									class="fa fa-square"></i></a></li> -->
			<!-- 							<li><a class="text-orange" href="#"><i -->
			<!-- 									class="fa fa-square"></i></a></li> -->
			<!-- 							<li><a class="text-green" href="#"><i -->
			<!-- 									class="fa fa-square"></i></a></li> -->
			<!-- 							<li><a class="text-lime" href="#"><i -->
			<!-- 									class="fa fa-square"></i></a></li> -->
			<!-- 							<li><a class="text-red" href="#"><i class="fa fa-square"></i></a></li> -->
			<!-- 							<li><a class="text-purple" href="#"><i -->
			<!-- 									class="fa fa-square"></i></a></li> -->
			<!-- 							<li><a class="text-fuchsia" href="#"><i -->
			<!-- 									class="fa fa-square"></i></a></li> -->
			<!-- 							<li><a class="text-muted" href="#"><i -->
			<!-- 									class="fa fa-square"></i></a></li> -->
			<!-- 							<li><a class="text-navy" href="#"><i -->
			<!-- 									class="fa fa-square"></i></a></li> -->
			<!-- 						</ul> -->
			<!-- 					</div> -->
			<!-- 					/btn-group -->
			<!-- 					<div class="input-group"> -->
			<!-- 						<input id="new-event" type="text" class="form-control" -->
			<!-- 							placeholder="Event Title"> -->
			<!-- 						<div class="input-group-btn"> -->
			<!-- 							<button id="add-new-event" type="button" -->
			<!-- 								class="btn btn-primary btn-flat">Add</button> -->
			<!-- 						</div> -->
			<!-- 						/btn-group -->
			<!-- 					</div> -->
			<!-- 					/input-group -->
			<!-- 				</div> -->
			<!-- 			</div> -->




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


<div id="_schedule_desc" width="100%" border="0" cellspacing="0" cellpadding="0" class="left_menu" title="일정추가하기">
	<form id="_schedule_form" name="_schedule_layer">
	<input type="hidden" id="scstart" name="scstart"/>
	<input type="hidden" id="scend" name="scend"/>
	<input type="hidden" id="userid" name="userid" value="${userid}"/>
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
														<select  id="catecode" name="catecode">
															<option value="72" style="color:#fff; background-color:#44be1e;" selected="selected">회사일정</option>
															<option value="74" style="color:#fff; background-color:#4b4b4b;">개인</option>
															<option value="2157" style="color:#fff; background-color:#b4b4b4;">테스트</option>
															<option value="2357" style="color:#fff; background-color:#6e9cf2;">장혜졍씨</option>
															<option value="2359" style="color:#fff; background-color:#6e9cf2;">김덕경씨</option>
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
									<select id="endmm" name="endhh">
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
														<input type="text" id="readcatecode" name="readcatecode" class="input_date" style="width: 100%; margin-left: 7px">
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


<script src="<%=request.getContextPath()%>/resources/plugins/schecule/jquery-ui-1.11.4.custom/jquery-ui.js" type="text/javascript"></script>
<link href="<%=request.getContextPath()%>/resources/plugins/schecule/jquery-ui-1.11.4.custom/jquery-ui.css" type="text/css" />
<script src="<%=request.getContextPath()%>/resources/plugins/fullcalendar/fullcalendar.js" type="text/javascript"></script>
<link href="<%=request.getContextPath()%>/resources/plugins/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/resources/plugins/fullcalendar/fullcalendar.print.css" rel="stylesheet" type="text/css" media='print'/>

<script type="text/javascript">
	$(function() {
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

		var newEvent = $("#_schedule_desc").dialog({
			autoOpen : false,
			height : 500,
			width : 600,
			modal : true,
			buttons : {
				"저 장" : function() {

				},
				"취 소" : function() {
					document.getElementById("_schedule_form").reset();
					newEvent.dialog("close")
					// 		  	      form("_schedule_form").reset();
					// 		          allFields.removeClass( "ui-state-error" );
				}
			}
		});
		
		var readEvent = $("#_schedule_view").dialog({
			autoOpen : false,
			height : 500,
			width : 600,
			modal : true,
			buttons : {
				"일정 삭제" : function() {
					readEvent.dialog("close");
				},
				"일정 수정" : function() {
					readEvent.dialog("close");
				},
				"취 소" : function() {
					readEvent.dialog("close");
				}
			}
		});
		
		/* initialize the calendar
		 -----------------------------------------------------------------*/
		//Date for the calendar events (dummy data)
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
					// 						month : "YYYY년 MMMM",
					// 						week : 'YYYY년 MM월 DD일',
					// 						day : "YYYY년 MMM d일 dddd"
					// 					},
					buttonText : {
						today : "오늘",
						month : "월별",
						week : "주별",
						day : "일별"
					},

					dayClick : function(date, jsEvent, view) {
						//alert('Clicked on: ' + date.format());
						//$( "#startdate" ).datepicker( "option", "defaultDate", defaultDate );
						//   $( "#startdate" ).datepicker( "setDate", date);
						newEvent.dialog("open");

						// 				        $("#calendar").fullCalendar( 'addEventSource', [{
						// 				        	title : '이벤트 테스트2',
						// 							start : new Date(y, m, 3, 12, 30),//년,월,일,시,분
						// 							end : new Date(y, m, 4, 12, 30),
						// //	 						url: 'http://google.com/',//URL
						// //	 						allDay: false,//하루종일
						// 							backgroundColor : "#f56954", //red
						// 							borderColor : "#f56954" //red
						// 							} ]);

						// 				       $("#schedule_insert").diolog("open");
						// 				       alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
						// 				       alert('Current view: ' + view.name);
						// 				       change the day's background color just for fun
						// 				       $(this).css('background-color', 'red');

					},

					eventClick : function(calEvent, jsEvent, view) {

						var pop_start_date = moment(calEvent.start).format("YYYY-MM-DD");
						var pop_end_date = moment(calEvent.end).format("YYYY-MM-DD");
						console.log("title: " + calEvent.title + " start: "+ pop_start_date + " end: " + pop_end_date);
						readEvent.dialog("open");
					},

					editable : false,
					droppable : false, // this allows things to be dropped onto the calendar !!!

				});//캘린더 끝

		$("#calendar").fullCalendar('addEventSource', [ {
			title : '이벤트 테스트2',
			start : new Date(y, m, 3, 12, 30),//년,월,일,시,분
			end : new Date(y, m, 4, 12, 30),
			//	 						url: 'http://google.com/',//URL
			//	 						allDay: false,//하루종일
			backgroundColor : "#f56954", //red
			borderColor : "#f56954" //red
		} ]);
				
				
		var userid = { userid : $('#userid').val() };
	       $.ajax({
	             Type:"get",
	             url:"<%= request.getContextPath() %>/schedule/getSchedule.htm",
	             dataType:"json",
	             data:userid,
	             success:function( data ){
	                 
	                $.each(data.schedule, function(){
	                   var a = this;
	                   var b = data.schcategory;
	                   $("#calendar").fullCalendar( 'addEventSource', [ {
	                     title : a.sctitle,
	                      start : new Date(y, m, 09, 12, 30), //년,월,일,시,분
	                      end : new Date(y, m, 12, 12, 30), //년,월,일,시,분
	                      backgroundColor : b.color, //red
	                      borderColor : b.color, //red
//	                       userid : this.userid,
//	                       contents : "aaaa"
	                  } ] );
	                   
	                                   
	                });
	              /*   $('#Team *').remove();    
	                    $('#Team').append(toptions); */
	                
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
