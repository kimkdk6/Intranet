<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>

<%
GregorianCalendar now = new GregorianCalendar();
String date = String.format("%TF",now);
%>
<c:set var="incheck" value="${Checkin}" />
<c:set var="outcheck" value="${Checkout}" />
<c:set var="latecheck" value="${Latecheck}" />
 <script type="text/javascript">
$(function(){
	var latech = "";
	if('${latecheck}' != ""){
		 vi();
	}
	function vi(){
		document.getElementById("lateid").style.visibility="visible";
	}
	$('#checkinAjax').click(function(){
		$.ajax({
			url:"<%=request.getContextPath() %>/attendance/checkincheck.htm",  //요청 URL
			type:"get",           //전송 타입
			dataType:"html",
			success : function(data){
				if(data != ""){
					alert("이미 출근처리가 됬습니다.");
				}else {
					$.ajax({
					
						url:"<%=request.getContextPath() %>/attendance/checkin.htm",  //요청 URL
						type:"get",           //전송 타입
						dataType:"html",
						success : function(data){
							document.getElementById("checkin").innerHTML = data;
							alert("출근처리가 정상적으로 처리됬습니다.");
							 if('${latecheck}' != "''"){
							
								 document.getElementById("lateid").style.visibility="visible";
							 } 
						},
						error :function(data){alert("이미 출근처리가 됬습니다.");}
					});
				}
				
			},
			error :function(data){
				alert('Error..');
			}
		});
			
		});
	
	$('#checkoutAjax').click(function(){
		$.ajax({
			url:"<%=request.getContextPath() %>/attendance/checkoutcheck.htm",  //요청 URL
			type:"get",           //전송 타입
			dataType:"html",
			success : function(data){
				if(data != ""){
					alert("이미 퇴근처리가 됬습니다.");
				}else {
					$.ajax({
						url:"<%=request.getContextPath() %>/attendance/checkout.htm",  //요청 URL
						type:"get",           //전송 타입
						dataType:"html",
						success : function(data){
							alert("퇴근처리가 정상적으로 처리됬습니다."),
							document.getElementById("checkout").innerHTML = data;
						},
						error :function(data){alert("이미 퇴근처리가 됬습니다.");}
					});
				}
				
			},
			error :function(data){
				alert('Error..');
			}
		});
	});
	
	$('#latebtton').click(function(){
		var form_data = {
				latereason : document.getElementById("latereason").value
			};
		$.ajax({
			url:"<%=request.getContextPath() %>/attendance/latereason.htm", 
			type:"get",           
			data: form_data,
			dataType:"html",
			success : function(data){
				alert('지각 사유 입력 완료');
			},
			error :function(data){
				alert('이미 처리되었습니다.');
			}
		});
			
		});
	
});

setInterval("go_time()",1000);
function go_time(){
   var now = new Date();
    hours = now.getHours();
    minutes = now.getMinutes();
    seconds = now.getSeconds();

    if (hours > 12){
        hours -= 12;
    ampm = "오후 ";
    }else{
        ampm = "오전 ";
    }
    if (hours < 10){
        hours = "0" + hours;
    }
    if (minutes < 10){
        minutes = "0" + minutes;
    }
    if (seconds < 10){
        seconds = "0" + seconds;
    }
document.getElementById("clock").innerHTML = ampm + hours + ":" + minutes + ":" + seconds;
setTimeout("go_time()", 1000);
}

</script>

