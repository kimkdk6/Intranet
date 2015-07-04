<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		 근태 관리 <small>Se7en Internatinal</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">출퇴근 체크</li>
	</ol><hr style=	"border-color: white;" >
</section>
<!-- Main content -->
<section class="content">
	<input type="hidden" id="userid" name="userid" value="${sessionScope.myemp.userid}"/>
	<div class="row">
		<div style="height: 800px">
			<div class="col-md-3">
				<div class="box box-solid">
					<div class="box-header with-border" style="background-color: #dd4b39">
						<h4 class="box-title">휴가</h4>
					</div>
				</div>
				<!-- /. box -->
				<div class="box box-solid">
					<div class="box-header with-border" style="background-color: #3c8dbc">
						<h4 class="box-title">출장</h4>
					</div>
				</div>
				<!-- /. box -->
				<div class="box box-solid">
					<div class="box-header with-border" style="background-color: #00a65a">
						<h4 class="box-title">조퇴</h4>
					</div>
				</div>
				<!-- /. box -->
				<div class="box box-solid">
					<div class="box-header with-border" style="background-color: #00c0ef">
						<h4 class="box-title">지각</h4>
					</div>
				</div>
				<!-- /. box -->
				<div class="box box-solid">
					<div class="box-header with-border" style="background-color: #f39c12">
						<h4 class="box-title">결근</h4>
					</div>
				</div>
				<!-- /. box -->
				
			</div>
			<!-- /.col -->
			<div class="col-md-9">
				<div class="box box-primary">
					<div class="box-body no-padding">
						<!-- THE CALENDAR -->
						<div id="calendar">
													
						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /. box -->
			</div>
			<!-- /.col -->
		</div>
	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
<script type="text/javascript">
	
	$(function () {
	
		
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
					timeFormat: 'hh:mm:ss',

					editable : false,
					droppable : false, 

				});//캘린더 끝
				
			/* 	var aa = "2015-07-04 11:06:54";
			$("#calendar").fullCalendar('addEventSource', [ {
		         title : '이벤트 테스트2',
		         start : new Date(aa),//년,월,일,시,분
		         end : new Date(aa),
		         backgroundColor : "#f56954", //red
		         borderColor : "#f56954", //red
		         userid : '김성익',
		         content: '시부랄 탱탱부랄'
		      } ]); */
				
		$.ajax({
            Type:"get",
            url:"<%= request.getContextPath() %>/attendance/getCommute.htm",
            dataType:"json",
            //data:userid,
            success:function( data ){
            	$.each(data.Leave, function(){
              	$("#calendar").fullCalendar( 'addEventSource', [ {
                     	title : this.lvreason,
                     	start : new Date(this.attdate), //년,월,일,시,분
                     	end : new Date(this.attdate), //년,월,일,시,분
                     	backgroundColor : "#00a65a", 
                        borderColor : "#00a65a", 
                 } ] );
               });
               
            },
            error:function(data){alert("Error 발생");}
         });
        $.ajax({
              Type:"get",
              url:"<%= request.getContextPath() %>/attendance/getCommute.htm",
              dataType:"json",
              //data:userid,
              success:function( data ){
              	$.each(data.Absence, function(){
                	$("#calendar").fullCalendar( 'addEventSource', [ {
                       	title : this.abreason,
                       	start : new Date(this.attdate), //년,월,일,시,분
                       	end : new Date(this.attdate), //년,월,일,시,분
                       	backgroundColor : "#f39c12", 
                        borderColor : "#f39c12", 
                   } ] );
                 });
                 
              },
              error:function(data){alert("Error 발생");}
           });		
        $.ajax({
            Type:"get",
            url:"<%= request.getContextPath() %>/attendance/getCommute.htm",
            dataType:"json",
            //data:userid,
            success:function( data ){
            	$.each(data.Lateness, function(){
              	$("#calendar").fullCalendar( 'addEventSource', [ {
                     	title : this.ltreason,
                     	start : new Date(this.attdate), //년,월,일,시,분
                     	end : new Date(this.attdate), //년,월,일,시,분
                     	backgroundColor : "#00c0ef", 
                        borderColor : "#00c0ef", 
                 } ] );
               });
               
            },
            error:function(data){alert("Error 발생");}
         });		
        $.ajax({
            Type:"get",
            url:"<%= request.getContextPath() %>/attendance/getCommute.htm",
            dataType:"json",
            //data:userid,
            success:function( data ){
            	$.each(data.Biztrip, function(){
              	$("#calendar").fullCalendar( 'addEventSource', [ {
                     	title : this.sctitle,
                     	start : new Date(this.scstart), //년,월,일,시,분
                     	end : new Date(this.scend), //년,월,일,시,분
                     	backgroundColor : "#3c8dbc", 
                        borderColor : "#3c8dbc", 
                 } ] );
               });
               
            },
            error:function(data){alert("Error 발생");}
         });
        $.ajax({
            Type:"get",
            url:"<%= request.getContextPath() %>/attendance/getCommute.htm",
            dataType:"json",
            //data:userid,
            success:function( data ){
            	$.each(data.Holiday, function(){
              	$("#calendar").fullCalendar( 'addEventSource', [ {
                     	title : this.sctitle,
                     	start : new Date(this.scstart), //년,월,일,시,분
                     	end : new Date(this.scend), //년,월,일,시,분
                     	backgroundColor : "#dd4b39", 
                        borderColor : "#dd4b39", 
                 } ] );
               });
            },
            error:function(data){alert("Error 발생");}
         });

	});
</script>
