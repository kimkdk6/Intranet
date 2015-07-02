<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body bgcolor="#ffffff" leftmargin="0" topmargin="0"><div id="_CalendarDiv" style="z-index:999;background:#ffffcc; width:150px; display:none; position:absolute"><div id="calendar" style="z-index:999;position:absolute; display:none"><table width="150" border="1" cellspacing="0" cellpadding="0" bordercolor="#858585" bgcolor="#ffffff">  <tbody><tr>    <td align="center" valign="top">    <table width="140" border="0" cellspacing="0" cellpadding="0">      <tbody><tr>        <td height="20" valign="top"><span id="caption">          <table width="140" border="0" cellspacing="0" cellpadding="0">            <tbody><tr>              <td width="70" style="padding:5 0 0 12"><span id="spanYear"></span></td>              <td width="57" style="padding:5 0 0 2"><span id="spanMonth"></span></td>              <td width="13" align="right" valign="middle" style="padding:2 2 0 0;"><span style="cursor:hand" onclick="oPopup.hide();"><img src="/img/bt_calendar_close.gif" border="0" align="absmiddle"></span></td>            </tr>          </tbody></table>        </span></td>      </tr>      <tr height="1">        <td style="padding:3px" bgcolor="#ffffff"><div id="dcontent"></div></td>      </tr>    </tbody></table>    </td>  </tr></tbody></table></div><div id="selectMonth" style="z-index:+999;position:absolute;display:none;"></div> <div id="selectYear" style="z-index:+999;position:absolute;display:none;"></div></div>
<script type="text/javascript" src="/js/jquery/jquery.history.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.form.js"></script>
<script type="text/javascript" src="/js/jquery/ui.core.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.cookie.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.dynatree.min.js"></script>
<script type="text/javascript">
$(document).ready(function() 
{
});
</script>


<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="40" align="center" valign="bottom">
	<table border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed;">
      <tbody><tr height="28">
        <td width="170" align="center" valign="top" background="../resources/img/message/tabmenu01_out.gif" onclick="document.location.href='/service/load/frame_sms.php'" style="cursor:hand;">&nbsp;</td>
        <td width="2"></td>
        <td width="170" align="right" valign="middle" background="../resources/img/message/tabmenu02_over.gif">
        		</td>
      </tr>
    </tbody></table>
	</td>
  </tr>
</tbody></table>
    
<!--기능버튼TB-->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="34" align="center" bgcolor="#f9f9f9" style="border-bottom:1px #d9d9d9 solid;padding:0 5px 0 5px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody><tr>
          <td width="110" align="left"><table border="0" cellspacing="0" cellpadding="0">
              <tbody><tr>
                <td><a href="note_action_exe.php?notemgno[]=548&amp;work=delete"><img src="../resources/img/message/bt_delete.gif" onclick="if(!confirm('쪽지를 삭제하시겠습니까?')) return false;"></a></td>
                <td width="5"></td>
                <td><a href="${pageContext.request.contextPath}/message/ReceiveMessage.htm"><img src="../resources/img/message/bt_list.gif" border="0"></a></td>
              </tr>
          </tbody></table></td>
          <td width="" align="center" class="m_sp" style="font-weight:bold;color:#000;padding:3px 0 0 0;">받은쪽지함</td>
          <td width="110">&nbsp;</td>
        </tr>
    </tbody></table></td>
  </tr>
</tbody></table>
<!--기능버튼TB-->
<!--내용TB START-->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="30" style="border-bottom:#eaeaea 1px solid;padding:7px 10px 4px 10px;" class="m_sp"><b><font color="#000000">데모사용자 (demo-1) </font></b>님이 내게 쓴 쪽지 </td>
  </tr>
  <tr>
    <td height="30" style="border-bottom:#eaeaea 1px solid;padding:7px 10px 4px 10px;"><b>보낸시간</b> : 2015-04-08 18:29:25</td>
  </tr>
  <tr>
    <td height="223" valign="top" style="border-bottom:#eaeaea 1px solid;padding:10px;"><textarea name="textarea" style="width:100%;height:100%;border:#adafaa 1px solid;font-size:12px;color:#333333;line-height:140%;padding:5px;" readonly="readonly">안뇽</textarea></td>
  </tr>
</tbody></table>
<!--내용TB END-->
<!--기능버튼TB-->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="34" align="center" bgcolor="#f9f9f9" style="border-bottom:1px #d9d9d9 solid;padding:0 5px 0 5px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody><tr>
          <td width="110" align="left"><table border="0" cellspacing="0" cellpadding="0">
              <tbody><tr>
                <td><a href="note_action_exe.php?notemgno[]=548&amp;work=delete"><img src="../resources/img/message/bt_delete.gif" onclick="if(!confirm('쪽지를 삭제하시겠습니까?')) return false;"></a></td>
                <td width="5"></td>
                <td><a href="/service/load/note_list.php"><img src="../resources/img/message/bt_list.gif" border="0"></a></td>
              </tr>
          </tbody></table></td>
          <td width="" align="center" class="m_sp" style="font-weight:bold;color:#000;padding:3px 0 0 0;">받은쪽지함</td>
          <td width="110">&nbsp;</td>
        </tr>
    </tbody></table></td>
  </tr>
</tbody></table>
<!--기능버튼TB-->
<!--여백 TB START-->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="30"></td>
  </tr>
</tbody></table>
<!--여백 TB END-->
</body>