<section class="content-header" onload="go_time()">
          <h1>
            Se7en
            <small><%=date %></small>
          </h1>
          <ol class="breadcrumb">
            <li style="font-size: 15px"><i class="fa fa-laptop"></i> &nbsp  &nbsp <%= request.getRemoteAddr()%>

            </li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-md-6">
              <div class="box">
                <div class="box-header with-border">
                <se:authentication property="name" var="LoingUser" />
                  <h3 class="box-title" style="float: left">${Checkname }님 환영합니다.</h3>
                  <h3 class="box-title" id="clock" style="float:right"></h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                   <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="ion ion-ios-gear-outline"></i></span>
                <div class="info-box-content" style="padding-top: 0px; padding-top: 0px; padding-right: 0px;">
                  <table >
                    <tr>
                      <td >
					    <table style="float:left; margin-right: 50px;">
                        <tr>
                          <td ><b>&nbsp&nbsp메&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp일</b> : <a href=""><font color="#4e5fe8"><b><span>2</span></b></font>건</a></td>
                        
                        </tr>
                        <tr>
                          <td ><b>&nbsp&nbsp결재문서</b> : <a href=""><font color="#4e5fe8"><b><span>0</span></b></font>건</a></td>
                          
                        </tr>
                        <tr>
                          <td><b>&nbsp&nbsp쪽&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp지</b> : <a href=""><font color="#4e5fe8"><b>0</b></font>건</a></td>
                        </tr>
						
						<tr>
						<td ><b>&nbsp&nbsp상신문서</b> : <a href=""><font color="#4e5fe8"><b><span >3</span></b></font>건</a></td>   
						</tr>
                      </table>
                      <table >
                      <tr>
                       <td style="padding-right: 20px;">
                       <img id="checkinAjax" src="<%=request.getContextPath() %>/resources/img/bt_checkin.gif" style="cursor: pointer;"></td>
                     	<td style="border:2px solid #e3e3e3; width:100px; padding:0px 0px 0px 25px;">

							<span id="checkin"><c:if test="${!empty incheck}">${incheck}</c:if></span>
                     	</td>
                      </tr>
                      <tr>
                      <td height="8" colspan="2"></td>
                      </tr>
                      <tr >
                      <td style="padding-right: 20px;">
                      <img id="checkoutAjax" src="<%=request.getContextPath() %>/resources/img/bt_checkout.gif" style="cursor: pointer;"> </td>
                     	<td style="border:2px solid #e3e3e3; width:100px; padding:0px 0px 0px 25px;">
						<span id="checkout"><c:if test="${!empty outcheck}">${outcheck}</c:if></span>
							
                      </tr>
                       <tr>
                      <td height="8" colspan="2"></td>
                      </tr>
                   
                  <%--      <c:if test="${!empty latecheck}">   --%>
                		  <tr id="lateid" style="visibility: hidden;">
                      	<td >
                      		<b >&nbsp&nbsp&nbsp&nbsp&nbsp지각사유 :</b>
                      	</td>
                      	
                       	<td><input type="text" id="latereason" style="border:2px solid #e3e3e3; width:100px;">
                      	</td>
                      	<td style="padding-left: 5px;"><button class="btn btn-block btn-default btn-sm" id ="latebtton" style="padding-top: 2px; padding-bottom: 2px;">저장</button></td>
                      </tr>
                   <%--      </c:if>  --%>
                     
                      </table>
                      
					  </td>
                    </tr>
                  </table>

                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
                </div><!-- /.box-body -->
              </div><!-- /.box -->
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">최근 커뮤니티 게시물</h3>
                </div><!-- /.box-header -->
                <div class="box-body no-padding">
  				<table class="table">
                      <c:forEach items="${RecentlyBoard}" var="r">
                    <tr>
                    <td><span class="fa fa-circle-o"></span></td>
                      <td style="padding-bottom: 19px"><a href="${pageContext.request.contextPath}/board/BoardDetail.htm?boardnum=${r.boardnum}">${r.boardtitle}</a></td>
                      <td >
                           ${r.boarddate }
                      </td>
                    </tr>
                    </c:forEach>  
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
            <div class="col-md-6">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">공지사항</h3>

                </div><!-- /.box-header -->

                <div class="box-body no-padding">
                  <table class="table">
                   <c:forEach items="${RecentlyNotice}" var="r">
                    <tr>
                    <td><span class="fa fa-check-square-o"></span></td>
                      <td style="padding-bottom: 19px"><a href="${pageContext.request.contextPath}/board/BoardDetail.htm?boardnum=${r.boardnum}">${r.boardtitle}</a></td>
                      <td >
                           ${r.boarddate }
                      </td>
                    </tr>
                    </c:forEach>
                    
                    
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->

              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">최신 앨범 게시판</h3>
                </div><!-- /.box-header -->
                <div class="box-body no-padding">
                  <table class="table table-striped">
                     <tr>
             <td height="250" align="left" valign="top" bgcolor="#d2d2d4" style="padding:11px 0 0 17px;"><table width="370" border="0" cellspacing="0" cellpadding="0">
                <c:forEach items="${RecentlyPhoto}" var="e">
                    <tr>
                    <td><img alt="" src="<%=request.getContextPath() %>/Upload/BoardFile/${e.boardfilesrc}" height="50px">
                    </td>
                    </tr>
                    </c:forEach>  
                    
                  </table>
                  </td>
                  </tr>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Responsive Hover Table</h3>
                  <div class="box-tools">
                    <div class="input-group">
                      <input type="text" name="table_search" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Search"/>
                      <div class="input-group-btn">
                        <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                      </div>
                    </div>
                  </div>
                </div><!-- /.box-header -->
                
                
                
                <div class="box-body table-responsive no-padding">
                  <table class="table table-hover">
                    <tr>
                      <th>ID</th>
                      <th>User</th>
                      <th>Date</th>
                      <th>Status</th>
                      <th>Reason</th>
                    </tr>
                    <tr>
                      <td>183</td>
                      <td>John Doe</td>
                      <td>11-7-2014</td>
                      <td><span class="label label-success">Approved</span></td>
                      <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                    </tr>
                    <tr>
                      <td>219</td>
                      <td>Alexander Pierce</td>
                      <td>11-7-2014</td>
                      <td><span class="label label-warning">Pending</span></td>
                      <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                    </tr>
                    <tr>
                      <td>657</td>
                      <td>Bob Doe</td>
                      <td>11-7-2014</td>
                      <td><span class="label label-primary">Approved</span></td>
                      <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                    </tr>
                    <tr>
                      <td>175</td>
                      <td>Mike Doe</td>
                      <td>11-7-2014</td>
                      <td><span class="label label-danger">Denied</span></td>
                      <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                    </tr>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
          </div>
        </section><!-- /.content -->

