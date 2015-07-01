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

<div id="_update_schedule_desc" width="100%" border="0" cellspacing="0" cellpadding="0" class="left_menu" title="일정수정하기">
	<form id="_update_schedule_form" name="_schedule_layer">
	<input type="hidden" id="_update_scstart" name="scstart"/>
	<input type="hidden" id="_update_scend" name="scend"/>
	<input type="hidden" id="_update_userid" name="userid" value="${userid}"/>
		<table id="_update_schedule_table" width="100%" border="0" cellspacing="0" cellpadding="0" class="left_menu">
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
														<select  id="_update_catecode" name="catecode">
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
										
										<input type="text" id="_update_startdate" name="startdate" class="input_date" style="width: 110px; margin-left: 7px" maxlength="10"> 
										<select id="_update_starthh" name="starthh">
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
									<select  id="_update_startmm" name="startmm">
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
									<input type="text" id="_update_enddate" name="enddate" class="input_date" style="width: 110px; margin-left: 7px;" maxlength="10"> 
									<select id="_update_endhh" name="endhh">
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
									<select id="_update_endmm" name="endmm">
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
									<td><input type="text" id="_update_sctitle" name="sctitle" class="input_date" style="width: 100%; margin-left: 7px;">
									</td>
								</tr>
								<tr>
									<td height="10"></td>
									<td></td>
								</tr>

								<tr>
									<td height="20" valign="top" style="padding-top: 5px;">내용</td>
									<td>
										<textarea id ="_update_sccontent" name="sccontent" class="input_type1" style="width: 100%; height: 160px; overflow: auto; margin-left: 7px">
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
														<select  id="catecode" name="catecode" >
															
															
															<c:forEach items="${getSchCategoryDept}" var="c" varStatus="bs">
																<option value="${c.catecode }" style="color:#fff; background-color:${c.color};">${c.catename}</option> 
															</c:forEach>
															
															<c:forEach items="${getSchCategoryTeam}" var="c" varStatus="bs">
																<option value="${c.catecode }" style="color:#fff; background-color:${c.color};">${c.catename}</option>
															</c:forEach>
														
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



<div id="_category_desc" title="새 일정 카테고리 만들기"> 
<form id="_category_form" name="category_layer" onsubmit="return exe_category(this)">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="left_menu"> 
  <tbody><tr> 
<!--     <td height="30" id="cat_title_background" bgcolor="#f4f4f4" style="padding: 3px 0px 0px 20px; background-color: rgb(110, 156, 242);">  -->
<!--       <table width="100%" border="0" cellspacing="0" cellpadding="0">  -->
<!--         <tbody><tr>  -->
<!--           <td style="letter-spacing:-1px;font-weight:bold;color:#fff;" id="cat_layer_title">새 카테고리 만들기</td>  -->
<!--           <td width="22" align="left"><a href="javascript:"><img src="/img/webmail/bt_closelayer.gif" onclick="jQuery('#_category_desc').gbxHide();"></a></td>  -->
<!--         </tr>  -->
<!--       </tbody></table></td>  -->
  </tr> 
  <tr> 
    <td style="padding:10px 20px 15px 20px;"> 
    <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
      <tbody><tr> 
        <td width="85" height="20" style="letter-spacing:0px;">카테고리명</td> 
        <td> 
          <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
            <tbody><tr> 
              <td width="" id="name_container" bgcolor="#638cd9" style="background-color: rgb(110, 156, 242);"><input name="catname" type="text" class="input_trans" style="width:100%;" title="카테고리명"></td> 
              <td width="55" align="right">
                <a href="javascript:"><img src="/img/calendar/bt_color.gif" onclick="_openColor(this)"></a>
                <div id="_color_pic" style="border: 1px solid rgb(119, 119, 119); position: absolute; text-align: center; display: none; background-color: rgb(255, 255, 255);"> 
