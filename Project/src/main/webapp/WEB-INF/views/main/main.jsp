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
\<c:set var="leavecheck" value="${Leavecheck}" />
<c:set var="getUnSigns" value="${getUnSigns}" />
<c:set var="getReceiveSigns" value="${getReceiveSigns}" />
<c:set var="UserPhoto" value="${UserPhoto}" />

 <script type="text/javascript">
$(function(){

	console.log('${latecheck}');
	if('${latecheck}' != ""){
		 vi();
	}
	function vi(){
		document.getElementById("commute").innerHTML = '&nbsp&nbsp&nbsp&nbsp&nbsp지각사유 :' ;
		document.getElementById("commutecheck").style.visibility="visible";
		document.getElementById("reason").style.visibility="visible";
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
							 if('${leavecheck}' != "''"){
								 document.getElementById("commute").innerHTML = '&nbsp&nbsp&nbsp&nbsp&nbsp지각사유 :' ;								
 								 document.getElementById("commutecheck").style.visibility="visible";
 								document.getElementById("reason").style.visibility="visible";
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
							 if('${leavecheck}' != "''"){
				
									 document.getElementById("commute").innerHTML = '&nbsp&nbsp&nbsp&nbsp&nbsp조퇴사유 :' ;
									 document.getElementById("commutecheck").style.visibility="visible";
									 document.getElementById("reason").style.visibility="visible";
							 } 
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
				latereason : document.getElementById("reason").value
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
	
 	$('#leavebtton').click(function(){
		var form_data = {
				latereason : document.getElementById("reason").value
			};
		$.ajax({
			url:"<%=request.getContextPath() %>/attendance/latereason.htm", 
			type:"get",           
			data: form_data,
			dataType:"html",
			success : function(data){
				alert('조퇴 사유 입력 완료');
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
                <!-- <span class="info-box-icon bg-aqua"></span> -->
                <img alt="" src="${pageContext.request.contextPath}/Upload/ProfilePhoto/${UserPhoto}" style="float: left; height: 90px; width: 90px;">
                  
                <div class="info-box-content" style="padding-top: 0px; padding-top: 0px; padding-right: 0px;">
                  <table >
                    <tr>
                      <td >
					    <table style="float:left; margin-right: 50px;">
                        <tr>
                          <td ><b>&nbsp&nbsp메&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp일</b> : <a href=""><font color="#4e5fe8"><b><span>2</span></b></font>건</a></td>
                        
                        </tr>
                        <tr>
						<td ><b>&nbsp&nbsp상신문서</b> : <a href="${pageContext.request.contextPath}/sign/SendsignsList.htm"><font color="#4e5fe8"><b><span >${getReceiveSigns}</span></b></font>건</a></td>   
						</tr>
                        <tr>
                          <td ><b>&nbsp&nbsp결재문서</b> : <a href="${pageContext.request.contextPath}/sign/ReceiveSignList.htm?type=2"><font color="#4e5fe8"><b><span>${getUnSigns}</span></b></font>건</a></td>
                          
                        </tr>
                        
                        <tr>
                          <td><b>&nbsp&nbsp쪽&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp지</b> : <a href=""><font color="#4e5fe8"><b>0</b></font>건</a></td>
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
                		  <tr id="commutecheck" style="visibility: hidden;">
                      	<td >
                      		<span id="commute"></span>
                      	</td>
                      	
                       	<td><input type="text" id="reason" style="border:2px solid #e3e3e3; width:100px; visibility: hidden;" >
                      	</td>
                      	<td style="padding-left: 5px;"><button class="btn btn-block btn-default btn-sm" id ="latebtton" style="padding-top: 2px; padding-bottom: 2px;">저장</button></td>
                      </tr>

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
                      <td style="padding-bottom: 21px"><a href="${pageContext.request.contextPath}/board/BoardDetail.htm?boardnum=${r.boardnum}">${r.boardtitle}</a></td>
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
                
                <c:forEach items="${RecentlyPhoto}" var="e"> 
                    <td style="padding-left: 40px;">
                    <a href="${pageContext.request.contextPath}/board/BoardDetail.htm?boardnum=${e.boardnum}"><img src="<%=request.getContextPath() %>/Upload/BoardFile/${e.boardfilesrc}" style="width: 95px; height: 95px;"></a> 
                    </td>

                    </c:forEach>  
                   </tr>
                   <tr>
                   <c:forEach items="${RecentlyPhoto}" var="e"> 
                   
                   <td style="padding-left: 40px;">
                   <a href="${pageContext.request.contextPath}/board/BoardDetail.htm?boardnum=${e.boardnum}">${e.boardtitle}</a>
                    </td>
                   </c:forEach>
                    </tr>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
          
             
        </section><!-- /.content -->

