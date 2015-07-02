<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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





    
<!--기능버튼TB-->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="34" align="center" bgcolor="#f9f9f9" style="border-bottom:1px #d9d9d9 solid;padding:0 5px 0 5px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody><tr>
          <td width="110" align="left"><table border="0" cellspacing="0" cellpadding="0">
              <tbody><tr>
                <td><a href="${pageContext.request.contextPath}/message/ReceiveDelete.htm?msgnum=${message.msgnum}"><img src="../resources/img/message/bt_delete.gif" onclick="if(!confirm('쪽지를 삭제하시겠습니까?')) return false;"></a></td>
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
    <td height="30" style="border-bottom:#eaeaea 1px solid;padding:7px 10px 4px 10px;" class="m_sp"><b><font color="#000000">${message.sendid}</font></b>님이 내게 쓴 쪽지 </td>
  </tr>
  <tr>
    <td height="30" style="border-bottom:#eaeaea 1px solid;padding:7px 10px 4px 10px;"><b>보낸시간</b> : ${message.msgdate }</td>
  </tr>
  <tr>
    <td height="223" valign="top" style="border-bottom:#eaeaea 1px solid;padding:10px;"><textarea name="textarea" style="width:100%;height:100%;border:#adafaa 1px solid;font-size:12px;color:#333333;line-height:140%;padding:5px;" readonly="readonly">${message.msgcontent }</textarea></td>
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