<!--                 <table width="99" border="0" cellspacing="4" cellpadding="0" class="tbl_board9" style="border-collapse:separate;">  -->
<!--                                                       <tbody><tr height="15" align="center"> -->
<!--                                       <td width="15" bgcolor="#6e9cf2" class="vtd" onclick="document.category_layer.catrgb.value='#6e9cf2'; jQuery('#cat_title_background').css('background-color', '#6e9cf2'); jQuery('#name_container').css('background-color','#6e9cf2');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#8394cf" class="vtd" onclick="document.category_layer.catrgb.value='#8394cf'; jQuery('#cat_title_background').css('background-color', '#8394cf'); jQuery('#name_container').css('background-color','#8394cf');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#93cc4b" class="vtd" onclick="document.category_layer.catrgb.value='#93cc4b'; jQuery('#cat_title_background').css('background-color', '#93cc4b'); jQuery('#name_container').css('background-color','#93cc4b');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#dec200" class="vtd" onclick="document.category_layer.catrgb.value='#dec200'; jQuery('#cat_title_background').css('background-color', '#dec200'); jQuery('#name_container').css('background-color','#dec200');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#a28ab5" class="vtd" onclick="document.category_layer.catrgb.value='#a28ab5'; jQuery('#cat_title_background').css('background-color', '#a28ab5'); jQuery('#name_container').css('background-color','#a28ab5');">&nbsp;</td> -->
<!--                                     </tr> -->
<!--                                                                         <tr height="15" align="center"> -->
<!--                                       <td width="15" bgcolor="#97add2" class="vtd" onclick="document.category_layer.catrgb.value='#97add2'; jQuery('#cat_title_background').css('background-color', '#97add2'); jQuery('#name_container').css('background-color','#97add2');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#69c2d2" class="vtd" onclick="document.category_layer.catrgb.value='#69c2d2'; jQuery('#cat_title_background').css('background-color', '#69c2d2'); jQuery('#name_container').css('background-color','#69c2d2');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#b0bc2d" class="vtd" onclick="document.category_layer.catrgb.value='#b0bc2d'; jQuery('#cat_title_background').css('background-color', '#b0bc2d'); jQuery('#name_container').css('background-color','#b0bc2d');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#e6a11b" class="vtd" onclick="document.category_layer.catrgb.value='#e6a11b'; jQuery('#cat_title_background').css('background-color', '#e6a11b'); jQuery('#name_container').css('background-color','#e6a11b');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#da9b9b" class="vtd" onclick="document.category_layer.catrgb.value='#da9b9b'; jQuery('#cat_title_background').css('background-color', '#da9b9b'); jQuery('#name_container').css('background-color','#da9b9b');">&nbsp;</td> -->
<!--                                     </tr> -->
<!--                                                                         <tr height="15" align="center"> -->
<!--                                       <td width="15" bgcolor="#94a5b6" class="vtd" onclick="document.category_layer.catrgb.value='#94a5b6'; jQuery('#cat_title_background').css('background-color', '#94a5b6'); jQuery('#name_container').css('background-color','#94a5b6');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#2eb8c7" class="vtd" onclick="document.category_layer.catrgb.value='#2eb8c7'; jQuery('#cat_title_background').css('background-color', '#2eb8c7'); jQuery('#name_container').css('background-color','#2eb8c7');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#44be1e" class="vtd" onclick="document.category_layer.catrgb.value='#44be1e'; jQuery('#cat_title_background').css('background-color', '#44be1e'); jQuery('#name_container').css('background-color','#44be1e');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#f3672a" class="vtd" onclick="document.category_layer.catrgb.value='#f3672a'; jQuery('#cat_title_background').css('background-color', '#f3672a'); jQuery('#name_container').css('background-color','#f3672a');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#f62d2d" class="vtd" onclick="document.category_layer.catrgb.value='#f62d2d'; jQuery('#cat_title_background').css('background-color', '#f62d2d'); jQuery('#name_container').css('background-color','#f62d2d');">&nbsp;</td> -->
<!--                                     </tr> -->
<!--                                                                         <tr height="15" align="center"> -->
<!--                                       <td width="15" bgcolor="#c08bd7" class="vtd" onclick="document.category_layer.catrgb.value='#c08bd7'; jQuery('#cat_title_background').css('background-color', '#c08bd7'); jQuery('#name_container').css('background-color','#c08bd7');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#4587eb" class="vtd" onclick="document.category_layer.catrgb.value='#4587eb'; jQuery('#cat_title_background').css('background-color', '#4587eb'); jQuery('#name_container').css('background-color','#4587eb');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#ccc05d" class="vtd" onclick="document.category_layer.catrgb.value='#ccc05d'; jQuery('#cat_title_background').css('background-color', '#ccc05d'); jQuery('#name_container').css('background-color','#ccc05d');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#f06280" class="vtd" onclick="document.category_layer.catrgb.value='#f06280'; jQuery('#cat_title_background').css('background-color', '#f06280'); jQuery('#name_container').css('background-color','#f06280');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#d2423c" class="vtd" onclick="document.category_layer.catrgb.value='#d2423c'; jQuery('#cat_title_background').css('background-color', '#d2423c'); jQuery('#name_container').css('background-color','#d2423c');">&nbsp;</td> -->
<!--                                     </tr> -->
<!--                                                                         <tr height="15" align="center"> -->
<!--                                       <td width="15" bgcolor="#b4b4b4" class="vtd" onclick="document.category_layer.catrgb.value='#b4b4b4'; jQuery('#cat_title_background').css('background-color', '#b4b4b4'); jQuery('#name_container').css('background-color','#b4b4b4');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#beb297" class="vtd" onclick="document.category_layer.catrgb.value='#beb297'; jQuery('#cat_title_background').css('background-color', '#beb297'); jQuery('#name_container').css('background-color','#beb297');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#8c66d9" class="vtd" onclick="document.category_layer.catrgb.value='#8c66d9'; jQuery('#cat_title_background').css('background-color', '#8c66d9'); jQuery('#name_container').css('background-color','#8c66d9');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#7b8493" class="vtd" onclick="document.category_layer.catrgb.value='#7b8493'; jQuery('#cat_title_background').css('background-color', '#7b8493'); jQuery('#name_container').css('background-color','#7b8493');">&nbsp;</td> -->
<!--                                                                           <td width="15" bgcolor="#4b4b4b" class="vtd" onclick="document.category_layer.catrgb.value='#4b4b4b'; jQuery('#cat_title_background').css('background-color', '#4b4b4b'); jQuery('#name_container').css('background-color','#4b4b4b');">&nbsp;</td> -->
<!--                                     </tr> -->
<!--                                                     </tbody></table> -->
                </div>
              </td>
            </tr>
          </tbody></table></td>
      </tr>
      <tr>
        <td height="3"></td>
        <td></td>
      </tr>
      <tr>
        <td height="50" valign="top" style="padding-top:5px;">설명</td>
        <td><textarea id="id_content" name="content" class="input_type1" style="width:100%;height:48px;overflow:auto;"></textarea></td>
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
        <td height="20" valign="top" style="padding-top:5px;">일정 분류</td>
        <td>
          <label title="같은 회사 직원과 일정을 공유합니다."><input type="radio" name="catshare" value="C" onclick="share_txt(this)"> 회사 일정 </label> &nbsp;
          <label title="같은 부서 직원과 일정을 공유합니다."><input type="radio" name="catshare" value="D" onclick="share_txt(this)"> 부서 일정 </label> &nbsp;
          <label title="해당 카테고리 일정은 개인 일정입니다."><input type="radio" name="catshare" value="N" onclick="share_txt(this)" checked="checked"> 개인 일정 </label>
        </td>
      </tr>
