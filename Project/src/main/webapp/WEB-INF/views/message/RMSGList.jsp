<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<body bgcolor="#ffffff" leftmargin="0" topmargin="0"><div id="_CalendarDiv" style="z-index:999;background:#ffffcc; width:150px; display:none; position:absolute"><div id="calendar" style="z-index:999;position:absolute; display:none"><table width="150" border="1" cellspacing="0" cellpadding="0" bordercolor="#858585" bgcolor="#ffffff">  <tbody><tr>    <td align="center" valign="top">    <table width="140" border="0" cellspacing="0" cellpadding="0">      <tbody><tr>        <td height="20" valign="top"><span id="caption">          <table width="140" border="0" cellspacing="0" cellpadding="0">            <tbody><tr>              <td width="70" style="padding:5 0 0 12"><span id="spanYear"></span></td>              <td width="57" style="padding:5 0 0 2"><span id="spanMonth"></span></td>              <td width="13" align="right" valign="middle" style="padding:2 2 0 0;"><span style="cursor:hand" onclick="oPopup.hide();"><img src="/img/bt_calendar_close.gif" border="0" align="absmiddle"></span></td>            </tr>          </tbody></table>        </span></td>      </tr>      <tr height="1">        <td style="padding:3px" bgcolor="#ffffff"><div id="dcontent"></div></td>      </tr>    </tbody></table>    </td>  </tr></tbody></table></div><div id="selectMonth" style="z-index:+999;position:absolute;display:none;"></div> <div id="selectYear" style="z-index:+999;position:absolute;display:none;"></div></div>
<script type="text/javascript" src="/js/jquery/jquery.history.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.form.js"></script>
<script type="text/javascript" src="/js/jquery/ui.core.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.cookie.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.dynatree.min.js"></script>

 <!-- Bootstrap 3.3.4 -->
    <link href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />    
    <!-- FontAwesome 4.3.0 -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons 2.0.0 -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />    
    <!-- Theme style -->
    <link href="<%=request.getContextPath() %>/resources/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="<%=request.getContextPath() %>/resources/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="<%=request.getContextPath() %>/resources/plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="<%=request.getContextPath() %>/resources/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="<%=request.getContextPath() %>/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
   <%--  <!-- Date Picker -->
    <link href="<%=request.getContextPath() %>/resources/plugins/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="<%=request.getContextPath() %>/resources/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" /> --%>
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="<%=request.getContextPath() %>/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />

	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" type="text/css" />
   
   	 
   
    
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!-- jQuery 2.1.4 -->
	 <script src="<%=request.getContextPath() %>/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
     <!-- ChartJS 1.0.1 -->
    <script src="<%=request.getContextPath() %>/resources/plugins/chartjs/Chart.min.js" type="text/javascript"></script>
    <!-- ck Editor -->
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/plugins/ckeditor/ckeditor.js"></script>
    
 

 <!-- jQuery UI 1.11.4 -->
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js" type="text/javascript"></script>
    
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    
    <!-- Bootstrap 3.3.2 JS -->
    <script src="<%=request.getContextPath() %>/resources/js/bootstrap.min.js" type="text/javascript"></script>    
    <!-- Morris.js charts -->
    <script src="<%=request.getContextPath() %>/resources/plugins/morris/morris.min.js" type="text/javascript"></script>
    <!-- Sparkline -->
    
    <script src="<%=request.getContextPath() %>/resources/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
    <!-- jvectormap -->
    <script src="<%=request.getContextPath() %>/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath() %>/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
    
    <!-- jQuery Knob Chart -->
    <script src="<%=request.getContextPath() %>/resources/plugins/knob/jquery.knob.js" type="text/javascript"></script>
    <!-- daterangepicker -->
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath() %>/resources/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <!-- datepicker -->
     <script src="<%=request.getContextPath() %>/resources/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
 --%>    <!-- Bootstrap WYSIHTML5 -->
    <script src="<%=request.getContextPath() %>/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
    <!-- Slimscroll -->
    <script src="<%=request.getContextPath() %>/resources/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='<%=request.getContextPath() %>/resources/plugins/fastclick/fastclick.min.js'></script>
    
    <!-- AdminLTE App -->
    <script src="<%=request.getContextPath() %>/resources/js/app.min.js" type="text/javascript"></script>    
      <!-- Morris.js charts , jQuery.js 와 충돌문제로 아래 삽입-->   
	<script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js" type="text/javascript"></script>
    
    
    <!-- AdminLTE for demo purposes -->
    <script src="<%=request.getContextPath() %>/resources/js/demo.js" type="text/javascript"></script>
  
  <script src="<%=request.getContextPath() %>/resources/plugins/fullcalendar/fullcalendar.js" type="text/javascript"></script>
  <link href="<%=request.getContextPath() %>/resources/plugins/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
  <link href="<%=request.getContextPath() %>/resources/plugins/fullcalendar/fullcalendar.print.css" rel="stylesheet" type="text/css" media='print' />
  
  <script src="<%=request.getContextPath() %>/resources/plugins/colorpicker/bootstrap-colorpicker.min.js" type="text/javascript"></script>
  <link href="<%=request.getContextPath() %>/resources/plugins/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet" type="text/css" media='print' />
 

