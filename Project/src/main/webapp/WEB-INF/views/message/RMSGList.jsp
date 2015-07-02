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
        <td width="170" align="center" valign="top" background="/img/note/tabmenu01_out.gif" onclick="document.location.href='/service/load/frame_sms.php'" style="cursor:hand;">&nbsp;</td>
        <td width="2"></td>
        <td width="170" align="right" valign="middle" background="/img/note/tabmenu02_over.gif">
        		</td>
      </tr>
    </tbody></table>
	</td>
  </tr>
</tbody></table>
<script language="javascript">
$(document).ready(function()
{
    $(".stip").simpletooltip();
});
function chkcount()
{
    var flag = false;
    var chkBox = document.getElementsByName("notemgno[]");
    for(var i=0; i < chkBox.length; i++)
    {
        if(chkBox[i].checked)
        {
            flag = true;
            break;
        }
    }
    if(!flag)
    {
        return false;
    }
    return true;
}

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
function _keep()
{
    if(chkcount())
    {
        document.noteList.work.value = 'keep';
        document.noteList.submit();
    }
}
</script>
<!--메뉴버튼TB-->
<form name="paging" method="post" action="/service/load/note_list.php">
<input type="hidden" name="page" value="">
<input type="hidden" name="sort" value="rcvdt">
<input type="hidden" name="line" value="desc">
<input type="hidden" name="xls" value="">
<input type="hidden" name="listcnt" value="">
<input type="hidden" name="pagecnt" value="">
</form>
<script type="text/javascript" src="/js/jquery/jquery.scrollto.min.js"></script>
<script language="javascript">
function go_page(page)
{
    document.paging.xls.value = '0';
    document.paging.page.value = page;
    document.paging.submit();
}
function go_next_list(lst)
{
    document.paging.xls.value = '0';
    document.paging.page.value = 1;

    document.paging.action = document.paging.action + '#list_'+lst;

    var listcnt = parseInt(document.paging.listcnt.value, 10);
    var pagecnt = parseInt(document.paging.pagecnt.value, 10);
    document.paging.listcnt.value = listcnt+pagecnt;

    document.paging.submit();
}
function sort(st)
{
    if(document.paging.sort.value == st)
    {
        document.paging.line.value = reverseLine(document.paging.line.value);
    }
    document.paging.xls.value = '0';
    document.paging.page.value = 1;
    document.paging.sort.value = st;
    document.paging.submit();
}
function reverseLine(lt)
{
    if(lt == "desc") return "asc";
    else             return "desc";
}
function xls()
{
    document.paging.xls.value = '1';
    document.paging.submit();
}
</script>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
	<td height="35" align="center" bgcolor="#ececec" style="border-bottom:1px #c9c9c9 solid;border-top:1px #c9c9c9 solid;padding:0 5px 0 5px;">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tbody><tr>
        <td width="200" align="left">
		<table border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td><a href="note_list.php"><img src="/img/note/bt_note1.gif" border="0"></a></td>
            <td width="5"></td>
            <td><a href="note_send_list.php"><img src="/img/note/bt_note2.gif" border="0"></a></td>
            <td width="5"></td>
            <td><a href="note_keep_list.php"><img src="/img/note/bt_note3.gif" border="0"></a></td>
          </tr>
        </tbody></table>
		</td>
        <td width="" align="right"><a href="note_write.php"><img src="/img/note/bt_send.gif" border="0"></a></td>
      </tr>
    </tbody></table>
	</td>
  </tr>
</tbody></table>
<!--메뉴버튼TB-->
<!--기능버튼TB-->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="34" align="center" bgcolor="#f9f9f9" style="border-bottom:1px #d9d9d9 solid;padding:0 5px 0 5px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody><tr>
          <td width="110" align="left"><table border="0" cellspacing="0" cellpadding="0">
              <tbody><tr>
                <td><a href="javascript:_delete()"><img src="/img/webmail/bt_delete.gif"></a></td>
                <td width="5"></td>
                <td><a href="javascript:_keep()"><img src="/img/note/bt_keep.gif" border="0"></a></td>
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
	<td width="80" align="left" style="border-bottom:1px #eaeaea solid;border-right:1px #eaeaea solid;padding:3px 0 0 7px;" class="title"><a href="javascript:sort('rcvdt');"><font color="#a6a6a6">날짜</font>       <img src="/img/webmail/list_up.gif" align="absmiddle"></a></td>
  </tr>
      <tr>
	<td height="23" align="center" style="border-bottom:1px #eaeaea solid;"><input class="chkbox" type="checkbox" name="notemgno[]" value="548"></td>
	<td align="center" class="m_sp" style="padding:2px 0 0 0;border-bottom:1px #eaeaea solid;">데모사용자</td>
    <td align="left" class="m_sp" style="padding:2px 0 0 7px;border-bottom:1px #eaeaea solid;">
      <span class="stip" title=""><a href="note_view.php?notemgno=548&amp;rtn_url=%2Fservice%2Fload%2Fnote_list.php" style="font-weight:normal">안뇽</a></span>
    </td>
    <td align="center" class="date" style="border-bottom:1px #eaeaea solid;">15/04/08 18:29</td>
  </tr>
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
                <td><a href="javascript:_delete()"><img src="/img/webmail/bt_delete.gif"></a></td>
                <td width="5"></td>
                <td><a href="javascript:_keep()"><img src="/img/note/bt_keep.gif" border="0"></a></td>
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
</tbody></table>
</body>