<!--       <tr> -->
<!--         <td height="25" valign="top" style="padding-top:5px;"></td> -->
<!--         <td><span rel="share_txt" class="stxt">해당 카테고리 일정은 개인 일정입니다.</span></td> -->
<!--       </tr> -->
      <tr>
        <td height="3"></td>
        <td></td>
      </tr> 
      <tr>
      	<td>
      		<div id=colorpicker></div>
      	</td>
      </tr>        
    </tbody></table> 
    </td> 
  </tr>   
</tbody></table> 
</form>
<div class="gbx_drag" style="cursor: move; height: 20px; z-index: -1; width: 400px; position: absolute; top: 0px; float: left;"></div></div>



<%-- <script src="<%=request.getContextPath()%>/resources/plugins/schecule/jquery-ui-1.11.4.custom/jquery-ui.js" type="text/javascript"></script> --%>
<%-- <link href="<%=request.getContextPath()%>/resources/plugins/schecule/jquery-ui-1.11.4.custom/jquery-ui.css" type="text/css" /> --%>
<%-- <script src="<%=request.getContextPath()%>/resources/plugins/fullcalendar/fullcalendar.js" type="text/javascript"></script>
<link href="<%=request.getContextPath()%>/resources/plugins/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/resources/plugins/fullcalendar/fullcalendar.print.css" rel="stylesheet" type="text/css" media='print'/>
 --%>