<script type="text/javascript">
$(document).ready(function() 
{
});
</script>

<%

/*

		model.addAttribute("messagelist", messagelist);
		model.addAttribute("pagingUtil", pagingUtil);
		
*/
%>


<!-- <table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!--   <tbody><tr> -->
<!--     <td height="40" align="center" valign="bottom"> -->
<!-- 	<table border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed;"> -->
<!--       <tbody><tr height="28"> -->
<!--         <td width="170" align="center" valign="top" background="/img/note/tabmenu01_out.gif" onclick="document.location.href='/service/load/frame_sms.php'" style="cursor:hand;">&nbsp;</td> -->
<!--         <td width="2"></td> -->
<!--         <td width="170" align="right" valign="middle" background="/img/note/tabmenu02_over.gif"> -->
<!--         		</td> -->
<!--       </tr> -->
<!--     </tbody></table> -->
<!-- 	</td> -->
<!--   </tr> -->
<!-- </tbody></table> -->
<script language="javascript">

function _delete()
{
    if(chkcount())
    {
        if(confirm('선택한 쪽지를 삭제하시겠습니까?'))
        {
            document.noteList.work.value = 'delete';
            document.noteList.submit();
        }
    }
}

</script>
<!--메뉴버튼TB-->

<!-- <table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!--   <tbody><tr> -->
<!-- 	<td height="35" align="center" bgcolor="#ececec" style="border-bottom:1px #c9c9c9 solid;border-top:1px #c9c9c9 solid;padding:0 5px 0 5px;"> -->
<!-- 	<table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!--       <tbody><tr> -->
<!--         <td width="200" align="left"> -->
<!-- 		<table border="0" cellspacing="0" cellpadding="0"> -->
<!--           <tbody><tr> -->
<!--             <td><a href="note_list.php"><img src="../resources/img/message/bt_note1.gif" border="0"></a></td> -->
<!--             <td width="5"></td> -->
<!--             <td><a href="note_send_list.php"><img src="../resources/img/message//bt_note2.gif" border="0"></a></td> -->
<!--             <td width="5"></td> -->
<!--             <td><a href="note_keep_list.php"><img src="../resources/img/message//bt_note3.gif" border="0"></a></td> -->
<!--           </tr> -->
<!--         </tbody></table> -->
<!-- 		</td> -->
<!--         <td width="" align="right"><a href="note_write.php"><img src="../resources/img/message//bt_send.gif" border="0"></a></td> -->
<!--       </tr> -->
<!--     </tbody></table> -->
<!-- 	</td> -->
<!--   </tr> -->
<!-- </tbody></table> -->
<!--메뉴버튼TB-->
<!--기능버튼TB-->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="34" align="center" bgcolor="#f9f9f9" style="border-bottom:1px #d9d9d9 solid;padding:0 5px 0 5px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody><tr>
          <td width="110" align="left"><table border="0" cellspacing="0" cellpadding="0">
              <tbody><tr>
                <td><a href="javascript:_delete()"><img src="../resources/img/message/bt_delete.gif"></a></td>
                <td width="5"></td>
                <td><a href="javascript:_keep()"><img src="../resources/img/message/bt_keep.gif" border="0"></a></td>
              </tr>
          </tbody></table></td>
          <td width="" align="center" class="m_sp" style="font-weight:bold;color:#000;padding:3px 0 0 0;">받은쪽지함</td>
          <td width="110">&nbsp;</td>
        </tr>
    </tbody></table></td>
  </tr>
