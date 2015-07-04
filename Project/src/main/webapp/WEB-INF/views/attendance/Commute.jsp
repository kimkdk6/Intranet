<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>출퇴근 체크<small>Se7en Internatinal</small>
	</h1>
	<!-- 	<ol class="breadcrumb"> -->
	<!-- 		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li> -->
	<!-- 		<li class="active">Calendar</li> -->
	<!-- 	</ol> -->
</section>
<section class="content">
	<input type="hidden" id="userid" name="userid" value="${sessionScope.myemp.userid}"/>
	<div class="row">
		
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
	</div>
</section>
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
					timeFormat: 'hh:mm',

					editable : false,
					droppable : false, 

				});//캘린더 끝
				
		$("#calendar").fullCalendar('addEventSource', [ {
			title : '이벤트 테스트2',
			start : new Date(y, m, 3, 12, 30),//년,월,일,시,분
			end : new Date(y, m, 4, 12, 30),
			backgroundColor : "#f56954", //red
			borderColor : "#f56954", //red
			userid : '김성익',
			content: '시부랄 탱탱부랄'
		} ]);
				
		// 지각		
		//var userid = $('#userid').val();
		//console.log('aaaa : ' + userid);
        $.ajax({
              Type:"get",
              url:"<%= request.getContextPath() %>/attendance/getCommute.htm",
              dataType:"json",
              //data:userid,
              success:function( data ){
                  
              	$.each(data.Absence, function(){
					console.log("aaaaaaaa" + this.attdate);
                	$("#calendar").fullCalendar( 'addEventSource', [ {
/*                     	schnum : this.schnum,
                   	   	catecode:this.catecode,
                       	catename:this.catename, */
                       	title : this.abreason,
                       	start : new Date(this.attdate), //년,월,일,시,분
                       	end : new Date(y, m, 4, 12, 30), //년,월,일,시,분
                       /* 	backgroundColor : this.color, //red
                       	borderColor :  this.color, //red
                       	userid : this.userid,
                       	content: this.sccontent */

                   } ] ); 
                   
                    
                 });
                 
                 alert("success");
                 
              },
              error:function(data){alert("Error 발생");}
           });		

	});
</script>