<script type="text/javascript">
	$(function() {
		$('#colorpicker').colorpicker({
			flat:true,
			layout:'hex',
			submit:0
		});

		//$('#colorpicker').colorpicker();
		
		$('#add-category').click(function(){
			$('#_category_desc').dialog('open');
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
					
					var formData = $("#_schedule_form").serialize();
		               console.log(formData);
		               $.ajax({
		                    Type:"POST",
		                     url:"<%= request.getContextPath() %>/schedule/insertSchedule.htm",
		                     data:formData,
		                     success:function( data ){ alert("insert Success!!");},
		                     error:function(data){alert("Error 발생");}
		               });
					
					newEvent.dialog("close");
					document.getElementById("_schedule_form").reset();
// 					document.getElementById("_schedule_form").submit();
				},
				"취 소" : function() {
					document.getElementById("_schedule_form").reset();
					newEvent.dialog("close")
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
// 				"일정 수정" : function() {
// 					readEvent.dialog("close");
					
					
// 					$("#_update_sctitle").val($("#sctitle").val());
// 					$("#_update_sccontent").val($("#sccontent").val());
// 					$("#_update_scuserid").val($("#userid").val());
					
// 					updateEvent.dialog('open');
					
// 				},
				"취 소" : function() {
					readEvent.dialog("close");
				}
			}
		});
		

		
		var updateEvent = $("#_update_schedule_desc").dialog({
			
			autoOpen : false,
			height : 500,
			width : 600,
			modal : true,
			buttons : {
				"확 인" : function() { 
					
					updateEvent.dialog("close");
				},
				"취 소" : function() {
					updateEvent.dialog("close");
				}
			}
		});
		
		//_category_desc

		var categoryEvent = $("#_category_desc").dialog({
			
			autoOpen : false,
			height : 400,
			width : 600,
			modal : true,
			buttons : {
				"확 인" : function() { 
					
					categoryEvent.dialog("close");
				},
				"취 소" : function() {
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
						
						$( "#_schedule_view" ).dialog('open');
						
						
						 
						
					},

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
				
				
		
				
		var userid = { userid : $('#userid').val() };
        $.ajax({
              Type:"get",
              url:"<%= request.getContextPath() %>/schedule/getSchedule.htm",
              dataType:"json",
              data:userid,
              success:function( data ){
                  
                 $.each(data.schedule, function(index, item){
                    var a = this;//data.schedule
                    var start = data.StartSchedule;
                    var end = data.EndSchedule;

                    $("#calendar").fullCalendar( 'addEventSource', [ {
                       
                   	   catecode:a.catecode,
                       catename:a.catename,
                       title : a.sctitle,
                       start : new Date(start[index]), //년,월,일,시,분
                       end : new Date(end[index]), //년,월,일,시,분
                       backgroundColor : a.color, //red
                       borderColor :  a.color, //red
                       userid : a.userid,
                       content: a.sccontent

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