</tbody></table>
<!--기능버튼TB-->
<!--리스트TB START-->
<form name="noteList" method="post" action="note_action_exe.php">
<input type="hidden" name="work">
<table width="100%" id="noteList" border="0" cellspacing="0" cellpadding="0" class="tbl_board9">
  <tbody><tr height="20">
	<td width="35" align="center" style="border-bottom:1px #eaeaea solid;border-right:1px #eaeaea solid;"><input type="checkbox" name="checkbox" onclick="chkall('noteList', this.checked)"></td>
	<td width="70" align="left" style="border-bottom:1px #eaeaea solid;border-right:1px #eaeaea solid;padding:3px 0 0 7px;" class="title"><a href="javascript:sort('fromname');"><font color="#a6a6a6">보낸사람</font>   </a></td>
	<td width="" align="left" style="border-bottom:1px #eaeaea solid;border-right:1px #eaeaea solid;padding:3px 0 0 7px;" class="title"><a href="javascript:sort('content');"><font color="#a6a6a6">내용</font>       </a></td>
	<td width="90" align="left" style="border-bottom:1px #eaeaea solid;border-right:1px #eaeaea solid;padding:3px 0 0 7px;" class="title"><a href="javascript:sort('rcvdt');"><font color="#a6a6a6">날짜</font>       <img src="../resources/img/list_up.gif" align="absmiddle"></a></td>
  </tr>
  
  
  
  
  
  
  
  
  <!-- 메세지 객체 시작 -->
  
  <c:forEach items="${messagelist}" var="ml" varStatus="mls">
     <tr>
	<td height="23" align="center" style="border-bottom:1px #eaeaea solid;"><input class="chkbox" type="checkbox" name="notemgno[]" value="548"></td>
	<td align="center" class="m_sp" style="padding:2px 0 0 0;border-bottom:1px #eaeaea solid;">${ml.sendid }</td>
    <td align="left" class="m_sp" style="padding:2px 0 0 7px;border-bottom:1px #eaeaea solid;">
      <span class="stip" title=""><a href="note_view.php?notemgno=548&amp;rtn_url=%2Fservice%2Fload%2Fnote_list.php" style="font-weight:normal">${ml.msgtitle}</a></span>
    </td>
    <td align="center" class="date" style="border-bottom:1px #eaeaea solid;">${ml.msgdate}</td>
  </tr>
  
  </c:forEach>
  <!-- 메세지 객체 끝 -->
  
  






  
    </tbody></table>
</form>
<!--리스트TB END-->
<!--기능버튼TB-->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="34" align="center" bgcolor="#f9f9f9" style="border-bottom:1px #d9d9d9 solid;padding:0 5px 0 5px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody><tr>
          <td width="110" align="left"><table border="0" cellspacing="0" cellpadding="0">
              <tbody><tr>
                <td><a href="javascript:_delete()"><img src="../resources/img/message/bt_delete.gif"></a></td>
                <td width="5"></td>
                <td><a href="javascript:_keep()"><img src="../resources/img/message/bt_keep.gif" border="0"></a></td>
              </tr>
          </tbody></table></td>
          <td width="" align="center" class="m_sp" style="font-weight:bold;color:#000;padding:3px 0 0 0;">받은쪽지함</td>
          <td width="110">&nbsp;</td>
        </tr>
    </tbody></table></td>
  </tr>
</tbody></table>
<!--기능버튼TB-->
<!--카운터 TB START-->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="10"></td>
  </tr>
  <tr>
    <td align="center">
        </td>
  </tr>
  <tr>
    <td height="20"></td>
  </tr>
  <tr>
                        <td align="center" height="30" bgcolor="#ececec" style="border-bottom: 1px #c9c9c9 solid; border-top: 1px #c9c9c9 solid; padding: 0 0 0 12px;">
                    
   						   <c:choose>
   						   		<c:when test="${paging.start==1}">
   						   		
   						   		</c:when>
   						   		<c:otherwise>
   						   			<a href="${pageContext.request.contextPath}/message/ReceiveMessage.htm?cpage=${paging.start-1}&pagesize=${pagesize}">이전</a>
   						   		</c:otherwise>
   						   
   						   </c:choose>	                 		
                           <c:forEach begin="${paging.start}" end="${paging.end}" var="page">
                           		
                           		<c:choose>
                           			<c:when test="${paging.currentPage==page}">
                           				<font color="#ff6600"><b>[${page}]</b></font>
                           			</c:when>
                           			<c:otherwise>
                           				<b><a href="${pageContext.request.contextPath}/message/ReceiveMessage.htm?cpage=${page}&pagesize=${pagesize}">[${page}]</a></b>
                           			</c:otherwise>
                           		</c:choose>
                           		
                           		
                           </c:forEach>
                           
                              <c:choose>
   						   		<c:when test="${paging.end < paging.finalPage}">
   						   			<a href="${pageContext.request.contextPath}/message/ReceiveMessage.htm?cpage=${paging.end+1}&pagesize=${pagesize}">다음</a>
   						   		</c:when>
   						   		<c:otherwise>
   						   			
   						   		</c:otherwise>
   						   
   						   </c:choose>	
                           
                        </td>
                     </tr>
</tbody></table>
</body>