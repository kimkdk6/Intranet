<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Calendar <small>Control panel</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Calendar</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-md-3">



			<div class="box box-solid">
				<div class="box-header with-border">
					<h4 class="box-title">부서 일정</h4>
				</div>
				<div class="box-body">
					<!-- the events -->
					<div id='external-events'>
						<div class='external-event bg-green'>점심식사</div>
						<div class='external-event bg-yellow'>Go home</div>
						<div class='external-event bg-aqua'>Do homework</div>
						<div class='external-event bg-light-blue'>Work on UI design</div>
						<div class='external-event bg-red'>Sleep tight</div>
						<div class="checkbox">
							<label for='drop-remove'> <input type='checkbox'
								id='drop-remove' /> remove after drop
							</label>
						</div>
					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /. box -->



			<div class="box box-solid">
				<div class="box-header with-border">
					<h3 class="box-title">Create Event</h3>
				</div>
				<div class="box-body">
					<div class="btn-group" style="width: 100%; margin-bottom: 10px;">
						<!--<button type="button" id="color-chooser-btn" class="btn btn-info btn-block dropdown-toggle" data-toggle="dropdown">Color <span class="caret"></span></button>-->
						<ul class="fc-color-picker" id="color-chooser">
							<li><a class="text-aqua" href="#"><i
									class="fa fa-square"></i></a></li>
							<li><a class="text-blue" href="#"><i
									class="fa fa-square"></i></a></li>
							<li><a class="text-light-blue" href="#"><i
									class="fa fa-square"></i></a></li>
							<li><a class="text-teal" href="#"><i
									class="fa fa-square"></i></a></li>
							<li><a class="text-yellow" href="#"><i
									class="fa fa-square"></i></a></li>
							<li><a class="text-orange" href="#"><i
									class="fa fa-square"></i></a></li>
							<li><a class="text-green" href="#"><i
									class="fa fa-square"></i></a></li>
							<li><a class="text-lime" href="#"><i
									class="fa fa-square"></i></a></li>
							<li><a class="text-red" href="#"><i class="fa fa-square"></i></a></li>
							<li><a class="text-purple" href="#"><i
									class="fa fa-square"></i></a></li>
							<li><a class="text-fuchsia" href="#"><i
									class="fa fa-square"></i></a></li>
							<li><a class="text-muted" href="#"><i
									class="fa fa-square"></i></a></li>
							<li><a class="text-navy" href="#"><i
									class="fa fa-square"></i></a></li>
						</ul>
					</div>
					<!-- /btn-group -->
					<div class="input-group">
						<input id="new-event" type="text" class="form-control"
							placeholder="Event Title">
						<div class="input-group-btn">
							<button id="add-new-event" type="button"
								class="btn btn-primary btn-flat">Add</button>
						</div>
						<!-- /btn-group -->
					</div>
					<!-- /input-group -->
				</div>
			</div>




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




<script type="text/javascript">
	$(function() {

		/* initialize the external events 
		// 외부 이벤트들을 초기화한다.
		 -----------------------------------------------------------------*/
		function ini_events(ele) { //$('h3').each(function(index,item))
			ele.each(function() { //  each는 반복문..

				// create an Event Object 
				// 이벤트 객체를 생성한다.
				// it doesn't need to have a start or end
				// 시작 이나 끝이 필요하지 않다.(??)

				var eventObject = {
					title : $.trim($(this).text())
				// use the element's text as the event title
				// 엘리먼트의 text 값을 이벤트 제목으로 사용	
				};

				// store the Event Object in the DOM element so we can get to it later

				$(this).data('eventObject', eventObject);

				// make the event draggable using jQuery UI
				$(this).draggable({
					zIndex : 1070,
					revert : true, // will cause the event to go back to its
					revertDuration : 0
				//  original position after the drag
				});

			});
		}

		//        ini_events($('#external-events div.external-event'));

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

					titleFormat : {
						month : "YYYY년 MMMM",
						week : 'YYYY년 MM월 DD일',
						day : "YYYY년 MMM d일 dddd"
					},
					buttonText : {
						today : "오늘",
						month : "월별",
						week : "주별",
						day : "일별"
					},

					events : [ {
						title : '이벤트 테스트',
						start : new Date(y, m, 1, 12, 30),//년,월,일,시,분
						end : new Date(y, m, 5, 12, 30),
// 						url: 'http://google.com/',//URL
// 						allDay: false,//하루종일
						backgroundColor : "#f56954", //red
						borderColor : "#f56954" //red
						
					} ],

					editable : true,
					droppable : true, // this allows things to be dropped onto the calendar !!!
					drop : function(date, allDay) { // this function is called when something is dropped

						// retrieve the dropped element's stored Event Object
						var originalEventObject = $(this).data('eventObject');

						// we need to copy it, so that multiple events don't have a reference to the same object
						var copiedEventObject = $.extend({},
								originalEventObject);

						// assign it the date that was reported
						copiedEventObject.start = date;
						copiedEventObject.allDay = allDay;
						copiedEventObject.backgroundColor = $(this).css(
								"background-color");
						copiedEventObject.borderColor = $(this).css(
								"border-color");

						// render the event on the calendar
						// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
						$('#calendar').fullCalendar('renderEvent',copiedEventObject, true);

						// is the "remove after drop" checkbox checked?
						if ($('#drop-remove').is(':checked')) {
							// if so, remove the element from the "Draggable Events" list
							$(this).remove();
						}

					}
				});//캘린더 끝

		/* ADDING EVENTS */
		var currColor = "#3c8dbc"; //Red by default
		//Color chooser button
		var colorChooser = $("#color-chooser-btn");

		$("#color-chooser > li > a").click(function(e) {
			e.preventDefault();
			//Save color
			currColor = $(this).css("color");
			//Add color effect to button
			$('#add-new-event').css({
				"background-color" : currColor,
				"border-color" : currColor
			});
		});

		$("#add-new-event").click(function(e) {
			e.preventDefault();
			//Get value and make sure it is not null
			var val = $("#new-event").val();
			if (val.length == 0) {
				return;
			}

			//Create events
			var event = $("<div />");
			event.css({
				"background-color" : currColor,
				"border-color" : currColor,
				"color" : "#fff"
			}).addClass("external-event");
			event.html(val);
			$('#external-events').prepend(event);

			//Add draggable funtionality
			ini_events(event);

			//Remove event from text input
			$("#new-event").val("");
		});
	});
</script>
