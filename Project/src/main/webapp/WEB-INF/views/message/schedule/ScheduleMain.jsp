<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<tr>
    <td align="center" valign="top" bgcolor="#ffffff" style="border-left:1px #b1b1b1 solid;border-right:1px #b1b1b1 solid;border-bottom:1px #b1b1b1 solid;"><script language="javascript">
$(document).ready(function() {
    $("#__leftbar").hover(function(){
        $(this).css("background-color", "#ededed");
    },
    function(){
        $(this).css("background-color", "#FFFFFF");
    });

    $("#__leftbar").toggle(function(){
        $(this).html("<img src='/img/calendar/bt_arrow_right.gif'>");
        $("#__leftmenu").hide();
    },
    function(){
        $(this).html("<img src='/img/calendar/bt_arrow_left.gif'>");
        $("#__leftmenu").show();
    });

    $("#__rightbar").hover(function(){
        $(this).css("background-color", "#ededed");
    },
    function(){
        $(this).css("background-color", "#FFFFFF");
    });

        right_frame_menu('sms');
        $("#__rightbar").toggle(function(){
            $(this).html("<img src='/img/calendar/bt_arrow_right.gif'>");
            $("#__rightmenu").show();
        },
        function(){
            $(this).html("<img src='/img/calendar/bt_arrow_left.gif'>");
            $("#__rightmenu").hide();
        });
    });
</script>
    <!--컨텐츠구분TB START-->
    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed;">
      <tbody><tr>
                <td width="210" align="center" valign="top" style="border-right:1px #b1b1b1 solid;" id="__leftmenu">

        <script language="javascript" src="/calendar/js/calendar_menu.js"></script>
<script language="javascript" src="/calendar/js/calendar_utils.js"></script>
<script language="javascript" src="/calendar/js/category.js"></script>
<script language="javascript" src="/calendar/js/schedule.js"></script>
<script language="javascript" src="/calendar/js/anniversary.js"></script>
<script language="javascript" src="/calendar/js/day_view.js"></script>
<script language="javascript" src="/calendar/js/week_view.js"></script>
<script language="javascript" src="/calendar/js/month_view.js"></script>
<script language="javascript" src="/calendar/js/mini_calendar.js"></script>
<script language="javascript">
gUserNo = '31';
</script>
<table width="100%" border="0" cellpadding="0" cellspacing="0"> 
  <tbody><tr> 
    <td height="46" align="center" valign="middle" style="padding:0 0 0 0;border-bottom:1px #e7e7e7 solid;"> 
    <table border="0" cellspacing="0" cellpadding="0"> 
      <tbody><tr> 
        <td><a href="javascript:_openSchedule()"><img src="/img/calendar/bt_write2.gif"></a></td> 
        <td><a href="javascript:calendar_request.anniversaryList()"><img src="/img/calendar/bt_write3.gif"></a></td> 
      </tr> 
    </tbody></table>              
    </td> 
  </tr>  
  <tr> 
    <td align="center" valign="top" style="padding:13px 10px 20px 10px;border-bottom:1px #e7e7e7 solid;" id="miniCalendar">
<table width="100%" border="0" cellspacing="0" cellpadding="0"> 
  <tbody><tr><td height="23" align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0"> 
    <tbody><tr> 
      <td width="70%" height="23" align="right" class="bigtxt2"><a href="javascript:_loadMiniCalendar('2014', '06', true)"><img src="/img/calendar/bt_prev.gif" align="absmiddle"></a>2015<a href="javascript:_loadMiniCalendar('2016', '06', true)"><img src="/img/calendar/bt_next.gif" align="absmiddle"></a>
        
        <a href="javascript:_loadMiniCalendar('2015', '05', true)"><img src="/img/calendar/bt_prev.gif" align="absmiddle"></a>06<a href="javascript:_loadMiniCalendar('2015', '07', true)"><img src="/img/calendar/bt_next.gif" align="absmiddle"></a></td>
      <td width="30%" align="center" style="padding:3px 0 0 0;" class="stxt"><a href="javascript:calendar_request.yearView()">1년보기</a></td> 
    </tr></tbody></table></td>
  </tr> 
  <tr> 
    <td align="center" valign="top"><table id="mCalendar" width="100%" border="0" cellspacing="0" cellpadding="0" class="left_calendar"> 
      <tbody><tr height="27" align="center"> 
        <th width="15%">일</th><th width="14%">월</th><th width="14%">화</th><th width="14%">수</th><th width="14%">목</th><th width="14%">금</th><th width="15%">토</th>
      </tr> 
       
      <tr id="minirow0"> 
         
        <td align="center" id="mc20150531" mr="0" mc="0" onclick="calendar_request.dayView('2015','05','31')"><span class="oldhol">31</span></td> 
         
        <td align="center" id="mc20150601" mr="0" mc="1" onclick="calendar_request.dayView('2015','06','01')"><span class="">1</span></td> 
         
        <td align="center" id="mc20150602" mr="0" mc="2" onclick="calendar_request.dayView('2015','06','02')"><span class="">2</span></td> 
         
        <td align="center" id="mc20150603" mr="0" mc="3" onclick="calendar_request.dayView('2015','06','03')"><span class="">3</span></td> 
         
        <td align="center" id="mc20150604" mr="0" mc="4" onclick="calendar_request.dayView('2015','06','04')"><span class="">4</span></td> 
         
        <td align="center" id="mc20150605" mr="0" mc="5" onclick="calendar_request.dayView('2015','06','05')"><span class="">5</span></td> 
         
        <td align="center" id="mc20150606" mr="0" mc="6" onclick="calendar_request.dayView('2015','06','06')"><span class="hol">6</span></td> 
              </tr> 
       
      <tr id="minirow1"> 
         
        <td align="center" id="mc20150607" mr="1" mc="0" onclick="calendar_request.dayView('2015','06','07')"><span class="hol">7</span></td> 
         
        <td align="center" id="mc20150608" mr="1" mc="1" onclick="calendar_request.dayView('2015','06','08')"><span class="">8</span></td> 
         
        <td align="center" id="mc20150609" mr="1" mc="2" onclick="calendar_request.dayView('2015','06','09')"><span class="">9</span></td> 
         
        <td align="center" id="mc20150610" mr="1" mc="3" onclick="calendar_request.dayView('2015','06','10')"><span class="">10</span></td> 
         
        <td align="center" id="mc20150611" mr="1" mc="4" onclick="calendar_request.dayView('2015','06','11')"><span class="">11</span></td> 
         
        <td align="center" id="mc20150612" mr="1" mc="5" onclick="calendar_request.dayView('2015','06','12')"><span class="">12</span></td> 
         
        <td align="center" id="mc20150613" mr="1" mc="6" onclick="calendar_request.dayView('2015','06','13')" class="hard"><span class="sat">13</span></td> 
              </tr> 
       
      <tr id="minirow2"> 
         
        <td align="center" id="mc20150614" mr="2" mc="0" onclick="calendar_request.dayView('2015','06','14')"><span class="hol">14</span></td> 
         
        <td align="center" id="mc20150615" mr="2" mc="1" onclick="calendar_request.dayView('2015','06','15')"><span class="">15</span></td> 
         
        <td align="center" id="mc20150616" mr="2" mc="2" onclick="calendar_request.dayView('2015','06','16')"><span class="">16</span></td> 
         
        <td align="center" id="mc20150617" mr="2" mc="3" onclick="calendar_request.dayView('2015','06','17')"><span class="">17</span></td> 
         
        <td align="center" id="mc20150618" mr="2" mc="4" onclick="calendar_request.dayView('2015','06','18')"><span class="">18</span></td> 
         
        <td align="center" id="mc20150619" mr="2" mc="5" onclick="calendar_request.dayView('2015','06','19')"><span class="">19</span></td> 
         
        <td align="center" id="mc20150620" mr="2" mc="6" onclick="calendar_request.dayView('2015','06','20')"><span class="sat">20</span></td> 
              </tr> 
       
      <tr id="minirow3"> 
         
        <td align="center" id="mc20150621" mr="3" mc="0" onclick="calendar_request.dayView('2015','06','21')"><span class="hol">21</span></td> 
         
        <td align="center" id="mc20150622" mr="3" mc="1" onclick="calendar_request.dayView('2015','06','22')"><span class="">22</span></td> 
         
        <td align="center" id="mc20150623" mr="3" mc="2" style="border:1px solid #585858" onclick="calendar_request.dayView('2015','06','23')" class="spot"><span class="">23</span></td> 
         
        <td align="center" id="mc20150624" mr="3" mc="3" onclick="calendar_request.dayView('2015','06','24')"><span class="">24</span></td> 
         
        <td align="center" id="mc20150625" mr="3" mc="4" onclick="calendar_request.dayView('2015','06','25')"><span class="">25</span></td> 
         
        <td align="center" id="mc20150626" mr="3" mc="5" onclick="calendar_request.dayView('2015','06','26')"><span class="">26</span></td> 
         
        <td align="center" id="mc20150627" mr="3" mc="6" onclick="calendar_request.dayView('2015','06','27')" class="hard"><span class="sat">27</span></td> 
              </tr> 
       
      <tr id="minirow4"> 
         
        <td align="center" id="mc20150628" mr="4" mc="0" onclick="calendar_request.dayView('2015','06','28')"><span class="hol">28</span></td> 
         
        <td align="center" id="mc20150629" mr="4" mc="1" onclick="calendar_request.dayView('2015','06','29')"><span class="">29</span></td> 
         
        <td align="center" id="mc20150630" mr="4" mc="2" onclick="calendar_request.dayView('2015','06','30')"><span class="">30</span></td> 
         
        <td align="center" id="mc20150701" mr="4" mc="3" onclick="calendar_request.dayView('2015','07','01')"><span class="old">1</span></td> 
         
        <td align="center" id="mc20150702" mr="4" mc="4" onclick="calendar_request.dayView('2015','07','02')"><span class="old">2</span></td> 
         
        <td align="center" id="mc20150703" mr="4" mc="5" onclick="calendar_request.dayView('2015','07','03')"><span class="old">3</span></td> 
         
        <td align="center" id="mc20150704" mr="4" mc="6" onclick="calendar_request.dayView('2015','07','04')"><span class="oldsat">4</span></td> 
              </tr> 
          </tbody></table></td> 
  </tr> 
</tbody></table> </td> 
  </tr> 
  <tr> 
  	<td align="center" valign="top" style="padding:9px 0 7px 0;border-bottom:1px #e7e7e7 solid;" id="myCategory">
  	  <script>
categories = [];
categories[categories.length] = {"catmgno":"72","domkey":"2","deptkey":"21","usrkey":"31","catname":"\ud68c\uc0ac\uc77c\uc815","content":"dfdfd","catrgb":"#44be1e","catshare":"C","notiflag":"1","notimin":"1440","notisms":"1","notimail":"0","openuser":"0","priflag":"1","catkey":"72","noshow":"0","nouse":"0"} ;

categories[categories.length] = {"catmgno":"74","domkey":"2","deptkey":"36","usrkey":"31","catname":"\uac1c\uc778","content":"","catrgb":"#4b4b4b","catshare":"C","notiflag":"0","notimin":"0","notisms":"0","notimail":"0","openuser":"0","priflag":"0","catkey":"74","noshow":"0","nouse":"0"} ;

categories[categories.length] = {"catmgno":"2157","domkey":"2","deptkey":"21","usrkey":"31","catname":"\ud14c\uc2a4\ud2b8","content":"","catrgb":"#b4b4b4","catshare":"N","notiflag":"0","notimin":"30","notisms":"0","notimail":"0","openuser":"0","priflag":"0","catkey":"2157","noshow":"0","nouse":"0"} ;

categories[categories.length] = {"catmgno":"2357","domkey":"","deptkey":"21","usrkey":"","catname":"\uc7a5\ud61c\uc84d\uc528","content":"\u3141\u3134\u3147\u3141\u3134\u3147","catrgb":"#6e9cf2","catshare":"C","notiflag":"0","notimin":"30","notisms":"0","notimail":"0","openuser":"0","priflag":"0","catkey":"","noshow":"","nouse":""} ;

categories[categories.length] = {"catmgno":"2359","domkey":"","deptkey":"21","usrkey":"","catname":"\uae40\ub355\uacbd\uc528","content":"\u3141\u3134\u3147\u3141\u3134\u3147","catrgb":"#6e9cf2","catshare":"C","notiflag":"0","notimin":"30","notisms":"0","notimail":"0","openuser":"0","priflag":"0","catkey":"","noshow":"","nouse":""} ;



categories[categories.length] = {"catmgno":"1628","domkey":"2","deptkey":"441","usrkey":"31","catname":"\uccad\uc18c","content":"","catrgb":"#6e9cf2","catshare":"C","notiflag":"0","notimin":"30","notisms":"0","notimail":"0","openuser":"0","priflag":"0","catkey":"1628","noshow":"0","nouse":"0","usrmgno":"1532","usriden":"demo-1","usrpass":"1bbd886460827015e5d605ed44252251","usrname":"\ub370\ubaa8\uc0ac\uc6a9\uc790","chosung":"\u3137\u3141\u3145\u3147\u3148","usradmn":"0","usrdept":"441","usrresp":"618","usrstat":"1","usrcomt":"1","usrcoma":"0","malquta":"0","office":"","mobile":"","zipcode":"","address":"","birthday":"","birthsolar":"1","usrindt":"","usrycct":"10","usrcrdt":"2013-06-07 17:23:32","usrupdt":"2013-06-07 17:23:32","usrprdt":"","usrdrsa":"0","usrtaxa":"0","usrappa":"0","home":"","usrwrka":"0","usrpos":"1","usrappt":"0","domain_name":"hangroup.co.kr","usrappc":"0","usrappd":"0","email":"","openhome":"0","openaddr":"0","openbirth":"0","conversion":"0","usrautorespond":"0","usrappb":"0"} ;
categories[categories.length] = {"catmgno":"2363","domkey":"2","deptkey":"441","usrkey":"","catname":"\uae40\uc131\uc775","content":"","catrgb":"#6e9cf2","catshare":"C","notiflag":"0","notimin":"30","notisms":"0","notimail":"0","openuser":"0","priflag":"0","catkey":"","noshow":"","nouse":"","usrmgno":"1532","usriden":"demo-1","usrpass":"1bbd886460827015e5d605ed44252251","usrname":"\ub370\ubaa8\uc0ac\uc6a9\uc790","chosung":"\u3137\u3141\u3145\u3147\u3148","usradmn":"0","usrdept":"441","usrresp":"618","usrstat":"1","usrcomt":"1","usrcoma":"0","malquta":"0","office":"","mobile":"","zipcode":"","address":"","birthday":"","birthsolar":"1","usrindt":"","usrycct":"10","usrcrdt":"2013-06-07 17:23:32","usrupdt":"2013-06-07 17:23:32","usrprdt":"","usrdrsa":"0","usrtaxa":"0","usrappa":"0","home":"","usrwrka":"0","usrpos":"1","usrappt":"0","domain_name":"hangroup.co.kr","usrappc":"0","usrappd":"0","email":"","openhome":"0","openaddr":"0","openbirth":"0","conversion":"0","usrautorespond":"0","usrappb":"0"} ;
categories[categories.length] = {"catmgno":"2356","domkey":"2","deptkey":"441","usrkey":"31","catname":"\ud14c\uc2a4\ud2b8","content":"\ud14c\uc2a4\ud2b8","catrgb":"#7b8493","catshare":"C","notiflag":"0","notimin":"30","notisms":"0","notimail":"0","openuser":"0","priflag":"0","catkey":"2356","noshow":"0","nouse":"0","usrmgno":"1532","usriden":"demo-1","usrpass":"1bbd886460827015e5d605ed44252251","usrname":"\ub370\ubaa8\uc0ac\uc6a9\uc790","chosung":"\u3137\u3141\u3145\u3147\u3148","usradmn":"0","usrdept":"441","usrresp":"618","usrstat":"1","usrcomt":"1","usrcoma":"0","malquta":"0","office":"","mobile":"","zipcode":"","address":"","birthday":"","birthsolar":"1","usrindt":"","usrycct":"10","usrcrdt":"2013-06-07 17:23:32","usrupdt":"2013-06-07 17:23:32","usrprdt":"","usrdrsa":"0","usrtaxa":"0","usrappa":"0","home":"","usrwrka":"0","usrpos":"1","usrappt":"0","domain_name":"hangroup.co.kr","usrappc":"0","usrappd":"0","email":"","openhome":"0","openaddr":"0","openbirth":"0","conversion":"0","usrautorespond":"0","usrappb":"0"} ;
categories[categories.length] = {"catmgno":"2360","domkey":"2","deptkey":"441","usrkey":"","catname":"\ud64d","content":"\u3141","catrgb":"#6e9cf2","catshare":"C","notiflag":"0","notimin":"30","notisms":"0","notimail":"0","openuser":"0","priflag":"0","catkey":"","noshow":"","nouse":"","usrmgno":"1532","usriden":"demo-1","usrpass":"1bbd886460827015e5d605ed44252251","usrname":"\ub370\ubaa8\uc0ac\uc6a9\uc790","chosung":"\u3137\u3141\u3145\u3147\u3148","usradmn":"0","usrdept":"441","usrresp":"618","usrstat":"1","usrcomt":"1","usrcoma":"0","malquta":"0","office":"","mobile":"","zipcode":"","address":"","birthday":"","birthsolar":"1","usrindt":"","usrycct":"10","usrcrdt":"2013-06-07 17:23:32","usrupdt":"2013-06-07 17:23:32","usrprdt":"","usrdrsa":"0","usrtaxa":"0","usrappa":"0","home":"","usrwrka":"0","usrpos":"1","usrappt":"0","domain_name":"hangroup.co.kr","usrappc":"0","usrappd":"0","email":"","openhome":"0","openaddr":"0","openbirth":"0","conversion":"0","usrautorespond":"0","usrappb":"0"} ;

</script>
<table width="100%" border="0" cellspacing="0" cellpadding="0"> 
  <tbody><tr> 
    <td style="padding:0 12px 3px 12px;"> 
    <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
      <tbody><tr> 
        <td width="66%" class="m_sp"><b><a href="javascript:calendar_request.categoryList()"><font color="#333333">내 카테고리 관리</font></a></b></td> 
        <td width="34%" align="right"><a href="javascript:_openCategory({})"><img src="/img/webmail/bt_add.gif" align="absmiddle"></a></td> 
      </tr> 
    </tbody></table>                  
    </td> 
  </tr> 
  <tr> 
    <td align="center" valign="top" style="padding:0 12px 0 12px;">
      <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
                        <tbody><tr> 
          <td width="10%">
           <input type="checkbox" name="checkedCategory" checked="" value="72" onclick="_viewflagCategory(72, this.checked)">
         </td> 
          <td width="90%" height="18"><div id="apDiv72" style="width:100%;height:100%;background-color:#44be1e;"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
              <tbody><tr height="18"> 
                <td width="" style="color:#FFFFFF;padding:2px 0 0 2px;">
                  <input name="catname" type="text" class="input_trans" style="width:100%;" value="회사일정" onblur="_category_name(72, this.value)">
                </td> 
                <td width="15" align="center"><img src="/img/calendar/ic_type_default.gif" title="기본 카테고리"></td> 
                <td width="15" align="center"><img src="/img/calendar/ic_type_master.gif" title="마스터"></td> 
                <td width="10" align="center"><a href="javascript:"><img src="/img/calendar/bt_set.gif" onclick="_categorySub(this, 72)"></a></td> 
              </tr> 
            </tbody></table> 
            </div> 
            </td> 
        </tr> 
        <tr><td colspan="2" height="1"></td></tr> 
                <tr> 
          <td width="10%">
           <input type="checkbox" name="checkedCategory" checked="" value="74" onclick="_viewflagCategory(74, this.checked)">
         </td> 
          <td width="90%" height="18"><div id="apDiv74" style="width:100%;height:100%;background-color:#4b4b4b;"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
              <tbody><tr height="18"> 
                <td width="" style="color:#FFFFFF;padding:2px 0 0 2px;">
                  <input name="catname" type="text" class="input_trans" style="width:100%;" value="개인" onblur="_category_name(74, this.value)">
                </td> 
                <td width="15" align="center"></td> 
                <td width="15" align="center"><img src="/img/calendar/ic_type_master.gif" title="마스터"></td> 
                <td width="10" align="center"><a href="javascript:"><img src="/img/calendar/bt_set.gif" onclick="_categorySub(this, 74)"></a></td> 
              </tr> 
            </tbody></table> 
            </div> 
            </td> 
        </tr> 
        <tr><td colspan="2" height="1"></td></tr> 
                <tr> 
          <td width="10%">
           <input type="checkbox" name="checkedCategory" checked="" value="2157" onclick="_viewflagCategory(2157, this.checked)">
         </td> 
          <td width="90%" height="18"><div id="apDiv2157" style="width:100%;height:100%;background-color:#b4b4b4;"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
              <tbody><tr height="18"> 
                <td width="" style="color:#FFFFFF;padding:2px 0 0 2px;">
                  <input name="catname" type="text" class="input_trans" style="width:100%;" value="테스트" onblur="_category_name(2157, this.value)">
                </td> 
                <td width="15" align="center"></td> 
                <td width="15" align="center"><img src="/img/calendar/ic_type_secret.gif" title="비공개"></td> 
                <td width="10" align="center"><a href="javascript:"><img src="/img/calendar/bt_set.gif" onclick="_categorySub(this, 2157)"></a></td> 
              </tr> 
            </tbody></table> 
            </div> 
            </td> 
        </tr> 
        <tr><td colspan="2" height="1"></td></tr> 
                <tr> 
          <td width="10%">
           <input type="checkbox" name="checkedCategory" checked="" value="2357" onclick="_viewflagCategory(2357, this.checked)">
         </td> 
          <td width="90%" height="18"><div id="apDiv2357" style="width:100%;height:100%;background-color:#6e9cf2;"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
              <tbody><tr height="18"> 
                <td width="" style="color:#FFFFFF;padding:2px 0 0 2px;">
                  <input name="catname" type="text" class="input_trans" style="width:100%;" value="장혜졍씨" onblur="_category_name(2357, this.value)">
                </td> 
                <td width="15" align="center"></td> 
                <td width="15" align="center"><img src="/img/calendar/ic_type_master.gif" title="마스터"></td> 
                <td width="10" align="center"><a href="javascript:"><img src="/img/calendar/bt_set.gif" onclick="_categorySub(this, 2357)"></a></td> 
              </tr> 
            </tbody></table> 
            </div> 
            </td> 
        </tr> 
        <tr><td colspan="2" height="1"></td></tr> 
                <tr> 
          <td width="10%">
           <input type="checkbox" name="checkedCategory" checked="" value="2359" onclick="_viewflagCategory(2359, this.checked)">
         </td> 
          <td width="90%" height="18"><div id="apDiv2359" style="width:100%;height:100%;background-color:#6e9cf2;"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
              <tbody><tr height="18"> 
                <td width="" style="color:#FFFFFF;padding:2px 0 0 2px;">
                  <input name="catname" type="text" class="input_trans" style="width:100%;" value="김덕경씨" onblur="_category_name(2359, this.value)">
                </td> 
                <td width="15" align="center"></td> 
                <td width="15" align="center"><img src="/img/calendar/ic_type_master.gif" title="마스터"></td> 
                <td width="10" align="center"><a href="javascript:"><img src="/img/calendar/bt_set.gif" onclick="_categorySub(this, 2359)"></a></td> 
              </tr> 
            </tbody></table> 
            </div> 
            </td> 
        </tr> 
        <tr><td colspan="2" height="1"></td></tr> 
              </tbody></table>         
    </td> 
  </tr>

    
    <tr height="15"><td></td></tr>
  <tr>
    <td style="padding:0 12px 3px 12px;" class="m_sp"><b><font color="#333333">회사 카테고리</font></b></td> 
  </tr> 
  <tr> 
    <td align="center" valign="top" style="padding:0 12px 0 12px;">
      <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
                <tbody><tr> 
          <td width="10%">
           <input type="checkbox" name="checkedCategory" checked="" value="1628" onclick="_viewflagCategory(1628, this.checked)">
         </td> 
          <td width="90%" height="18"><div id="apDiv1628" style="width:100%;height:100%;background-color:#6e9cf2;color:#FFFFFF;padding:2px 0 0 2px;">&nbsp;청소</div></td> 
        </tr>
        <tr><td colspan="2" height="1"></td></tr> 
                <tr> 
          <td width="10%">
           <input type="checkbox" name="checkedCategory" checked="" value="2363" onclick="_viewflagCategory(2363, this.checked)">
         </td> 
          <td width="90%" height="18"><div id="apDiv2363" style="width:100%;height:100%;background-color:#6e9cf2;color:#FFFFFF;padding:2px 0 0 2px;">&nbsp;김성익</div></td> 
        </tr>
        <tr><td colspan="2" height="1"></td></tr> 
                <tr> 
          <td width="10%">
           <input type="checkbox" name="checkedCategory" checked="" value="2356" onclick="_viewflagCategory(2356, this.checked)">
         </td> 
          <td width="90%" height="18"><div id="apDiv2356" style="width:100%;height:100%;background-color:#7b8493;color:#FFFFFF;padding:2px 0 0 2px;">&nbsp;테스트</div></td> 
        </tr>
        <tr><td colspan="2" height="1"></td></tr> 
                <tr> 
          <td width="10%">
           <input type="checkbox" name="checkedCategory" checked="" value="2360" onclick="_viewflagCategory(2360, this.checked)">
         </td> 
          <td width="90%" height="18"><div id="apDiv2360" style="width:100%;height:100%;background-color:#6e9cf2;color:#FFFFFF;padding:2px 0 0 2px;">&nbsp;홍</div></td> 
        </tr>
        <tr><td colspan="2" height="1"></td></tr> 
              </tbody></table>         
    </td> 
  </tr>    
    

    
  
  
  
</tbody></table>  	</td> 
  </tr> 
  <tr> 
    <td align="left" valign="top" style="padding:10px 0px 10px 12px;">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" class="left_menu" style="table-layout:fixed;"> 
        <tbody><tr> 
          <td width="23" height="26" align="left"><img src="/img/address/icon_3.gif"></td> 
          <td width=""><a href="javascript:openWindow('/calendar/popup_get.php', '_schedule_import_','width=480,height=240,scrollbars=yes,resizable=yes')">일정 가져오기</a></td> 
        </tr>
      </tbody></table>
    </td> 
  </tr>   
</tbody></table>
<div id="mySchedule"></div>

<!-- 카테고리 등록 / 수정 layer -->
<div id="_category_desc" style="border: 3px solid rgb(204, 204, 204); z-index: 500; top: 150px; display: none; width: 575px; left: 274px; position: absolute; background-color: rgb(255, 255, 255);"> 
<form id="_category_form" name="category_layer" onsubmit="return exe_category(this)">
<input type="hidden" name="catmgno">
<input type="hidden" name="catrgb">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="left_menu"> 
  <tbody><tr> 
    <td height="30" id="cat_title_background" bgcolor="#f4f4f4" style="padding:3px 0 0 20px;"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
        <tbody><tr> 
          <td style="letter-spacing:-1px;font-weight:bold;color:#fff;" id="cat_layer_title"></td> 
          <td width="22" align="left"><a href="javascript:"><img src="/img/webmail/bt_closelayer.gif" onclick="jQuery('#_category_desc').gbxHide();"></a></td> 
        </tr> 
      </tbody></table></td> 
  </tr> 
  <tr> 
    <td style="padding:10px 20px 15px 20px;"> 
    <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
      <tbody><tr> 
        <td width="85" height="20" style="letter-spacing:0px;">카테고리명</td> 
        <td> 
          <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
            <tbody><tr> 
              <td width="" id="name_container" bgcolor="#638cd9"><input name="catname" type="text" class="input_trans" style="width:100%;" title="카테고리명"></td> 
              <td width="55" align="right">
                <a href="javascript:"><img src="/img/calendar/bt_color.gif" onclick="_openColor(this)"></a><div id="_color_pic" style="border-width:1px;border-style:solid; border-color:#777777; background-color:#ffffff; position:absolute; display:none;text-align:center;"> 
                <table width="99" border="0" cellspacing="4" cellpadding="0" class="tbl_board9" style="border-collapse:separate;"> 
                                                      <tbody><tr height="15" align="center">
                                      <td width="15" bgcolor="#6e9cf2" class="vtd" onclick="document.category_layer.catrgb.value='#6e9cf2'; jQuery('#cat_title_background').css('background-color', '#6e9cf2'); jQuery('#name_container').css('background-color','#6e9cf2');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#8394cf" class="vtd" onclick="document.category_layer.catrgb.value='#8394cf'; jQuery('#cat_title_background').css('background-color', '#8394cf'); jQuery('#name_container').css('background-color','#8394cf');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#93cc4b" class="vtd" onclick="document.category_layer.catrgb.value='#93cc4b'; jQuery('#cat_title_background').css('background-color', '#93cc4b'); jQuery('#name_container').css('background-color','#93cc4b');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#dec200" class="vtd" onclick="document.category_layer.catrgb.value='#dec200'; jQuery('#cat_title_background').css('background-color', '#dec200'); jQuery('#name_container').css('background-color','#dec200');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#a28ab5" class="vtd" onclick="document.category_layer.catrgb.value='#a28ab5'; jQuery('#cat_title_background').css('background-color', '#a28ab5'); jQuery('#name_container').css('background-color','#a28ab5');">&nbsp;</td>
                                    </tr>
                                                                        <tr height="15" align="center">
                                      <td width="15" bgcolor="#97add2" class="vtd" onclick="document.category_layer.catrgb.value='#97add2'; jQuery('#cat_title_background').css('background-color', '#97add2'); jQuery('#name_container').css('background-color','#97add2');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#69c2d2" class="vtd" onclick="document.category_layer.catrgb.value='#69c2d2'; jQuery('#cat_title_background').css('background-color', '#69c2d2'); jQuery('#name_container').css('background-color','#69c2d2');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#b0bc2d" class="vtd" onclick="document.category_layer.catrgb.value='#b0bc2d'; jQuery('#cat_title_background').css('background-color', '#b0bc2d'); jQuery('#name_container').css('background-color','#b0bc2d');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#e6a11b" class="vtd" onclick="document.category_layer.catrgb.value='#e6a11b'; jQuery('#cat_title_background').css('background-color', '#e6a11b'); jQuery('#name_container').css('background-color','#e6a11b');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#da9b9b" class="vtd" onclick="document.category_layer.catrgb.value='#da9b9b'; jQuery('#cat_title_background').css('background-color', '#da9b9b'); jQuery('#name_container').css('background-color','#da9b9b');">&nbsp;</td>
                                    </tr>
                                                                        <tr height="15" align="center">
                                      <td width="15" bgcolor="#94a5b6" class="vtd" onclick="document.category_layer.catrgb.value='#94a5b6'; jQuery('#cat_title_background').css('background-color', '#94a5b6'); jQuery('#name_container').css('background-color','#94a5b6');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#2eb8c7" class="vtd" onclick="document.category_layer.catrgb.value='#2eb8c7'; jQuery('#cat_title_background').css('background-color', '#2eb8c7'); jQuery('#name_container').css('background-color','#2eb8c7');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#44be1e" class="vtd" onclick="document.category_layer.catrgb.value='#44be1e'; jQuery('#cat_title_background').css('background-color', '#44be1e'); jQuery('#name_container').css('background-color','#44be1e');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#f3672a" class="vtd" onclick="document.category_layer.catrgb.value='#f3672a'; jQuery('#cat_title_background').css('background-color', '#f3672a'); jQuery('#name_container').css('background-color','#f3672a');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#f62d2d" class="vtd" onclick="document.category_layer.catrgb.value='#f62d2d'; jQuery('#cat_title_background').css('background-color', '#f62d2d'); jQuery('#name_container').css('background-color','#f62d2d');">&nbsp;</td>
                                    </tr>
                                                                        <tr height="15" align="center">
                                      <td width="15" bgcolor="#c08bd7" class="vtd" onclick="document.category_layer.catrgb.value='#c08bd7'; jQuery('#cat_title_background').css('background-color', '#c08bd7'); jQuery('#name_container').css('background-color','#c08bd7');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#4587eb" class="vtd" onclick="document.category_layer.catrgb.value='#4587eb'; jQuery('#cat_title_background').css('background-color', '#4587eb'); jQuery('#name_container').css('background-color','#4587eb');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#ccc05d" class="vtd" onclick="document.category_layer.catrgb.value='#ccc05d'; jQuery('#cat_title_background').css('background-color', '#ccc05d'); jQuery('#name_container').css('background-color','#ccc05d');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#f06280" class="vtd" onclick="document.category_layer.catrgb.value='#f06280'; jQuery('#cat_title_background').css('background-color', '#f06280'); jQuery('#name_container').css('background-color','#f06280');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#d2423c" class="vtd" onclick="document.category_layer.catrgb.value='#d2423c'; jQuery('#cat_title_background').css('background-color', '#d2423c'); jQuery('#name_container').css('background-color','#d2423c');">&nbsp;</td>
                                    </tr>
                                                                        <tr height="15" align="center">
                                      <td width="15" bgcolor="#b4b4b4" class="vtd" onclick="document.category_layer.catrgb.value='#b4b4b4'; jQuery('#cat_title_background').css('background-color', '#b4b4b4'); jQuery('#name_container').css('background-color','#b4b4b4');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#beb297" class="vtd" onclick="document.category_layer.catrgb.value='#beb297'; jQuery('#cat_title_background').css('background-color', '#beb297'); jQuery('#name_container').css('background-color','#beb297');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#8c66d9" class="vtd" onclick="document.category_layer.catrgb.value='#8c66d9'; jQuery('#cat_title_background').css('background-color', '#8c66d9'); jQuery('#name_container').css('background-color','#8c66d9');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#7b8493" class="vtd" onclick="document.category_layer.catrgb.value='#7b8493'; jQuery('#cat_title_background').css('background-color', '#7b8493'); jQuery('#name_container').css('background-color','#7b8493');">&nbsp;</td>
                                                                          <td width="15" bgcolor="#4b4b4b" class="vtd" onclick="document.category_layer.catrgb.value='#4b4b4b'; jQuery('#cat_title_background').css('background-color', '#4b4b4b'); jQuery('#name_container').css('background-color','#4b4b4b');">&nbsp;</td>
                                    </tr>
                                                    </tbody></table>
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
        <td height="20" valign="top" style="padding-top:5px;">공유 설정</td>
        <td>
          <!-- label title="다른 회사 직원도 일정을 볼 수 있습니다."><input type="radio" name="catshare" value="A" onClick="share_txt(this)"> 모두 공개 </label> &nbsp; -->
          <label title="같은 회사 직원과 일정을 공유합니다."><input type="radio" name="catshare" value="C" onclick="share_txt(this)"> 회사 일정 </label> &nbsp;
          <label title="같은 부서 직원과 일정을 공유합니다."><input type="radio" name="catshare" value="D" onclick="share_txt(this)"> 부서 일정 </label> &nbsp;
          <label title="해당 카테고리 일정은 개인 일정입니다."><input type="radio" name="catshare" value="N" onclick="share_txt(this)"> 개인 일정 </label>
        </td>
      </tr>
      <tr>
        <td height="25" valign="top" style="padding-top:5px;"></td>
        <td><span rel="share_txt" class="stxt"><span></span></span></td>
      </tr>
      <tr>
        <td height="3"></td>
        <td></td>
      </tr>

      <!-- 공개 설정 -->
      <!-- tr>
          <td colspan="2" height="1" bgcolor="#efefef"></td>
      </tr>
      <tr>
        <td height="20" valign="top" style="padding-top:5px;">공유자 공개</td>
        <td>
          <label title="공유받은 자가 일정의 생성자를 알 수 있습니다."><input type="radio" name="openuser" value="1" onClick="open_txt(this)"> 공개 </label> &nbsp;
          <label title="일정의 생성자를 숨김니다."                     ><input type="radio" name="openuser" value="0" onClick="open_txt(this)"> 공개 안함 </label> &nbsp;
        </td>
      </tr>
      <tr>
        <td height="25" valign="top" style="padding-top:5px;"></td>
        <td><span rel="openuser_txt" class="stxt"><span></td>
      </tr>
      <tr>
        <td height="3"></td>
        <td></td>
      </tr -->


      <!-- 알림 설정 -->
      <tr>
          <td colspan="2" height="1" bgcolor="#efefef"></td>
      </tr>
      <tr>
        <td height="20" valign="top" style="padding-top:5px;">알림 설정</td>
        <td>
          <label title="이 카테고리에 포함된 일정은 알림이 설정되는 것이 기본값입니다."><input type="radio" name="notiflag" value="1" onclick="noti_txt(this)"> 설정 </label> &nbsp;
          <label title="이 카테고리에 포함된 일정은 알림이 설정되지 않는것이 기본값입니다."><input type="radio" name="notiflag" value="0" onclick="noti_txt(this)"> 설정 안함 </label> &nbsp;
        </td>
      </tr>
      <tr>
        <td height="25" valign="top" style="padding-top:5px;"></td>
        <td><span rel="notiflag_txt" class="stxt"><span></span></span></td>
      </tr>
      <tr>
        <td height="50" valign="top" style="padding-top:5px;"></td>
        <td style="padding:15px" rel="notilayer">

            일정시작
            <select name="notimin">
              <!-- option value="5">      5분전 </option>
              <option value="10">    10분전 </option>
              <option value="15">    15분전 </option -->
              <option value="30">    30분전 </option>
              <option value="60">  한시간전 </option>
              <option value="120"> 두시간전 </option>
              <option value="180"> 세시간전 </option>
              <option value="720"> 12시간전 </option>
              <option value="1440">   1일전 </option>
              <option value="2880">   2일전 </option>
            </select>
            <label><input type="checkbox" name="notisms"> SMS </label>
            <label><input type="checkbox" name="notimail"> 메일 </label><br>
            <span class="stxt">(일정별로 알림 설정은 수정할 수 있습니다.)<span>
        </span></span></td>
      </tr>
      <tr>
        <td height="3"></td>
        <td></td>
      </tr>


      <tr> 
          <td colspan="2" height="1" bgcolor="#efefef"></td> 
      </tr> 
      <tr> 
          <td colspan="2" height="5"></td> 
      </tr> 
      <tr> 
          <td colspan="2" align="center"><input type="submit" value="저장" style="padding:3px 0 0 0;font-weight:bold;font-size:11px;">&nbsp;<input name="input" type="button" value="취소" style="padding:3px 0 0 0;font-size:11px;" onclick="jQuery('#_category_desc').gbxHide();"></td> 
      </tr>                  
    </tbody></table> 
    </td> 
  </tr>   
</tbody></table> 
</form>
<div class="gbx_drag" style="cursor: move; height: 20px; z-index: -1; width: 400px; position: absolute; top: 0px; float: left;"></div></div>



<!-- 카테고리 왼쪽 메뉴  -->
<div id="_category_sub" style="border-width:1px;width:110px;border-style:solid; border-color:#777777; z-index:300; background-color:#ffffff; position:absolute; display:none;text-align:center;"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0"> 
  <tbody><tr> 
  	<td height="15" class="stxt" style="padding:5px 13px 0px 13px;"><a href="javascript:_openCategory( categories[ jQuery('#_category_sub').val() ] );">수정하기</a></td> 
  </tr> 
  <tr> 
  	<td height="15" class="stxt" style="padding:5px 13px 0px 13px;"><a href="javascript:_primaryCategory(categories[ jQuery('#_category_sub').val() ] );">기본 카테고리로</a></td> 
  </tr>   
  <tr> 
  	<td height="15" class="stxt" style="padding:5px 13px 0px 13px;"><a href="javascript:_deleteCategory(categories[ jQuery('#_category_sub').val() ] );">삭제</a></td> 
  </tr> 
  <tr> 
  	<td bgcolor="#e8e8e8" height="1"></td> 
  </tr> 
  <tr> 
  	<td align="center"> 
      <table width="99" border="0" cellspacing="4" cellpadding="0" class="tbl_board9" style="border-collapse:separate;"> 
                        <tbody><tr height="15" align="center"> 
                  <td width="15" bgcolor="#6e9cf2" class="vtd" onclick="_category_color('#6e9cf2');"></td>
                          
                          <td width="15" bgcolor="#8394cf" class="vtd" onclick="_category_color('#8394cf');"></td>
                          
                          <td width="15" bgcolor="#93cc4b" class="vtd" onclick="_category_color('#93cc4b');"></td>
                          
                          <td width="15" bgcolor="#dec200" class="vtd" onclick="_category_color('#dec200');"></td>
                          
                          <td width="15" bgcolor="#a28ab5" class="vtd" onclick="_category_color('#a28ab5');"></td>
                </tr>
                          
                        <tr height="15" align="center"> 
                  <td width="15" bgcolor="#97add2" class="vtd" onclick="_category_color('#97add2');"></td>
                          
                          <td width="15" bgcolor="#69c2d2" class="vtd" onclick="_category_color('#69c2d2');"></td>
                          
                          <td width="15" bgcolor="#b0bc2d" class="vtd" onclick="_category_color('#b0bc2d');"></td>
                          
                          <td width="15" bgcolor="#e6a11b" class="vtd" onclick="_category_color('#e6a11b');"></td>
                          
                          <td width="15" bgcolor="#da9b9b" class="vtd" onclick="_category_color('#da9b9b');"></td>
                </tr>
                          
                        <tr height="15" align="center"> 
                  <td width="15" bgcolor="#94a5b6" class="vtd" onclick="_category_color('#94a5b6');"></td>
                          
                          <td width="15" bgcolor="#2eb8c7" class="vtd" onclick="_category_color('#2eb8c7');"></td>
                          
                          <td width="15" bgcolor="#44be1e" class="vtd" onclick="_category_color('#44be1e');"></td>
                          
                          <td width="15" bgcolor="#f3672a" class="vtd" onclick="_category_color('#f3672a');"></td>
                          
                          <td width="15" bgcolor="#f62d2d" class="vtd" onclick="_category_color('#f62d2d');"></td>
                </tr>
                          
                        <tr height="15" align="center"> 
                  <td width="15" bgcolor="#c08bd7" class="vtd" onclick="_category_color('#c08bd7');"></td>
                          
                          <td width="15" bgcolor="#4587eb" class="vtd" onclick="_category_color('#4587eb');"></td>
                          
                          <td width="15" bgcolor="#ccc05d" class="vtd" onclick="_category_color('#ccc05d');"></td>
                          
                          <td width="15" bgcolor="#f06280" class="vtd" onclick="_category_color('#f06280');"></td>
                          
                          <td width="15" bgcolor="#d2423c" class="vtd" onclick="_category_color('#d2423c');"></td>
                </tr>
                          
                        <tr height="15" align="center"> 
                  <td width="15" bgcolor="#b4b4b4" class="vtd" onclick="_category_color('#b4b4b4');"></td>
                          
                          <td width="15" bgcolor="#beb297" class="vtd" onclick="_category_color('#beb297');"></td>
                          
                          <td width="15" bgcolor="#8c66d9" class="vtd" onclick="_category_color('#8c66d9');"></td>
                          
                          <td width="15" bgcolor="#7b8493" class="vtd" onclick="_category_color('#7b8493');"></td>
                          
                          <td width="15" bgcolor="#4b4b4b" class="vtd" onclick="_category_color('#4b4b4b');"></td>
                </tr>
                          
              </tbody></table> 
    </td> 
  </tr> 
</tbody></table> 
</div><!-- 일정 등록 / 수정 layer -->
<div id="_schedule_desc" style="border: 3px solid rgb(204, 204, 204); z-index: 500; top: 176px; width: 725px; left: 195px; position: absolute; display: none; background-color: rgb(255, 255, 255);"> 
<form id="_schedule_form" name="_schedule_layer" onsubmit="return exe_schedule(this)">
<input type="hidden" name="schmgno" value="">
<input type="hidden" name="usrkey" value="31">
<input type="hidden" name="psckey" value="">
<input type="hidden" name="rbyvalue" right="owner">
<table id="_schedule_table" width="100%" border="0" cellspacing="0" cellpadding="0" class="left_menu"> 
  <tbody><tr> 
    <td height="30" bgcolor="#f4f4f4" style="padding:3px 0 0 20px;"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
        <tbody><tr> 
          <td style="letter-spacing:-1px;font-weight:bold" id="sch_layer_title"><label><input type="radio" name="itype" value="S" checked="" onclick="formChange(this)"> 일정 입력</label> &nbsp; <label><input name="itype" type="radio" value="A" onclick="formChange(this)"> 기념일 입력</label></td> 
          <td width="22" align="left"><a href="javascript:"><img src="/img/webmail/bt_closelayer.gif" onclick="oPopup.hide();jQuery('#_schedule_desc').gbxHide();"></a></td> 
        </tr> 
      </tbody></table></td> 
  </tr> 
  <tr> 
    <td style="padding:10px 20px 15px 20px;"> 
    <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
      <tbody><tr> 
        <td width="65" height="25" style="letter-spacing:0px;">일시</td> 
        <td width=""> 
            <input type="text" right="owner" name="startdate" readonly="" class="input_date" style="width:85px" maxlength="10" onblur="constraintValue('DATEFORMAT',this)" onclick="popUpCalendarYmd(this, '_schedule_desc')">
            <select rel="time" right="owner" name="starthh" disabled="disabled">
                            <option value="00" selected="selected"> 오전 12시 </option>
                            <option value="01"> 오전 01시 </option>
                            <option value="02"> 오전 02시 </option>
                            <option value="03"> 오전 03시 </option>
                            <option value="04"> 오전 04시 </option>
                            <option value="05"> 오전 05시 </option>
                            <option value="06"> 오전 06시 </option>
                            <option value="07"> 오전 07시 </option>
                            <option value="08"> 오전 08시 </option>
                            <option value="09"> 오전 09시 </option>
                            <option value="10"> 오전 10시 </option>
                            <option value="11"> 오전 11시 </option>
                            <option value="12"> 오후 12시 </option>
                            <option value="13"> 오후 01시 </option>
                            <option value="14"> 오후 02시 </option>
                            <option value="15"> 오후 03시 </option>
                            <option value="16"> 오후 04시 </option>
                            <option value="17"> 오후 05시 </option>
                            <option value="18"> 오후 06시 </option>
                            <option value="19"> 오후 07시 </option>
                            <option value="20"> 오후 08시 </option>
                            <option value="21"> 오후 09시 </option>
                            <option value="22"> 오후 10시 </option>
                            <option value="23"> 오후 11시 </option>
                          </select>
            <select rel="time" right="owner" name="startmm" disabled="disabled">
              <option value="00" selected="selected"> 00 분</option>
              <option value="30"> 30 분</option>
            </select>
            ~
            <input type="text" right="owner" name="enddate" readonly="" class="input_date" style="width:85px" maxlength="10" onblur="constraintValue('DATEFORMAT',this)" onclick="popUpCalendarYmd(this, '_schedule_desc')">
            <select rel="time" right="owner" name="endhh" disabled="disabled">
                            <option value="00" selected="selected"> 오전 12시 </option>
                            <option value="01"> 오전 01시 </option>
                            <option value="02"> 오전 02시 </option>
                            <option value="03"> 오전 03시 </option>
                            <option value="04"> 오전 04시 </option>
                            <option value="05"> 오전 05시 </option>
                            <option value="06"> 오전 06시 </option>
                            <option value="07"> 오전 07시 </option>
                            <option value="08"> 오전 08시 </option>
                            <option value="09"> 오전 09시 </option>
                            <option value="10"> 오전 10시 </option>
                            <option value="11"> 오전 11시 </option>
                            <option value="12"> 오후 12시 </option>
                            <option value="13"> 오후 01시 </option>
                            <option value="14"> 오후 02시 </option>
                            <option value="15"> 오후 03시 </option>
                            <option value="16"> 오후 04시 </option>
                            <option value="17"> 오후 05시 </option>
                            <option value="18"> 오후 06시 </option>
                            <option value="19"> 오후 07시 </option>
                            <option value="20"> 오후 08시 </option>
                            <option value="21"> 오후 09시 </option>
                            <option value="22"> 오후 10시 </option>
                            <option value="23"> 오후 11시 </option>
                          </select>
            <select rel="time" right="owner" name="endmm" disabled="disabled">
              <option value="00" selected="selected"> 00 분</option>
              <option value="30"> 30 분</option>
            </select>
            
            <label><input type="checkbox" right="owner" name="dayflag" value="1" onclick="sch_DayFlag(this.checked)" checked="checked"> 종일일정</label>
            <label><input type="checkbox" right="owner" name="reflag" value="1" onclick="sch_ReFlag(this.checked)"> 반복</label>
        </td> 
      </tr> 
      <tr id="reFrame" style="display: none;"> 
        <td></td> 
        <td style="padding-top:5px; padding-bottom:5px;">
          <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
            <tbody><tr height="30"> 
              <td align="left" style="padding-top:5px">
                <!-- label><input type="radio" right='owner' name="rfreq" value="N" onClick="sch_ReRule(this)" checked>없음</label> &nbsp;<-->
                <label><input type="radio" right="owner" name="rfreq" value="D" onclick="sch_ReRule(this)" checked="">매일</label> &nbsp;
                <label><input type="radio" right="owner" name="rfreq" value="W" onclick="sch_ReRule(this)">매주</label> &nbsp;
                <label><input type="radio" right="owner" name="rfreq" value="M" onclick="sch_ReRule(this)">매월</label> &nbsp;
                <label><input type="radio" right="owner" name="rfreq" value="Y" onclick="sch_ReRule(this)">매년</label> &nbsp;
              </td>
              <td align="right" style="padding-top:5px">
                <span id="reProp" style="">
                &nbsp;
                <input type="text" name="rinterval" right="owner" class="input_type1" style="width:30;" value="1" maxlength="3">
                <span id="strInterval">일마다</span>
                &nbsp;&nbsp;
                <input name="runtil" right="owner" class="input_date" style="width: 85px; background-color: rgb(204, 204, 204);" maxlength="10" onblur="constraintValue('DATEFORMAT',this)" onclick="popUpCalendarYmd(this, '_schedule_desc')" disabled="disabled"> 까지
                <label><input type="checkbox" right="owner" name="nolimit" value="1" onclick="sch_ReUntilFlag(this.checked)" checked="checked"> 무한반복</label>
                </span>
              </td>
            </tr>
            <tr rel="moreFrame" id="reWeekFrame" style="display: none;">
              <td colspan="2" align="left">
                <label><input type="checkbox" name="rbyweek" right="owner" value="SU"> 일요일</label>&nbsp;
                <label><input type="checkbox" name="rbyweek" right="owner" value="MO"> 월요일</label>&nbsp;
                <label><input type="checkbox" name="rbyweek" right="owner" value="TU"> 화요일</label>&nbsp;
                <label><input type="checkbox" name="rbyweek" right="owner" value="WE"> 수요일</label>&nbsp;
                <label><input type="checkbox" name="rbyweek" right="owner" value="TH"> 목요일</label>&nbsp;
                <label><input type="checkbox" name="rbyweek" right="owner" value="FR"> 금요일</label>&nbsp;
                <label><input type="checkbox" name="rbyweek" right="owner" value="SA"> 토요일</label>&nbsp;
              </td>
            </tr>
            <tr rel="moreFrame" id="reMonthFrame" style="display: none;">
              <td colspan="2" align="left">
                <label><input type="radio" name="rbymonth" right="owner" value=""><span id="strMonthDay1">2일에</span></label>&nbsp;
                <label><input type="radio" name="rbymonth" right="owner" value="BYDAY=TU;BYSETPOS=1"><span id="strMonthDay2">1 번째 화요일에</span></label>&nbsp;
                <label id="_MlastWeek" style="display: none;"><input type="radio" name="rbymonth" right="owner" value="">마지막 <span id="strMonthDay3"></span></label>&nbsp;
                <label id="_MlastDay" style="display: none;"><input type="radio" name="rbymonth" right="owner" value="BYMONTHDAY=-1">마지막 날에</label>&nbsp;
              </td>
            </tr>
            <tr rel="moreFrame" id="reYearFrame" style="display: none;">
              <td colspan="2" align="left">
                <label><input type="radio" name="rbyyear" right="owner" value=""><span id="strYearDay1">6월 2일에</span></label>&nbsp;
                <label><input type="radio" name="rbyyear" right="owner" value="BYDAY=TU;BYSETPOS=1"><span id="strYearDay2">6월 1 번째 화요일에</span></label>&nbsp;
                <label id="_YlastWeek" style="display: none;"><input type="radio" name="rbyyear" right="owner" value=""><span id="strYearDay3"></span></label>&nbsp;
                <label id="_YlastDay" style="display: none;"><input type="radio" name="rbyyear" right="owner" value="BYMONTHDAY=-1"><span id="strYearDay4"></span> 마지막 날에</label>&nbsp;
              </td>
            </tr>            
          </tbody></table></td> 
      </tr> 
      <tr> 
        <td height="3"></td> 
        <td></td>
      </tr>


      <tr> 
        <td height="25" valign="top" style="padding-top:5px;">제목</td> 
        <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
            <tbody><tr> 
              <td width="320"><input type="text" name="summary" right="owner" class="input_type1" style="width:100%;"></td>
              <td width="80" align="right"> 카테고리 </td>
              <td width="" align="left" style="padding-left:8px;">
                <select id="schedule_category" name="catkey" right="owner" style="width:170" onchange="changeCategory(this.form, this.options[this.selectedIndex].value); this.blur();">
                                    <option value="72" style="color:#fff; background-color:#44be1e;" selected="selected">회사일정</option>
                                    <option value="74" style="color:#fff; background-color:#4b4b4b;">개인</option>
                                    <option value="2157" style="color:#fff; background-color:#b4b4b4;">테스트</option>
                                    <option value="2357" style="color:#fff; background-color:#6e9cf2;">장혜졍씨</option>
                                    <option value="2359" style="color:#fff; background-color:#6e9cf2;">김덕경씨</option>
                                  </select>               
                <span id="schedule_category_str"></span> 
              </td> 
            </tr> 
          </tbody></table></td> 
      </tr> 
      <tr> 
        <td height="3"></td> 
        <td></td> 
      </tr>     

      <tr> 
        <td height="20" valign="top" style="padding-top:5px;">내용</td> 
        <td>
          <textarea name="description" class="input_type1" right="owner" style="width:100%;height:160px;overflow:auto;"></textarea>
        </td> 
      </tr>         
      <tr> 
        <td height="3"></td> 
        <td></td> 
      </tr>     

      <tr> 
        <td height="20" valign="top" style="padding-top:5px;">URL주소</td> 
        <td>
          <input type="text" name="link" class="input_type1" right="owner" style="width:300px;">
        </td> 
      </tr> 
      <tr> 
        <td height="3"></td> 
        <td></td> 
      </tr>                   

      <!-- 알림 설정 -->
      <tr height="25"> 
        <td valign="top" style="padding-top:5px;">
          알림설정
        </td> 
        <td width="">
          <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
            <tbody><tr> 
              <td width="120">
                <label><input type="radio" name="notiflag" value="0" onclick="sch_NotifyFlag(this.value)">없음</label> &nbsp;
                <label><input type="radio" name="notiflag" value="1" onclick="sch_NotifyFlag(this.value)" checked="checked">알림</label> 
              </td>
              <td width="" id="notiLayer" valign="bottom">
                <select name="notimin">
                  <!--option value="5">      5분전 </option>
                  <option value="10">    10분전 </option>
                  <option value="15">    15분전 </option -->
                  <option value="30">    30분전 </option>
                  <option value="60">  한시간전 </option>
                  <option value="120"> 두시간전 </option>
                  <option value="180"> 세시간전 </option>
                  <option value="720"> 12시간전 </option>
                  <option value="1440" selected="selected">   1일전 </option>
                  <option value="2880">   2일전 </option>
                </select>                
                <label><input type="checkbox" name="notisms" checked="checked"> SMS</label>
                <label><input type="checkbox" name="notimail"> 메일</label>
              </td> 
            </tr> 
          </tbody></table>

        </td>
      </tr>  
      <tr> 
        <td height="3"></td> 
        <td></td> 
      </tr>
      
      <tr> 
          <td colspan="2" height="1" bgcolor="#efefef"></td> 
      </tr> 
    </tbody></table>

    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tbody><tr> 
          <td align="center"><input type="submit" value="저장" style="padding:3px 0 0 0;font-weight:bold;font-size:11px;">&nbsp;<input name="input" type="button" value="취소" style="padding:3px 0 0 0;font-size:11px;" onclick="oPopup.hide();jQuery('#_schedule_desc').gbxHide();"></td> 
      </tr>
    </tbody></table> 
    </td> 
  </tr>   
</tbody></table> 
</form>
<form id="_anniversary_form" name="_anniversary_layer" onsubmit="return exe_anniversary(this)">
<input type="hidden" name="annmgno">
<table id="_anniversary_table" style="display: none;" width="100%" border="0" cellspacing="0" cellpadding="0" class="left_menu"> 
  <tbody><tr> 
    <td height="30" bgcolor="#f4f4f4" style="padding:3px 0 0 20px;"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
        <tbody><tr> 
          <td style="letter-spacing:-1px;font-weight:bold" id="ann_layer_title"></td> 
          <td width="22" align="left"><a href="javascript:"><img src="/img/webmail/bt_closelayer.gif" onclick="oPopup.hide();jQuery('#_schedule_desc').gbxHide();"></a></td> 
        </tr> 
      </tbody></table></td> 
  </tr> 
  <tr> 
    <td style="padding:10px 20px 15px 20px;"> 
    <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
      <tbody><tr> 
        <td width="85" height="25" style="letter-spacing:0px;">날짜</td> 
        <td width=""> 
          <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
            <tbody><tr>
              <td width="70"><label><input type="checkbox" name="lunar" value="1" onclick="ann_Lunar(this.checked);"> 음력</label></td>
              <td id="solarDate">
                <input type="text" name="solardate" readonly="" class="input_date" style="width:85px" maxlength="10" onblur="constraintValue('DATEFORMAT',this)" onclick="popUpCalendarYmd(this, '_schedule_desc')">
              </td><td id="lunarDate">                
                <input type="text" name="lunaryy" class="input_type1" style="width:35Px" maxlength="4" onblur="constraintValue('YEAR',this);  solarStr()"> 년
                <input type="text" name="lunarmm" class="input_type1" style="width:20px" maxlength="2" onblur="constraintValue('MONTH',this); solarStr()"> 월
                <input type="text" name="lunardd" class="input_type1" style="width:20px" maxlength="2" onblur="constraintValue('LDAY',this);  solarStr()"> 일
                &nbsp;
                <label><input type="checkbox" name="yundal" value="1" onclick="solarStr()"> 윤달</label>
                &nbsp;
                &nbsp;
                <span id="solarValue"></span>
              </td>
            </tr>
          </tbody></table>
        </td> 
      </tr> 
      <tr> 
        <td height="3"></td> 
        <td></td> 
      </tr> 


      <tr> 
        <td height="25" valign="top" style="padding-top:5px;">제목</td> 
        <td><input type="text" name="summary" class="input_type1" style="width:70%;"></td>
      </tr> 
      <tr> 
        <td height="3"></td> 
        <td></td> 
      </tr>     
  

      <!-- 알림 설정 -->
      <tr> 
        <td width="85" valign="top" style="padding-top:5px;">
          알림
        </td> 
        <td width="">

          <select name="notimin">
            <option value="30">    30분전 </option>
            <option value="60">   1시간전 </option>
            <option value="120">  2시간전 </option>
            <option value="180">  3시간전 </option>
            <option value="360">  6시간전 </option>            
            <option value="720"> 12시간전 </option>
            <option value="1440">   1일전 </option>
            <option value="2880">   2일전 </option>
          </select>
          <label><input type="checkbox" name="notisms"> SMS</label>
          <label><input type="checkbox" name="notimail"> 메일</label>
        </td>
      </tr>  
      <tr> 
        <td height="3"></td> 
        <td></td> 
      </tr>
      
      <tr> 
          <td colspan="2" height="1" bgcolor="#efefef"></td> 
      </tr> 
    </tbody></table>

    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tbody><tr> 
          <td align="center"><input type="submit" value="저장" style="padding:3px 0 0 0;font-weight:bold;font-size:11px;">&nbsp;<input name="input" type="button" value="취소" style="padding:3px 0 0 0;font-size:11px;" onclick="oPopup.hide();jQuery('#_schedule_desc').gbxHide();"></td> 
      </tr>                  
    </tbody></table> 
    </td> 
  </tr>   
</tbody></table> 
</form>
<div class="gbx_drag" style="cursor: move; height: 20px; z-index: -1; width: 400px; position: absolute; top: 0px; float: left;"></div></div>



<!-- 일정 Viewer layer -->
<div id="_schedule_view" style="border: 3px solid rgb(204, 204, 204); z-index: 500; top: 150px; display: none; width: 725px; left: 199px; position: absolute; background-color: rgb(255, 255, 255);"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="left_menu"> 
  <tbody><tr> 
    <td height="30" style="padding:3px 10px 0px 10px;"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0" height="30" bgcolor="#f4f4f4"> 
        <tbody><tr> 
          <td width="" style="letter-spacing:-1px;font-weight:bold"><span id="s_view_summary"></span></td> 
          <td width="22" align="left"><a href="javascript:"><img src="/img/webmail/bt_closelayer.gif" onclick="jQuery('#_schedule_view').gbxHide();"></a></td> 
        </tr> 
      </tbody></table>


      <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
        <tbody><tr height="28"> 
          <td width="65">카테고리</td> 
          <td width="" name="category"></td>
        </tr>
        <tr height="28"> 
          <td width="65">일시</td> 
          <td width="" name="date"></td>
        </tr>
        <tr height="120"> 
          <td width="65">상세내용</td> 
          <td width=""><textarea name="description" class="input_type1" readonly="" style="width:100%;height:160px;overflow:auto;"></textarea></td>
        </tr>
        <tr height="28"> 
          <td width="65">URL주소</td> 
          <td width="" name="link"></td>
        </tr>
        <tr height="28"> 
          <td width="65">알림설정</td> 
          <td width="" name="notify"></td>
        </tr>        
      </tbody></table>

      <form id="_schedule_view_form" name="sView">
      <input type="hidden" name="schmgno">
      <input type="hidden" name="rexdate">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" height="30">
        <tbody><tr> 
          <td align="left">
            <input type="button" value="일정삭제" style="padding:3px 0 0 0;font-weight:bold;color:red;font-size:11px;" onclick="deleteSchedule(this.form)" rel="bt_sch_delete">
          </td>
          <td align="right">
            <!-- input type="button" value="일정인쇄" style="padding:3px 0 0 0;font-size:11px;" -->
            <input type="button" value="일정수정" style="padding:3px 0 0 0;font-size:11px;" onclick="_openScheduleByView()">
            <input type="button" value="닫기" style="padding:3px 0 0 0;font-size:11px;" onclick="jQuery('#_schedule_view').gbxHide();">
          </td> 
        </tr>                  
      </tbody></table> 
      </form>
    </td> 
  </tr>   
</tbody></table> 
<div class="gbx_drag" style="cursor: move; height: 20px; z-index: -1; width: 400px; position: absolute; top: 0px; float: left;"></div></div>



<!-- 기념일 Viewer layer -->
<div id="_anniversary_view" style="border: 3px solid rgb(204, 204, 204); z-index: 500; top: 150px; display: none; width: 300px; left: 411.5px; position: absolute; background-color: rgb(255, 255, 255);"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="left_menu"> 
  <tbody><tr> 
    <td height="30" style="padding:3px 10px 0px 10px;"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0" height="30" bgcolor="#f4f4f4"> 
        <tbody><tr> 
          <td width="" style="letter-spacing:-1px;font-weight:bold"><span id="a_view_summary"></span></td> 
          <td width="22" align="left"><a href="javascript:"><img src="/img/webmail/bt_closelayer.gif" onclick="jQuery('#_anniversary_view').gbxHide();"></a></td> 
        </tr> 
      </tbody></table>

      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody><tr height="28">
          <td width="65">일시</td>
          <td width="" name="date"></td>
        </tr>
        <tr height="28">
          <td width="65">알림설정</td>
          <td width="" name="notify"></td>
        </tr>
      </tbody></table>

      <form id="_anniversary_view_form" name="aView">
      <input type="hidden" name="annmgno">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" height="30">
        <tbody><tr> 
          <td align="left">
            <input type="button" value="기념일삭제" style="padding:3px 0 0 0;font-weight:bold;color:red;font-size:11px;" onclick="deleteAnniversary(this.form)">
          </td>
          <td align="right">
            <input type="button" value="기념일수정" style="padding:3px 0 0 0;font-size:11px;" onclick="_openAnniversaryByView()">
            <input type="button" value="닫기" style="padding:3px 0 0 0;font-size:11px;" onclick="jQuery('#_anniversary_view').gbxHide();">
          </td> 
        </tr>                  
      </tbody></table> 
      </form>
    </td> 
  </tr>   
</tbody></table> 
<div class="gbx_drag" style="cursor: move; height: 20px; z-index: -1; width: 400px; position: absolute; top: 0px; float: left;"></div></div>



<!-- 반복일정 삭제 선택 layer -->
<div id="_reschedule_delete" style="border: 4px solid rgb(88, 88, 88); z-index: 500; top: 150px; display: none; width: 400px; left: 361.5px; position: absolute; background-color: rgb(255, 255, 255);"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="left_menu"> 
  <tbody><tr> 
    <td height="30" style="padding:3px 10px 0px 10px;"> 

      <form id="_reschedule_delete_form" name="sDelete" onsubmit="jQuery('#_reschedule_delete').gbxHide(); deleteScheduleExe(this.schmgno.value, getSelectedRadioStr(this.worktype), this.rexdate.value); return false;">
      <input type="hidden" name="schmgno">
      <input type="hidden" name="rexdate">
      <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
        <tbody><tr height="40"> 
          <td width="100%">
            <p align="center"><big><b><font color="#000000">반복되는 일정입니다. 삭제방식을 선택하세요</font></b></big></p>
          </td> 
        </tr> 
        <tr> 
          <td height="120" align="left" style="padding:10px; border:1px solid #cccccc; background-color:#f1f1f1">
            <label><input type="radio" rel="hint" name="worktype" value="E" checked=""> 이 일정만 삭제</label> <br>
            <label><input type="radio" rel="hint" name="worktype" value="C"> <span id="rexdateStr"></span> 부터 이후 일정 모두 삭제</label><br>
            <label><input type="radio" rel="hint" name="worktype" value="D"> 전체 일정 삭제</label><br>
          </td>
        </tr> 
        <tr>          
          <td height="40" align="center">
            <input type="submit" value="확인" style="padding:3px 0 0 0;font-size:11px;">
            <input type="button" value="취소" style="padding:3px 0 0 0;font-size:11px;" onclick="jQuery('#_reschedule_delete').gbxHide();">
          </td> 
        </tr>                  
      </tbody></table> 
      </form>

    </td> 
  </tr>   
</tbody></table> 
<div class="gbx_drag" style="cursor: move; height: 20px; z-index: -1; width: 400px; position: absolute; top: 0px; float: left;"></div></div>
        </td>
        
                <td width="7" style="text-align:center;border-right:1px #585858 solid;cursor:pointer;font-size:7px;font-weight:bold" id="__leftbar"><img src="/img/calendar/bt_arrow_left.gif"></td>
        
        <td width="" align="left" valign="top">
        <!--본문TB START--><script type="text/javascript">
var __initpage  = '';
var __yy = '';
var __mm = '';
var __dd = '';
</script>
<div id="contents" style="height:100%">


<table width="100%" border="0" cellspacing="0" cellpadding="0" onselectstart="return false;" style="-moz-user-select:none;">
  <tbody><tr> 
    <td height="40" valign="bottom" bgcolor="#ececec" style="border-bottom:1px #c9c9c9 solid;padding:0 0 0 12px;"> 
    <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
      <tbody><tr> 
        <td width="245" align="left" valign="bottom"> 
        <table border="0" cellspacing="0" cellpadding="0"> 
          <tbody><tr> 
            <td><a href="javascript:calendar_request.dayView()"><img src="/img/calendar/tabmenu01_out.gif"></a></td> 
            <td width="5"></td> 
            <td><a href="javascript:calendar_request.weekView()"><img src="/img/calendar/tabmenu02_out.gif"></a></td> 
            <td width="5"></td> 
            <td><img src="/img/calendar/tabmenu03_over.gif"></td> 
            <!-- td width="5"></td> 
            <td><a href="list4.htm"><img src="/img/calendar/tabmenu04_out.gif"></a></td -->
          </tr>
        </tbody></table>
        </td> 
        <td width="" align="center"><table border="0" cellspacing="0" cellpadding="0"> 
          <tbody><tr> 
            <td width="22" align="left" style="padding:1px 0 0 0;"><a href="javascript:___pre()"><img src="/img/commute/arrow_left.gif"></a></td> 
            <td class="bigtxt3">2015. 06 </td> 
            <td width="22" align="right" style="padding:1px 0 0 0;"><a href="javascript:___next()"><img src="/img/commute/arrow_right.gif"></a></td> 
            <td width="45" align="right"><a href="javascript:calendar_request.monthView('2015', '06', '23')"><img src="/img/calendar/bt_today.gif"></a></td>
          </tr> 
        </tbody></table></td> 
        <td width="80" align="right" style="padding:0 12px 0 0;"><!-- img src="/img/calendar/bt_print.gif" onClick="MM_openBrWindow('print_month.htm','calendar','width=950,height=625')"></a --></td> 
      </tr> 
    </tbody></table> 
    </td> 
  </tr> 
  <tr> 
    <td> 
      <table width="100%" border="0" bordercolor="#e4e4e4" cellspacing="0" cellpadding="0" frame="void" style="table-layout:fixed;"> 
        <tbody><tr height="28" align="center"> 
          <td background="/img/commute/tb_bg.gif" style="background-repeat:repeat-x;border-right:#898989 1px solid;"><b><font color="#e10000">일</font></b></td> 
          <td background="/img/commute/tb_bg.gif" style="background-repeat:repeat-x;border-right:#898989 1px solid;"><b>월</b></td> 
          <td background="/img/commute/tb_bg.gif" style="background-repeat:repeat-x;border-right:#898989 1px solid;"><b>화</b></td> 
          <td background="/img/commute/tb_bg.gif" style="background-repeat:repeat-x;border-right:#898989 1px solid;"><b>수</b></td> 
          <td background="/img/commute/tb_bg.gif" style="background-repeat:repeat-x;border-right:#898989 1px solid;"><b>목</b></td> 
          <td background="/img/commute/tb_bg.gif" style="background-repeat:repeat-x;border-right:#898989 1px solid;"><b>금</b></td> 
          <td background="/img/commute/tb_bg.gif" style="background-repeat:repeat-x;"><b><font color="#0252e4">토</font></b></td> 
        </tr> 
      </tbody></table>   
    </td>
  </tr>

  <tr> 
    <td>       

    <div id="monthview_container" class="calendar_container"> 
       
      <div class="calendar_rows" id="week0" style="height: 85px;"> 

        <table class="tbl_calendar3" cellspacing="0" cellpadding="0"> 
          <tbody><tr>  
            <td id="tc20150531" class="mv_bg_cell old_month" sel="selection" r="0" c="0"></td> 
            <td id="tc20150601" class="mv_bg_cell" sel="selection" r="0" c="1"></td> 
            <td id="tc20150602" class="mv_bg_cell" sel="selection" r="0" c="2"></td> 
            <td id="tc20150603" class="mv_bg_cell" sel="selection" r="0" c="3"></td> 
            <td id="tc20150604" class="mv_bg_cell" sel="selection" r="0" c="4"></td> 
            <td id="tc20150605" class="mv_bg_cell" sel="selection" r="0" c="5"></td> 
            <td id="tc20150606" class="mv_bg_cell" sel="selection" r="0" c="6"></td></tr>
        </tbody></table>

        <table class="tbl_calendar4" cellspacing="0" cellpadding="0" id="row0">
          <tbody><tr>            <td id="tb20150531" class="mv_date_cell" rel="eBody" sel="selection" r="0" c="0">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150531)" class="oldhol">31</a></td>
                <td align="right" style="padding-right:4px;"> <span class="hol_normal">바다의 날</span>                  </td></tr></tbody></table></td>            <td id="tb20150601" class="mv_date_cell" rel="eBody" sel="selection" r="0" c="1">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150601)" class="">1</a></td>
                <td align="right" style="padding-right:4px;"><span class="lunar">(음) 04.15</span>
                  </td></tr></tbody></table></td>            <td id="tb20150602" class="mv_date_cell" rel="eBody" sel="selection" r="0" c="2">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150602)" class="">2</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150603" class="mv_date_cell" rel="eBody" sel="selection" r="0" c="3">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150603)" class="">3</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150604" class="mv_date_cell" rel="eBody" sel="selection" r="0" c="4">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150604)" class="">4</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150605" class="mv_date_cell" rel="eBody" sel="selection" r="0" c="5">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150605)" class="">5</a></td>
                <td align="right" style="padding-right:4px;"> <span class="hol_normal">환경의 날</span>                  </td></tr></tbody></table></td>            <td id="tb20150606" class="mv_date_cell" rel="eBody" sel="selection" r="0" c="6">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150606)" class="hol">6</a></td>
                <td align="right" style="padding-right:4px;"> <span class="hol_holiday">현충일</span>                  </td></tr></tbody></table></td></tr></tbody></table>
      </div>
       
      <div class="calendar_rows" id="week1" style="height: 85px;"> 

        <table class="tbl_calendar3" cellspacing="0" cellpadding="0"> 
          <tbody><tr>  
            <td id="tc20150607" class="mv_bg_cell" sel="selection" r="1" c="0"></td> 
            <td id="tc20150608" class="mv_bg_cell" sel="selection" r="1" c="1"></td> 
            <td id="tc20150609" class="mv_bg_cell" sel="selection" r="1" c="2"></td> 
            <td id="tc20150610" class="mv_bg_cell" sel="selection" r="1" c="3"></td> 
            <td id="tc20150611" class="mv_bg_cell" sel="selection" r="1" c="4"></td> 
            <td id="tc20150612" class="mv_bg_cell" sel="selection" r="1" c="5"></td> 
            <td id="tc20150613" class="mv_bg_cell" sel="selection" r="1" c="6"></td></tr>
        </tbody></table>

        <table class="tbl_calendar4" cellspacing="0" cellpadding="0" id="row1">
          <tbody><tr>            <td id="tb20150607" class="mv_date_cell" rel="eBody" sel="selection" r="1" c="0">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150607)" class="hol">7</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150608" class="mv_date_cell" rel="eBody" sel="selection" r="1" c="1">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150608)" class="">8</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150609" class="mv_date_cell" rel="eBody" sel="selection" r="1" c="2">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150609)" class="">9</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150610" class="mv_date_cell" rel="eBody" sel="selection" r="1" c="3">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150610)" class="">10</a></td>
                <td align="right" style="padding-right:4px;"> <span class="hol_normal">6.10 민주항쟁기념일</span>                  </td></tr></tbody></table></td>            <td id="tb20150611" class="mv_date_cell" rel="eBody" sel="selection" r="1" c="4">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150611)" class="">11</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150612" class="mv_date_cell" rel="eBody" sel="selection" r="1" c="5">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150612)" class="">12</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150613" class="mv_date_cell" rel="eBody" sel="selection" r="1" c="6">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150613)" class="sat">13</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td></tr><tr rel="event">
<td class="mv_event_cell" sel="selection" r="1" c="0" id="e_1_0_0"></td>
<td class="mv_event_cell" sel="selection" r="1" c="1" id="e_1_1_0"></td>
<td class="mv_event_cell" sel="selection" r="1" c="2" id="e_1_2_0"></td>
<td class="mv_event_cell" sel="selection" r="1" c="3" id="e_1_3_0"></td>
<td class="mv_event_cell" sel="selection" r="1" c="4" id="e_1_4_0"></td>
<td class="mv_event_cell" sel="selection" r="1" c="5" id="e_1_5_0"></td>
<td class="mv_event_cell" sel="" r="1" c="6" id="e_1_6_0" colspan="1" title=""><div class="event_div" category="72" style="background-color:#44be1e" value="s20836" onclick="_openScheduleView(20836, '2015-06-13 00:00:00')">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tbl_board9">
  <tbody><tr height="20">
    <td width="" style="color:#FFFFFF;padding:2px 0 0 5px;font-weight:normal;">(종일) ㅋㅋ</td>
    <td width="10" align="right"><img src="/img/calendar/bt_set.gif"></td>
  </tr>
</tbody></table></div></td></tr></tbody></table>
      </div>
       
      <div class="calendar_rows" id="week2" style="height: 85px;"> 

        <table class="tbl_calendar3" cellspacing="0" cellpadding="0"> 
          <tbody><tr>  
            <td id="tc20150614" class="mv_bg_cell" sel="selection" r="2" c="0"></td> 
            <td id="tc20150615" class="mv_bg_cell" sel="selection" r="2" c="1"></td> 
            <td id="tc20150616" class="mv_bg_cell" sel="selection" r="2" c="2"></td> 
            <td id="tc20150617" class="mv_bg_cell" sel="selection" r="2" c="3"></td> 
            <td id="tc20150618" class="mv_bg_cell" sel="selection" r="2" c="4"></td> 
            <td id="tc20150619" class="mv_bg_cell" sel="selection" r="2" c="5"></td> 
            <td id="tc20150620" class="mv_bg_cell" sel="selection" r="2" c="6"></td></tr>
        </tbody></table>

        <table class="tbl_calendar4" cellspacing="0" cellpadding="0" id="row2">
          <tbody><tr>            <td id="tb20150614" class="mv_date_cell" rel="eBody" sel="selection" r="2" c="0">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150614)" class="hol">14</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150615" class="mv_date_cell" rel="eBody" sel="selection" r="2" c="1">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150615)" class="">15</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150616" class="mv_date_cell" rel="eBody" sel="selection" r="2" c="2">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150616)" class="">16</a></td>
                <td align="right" style="padding-right:4px;"><span class="lunar">(음) 05.01</span>
                  </td></tr></tbody></table></td>            <td id="tb20150617" class="mv_date_cell" rel="eBody" sel="selection" r="2" c="3">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150617)" class="">17</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150618" class="mv_date_cell" rel="eBody" sel="selection" r="2" c="4">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150618)" class="">18</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150619" class="mv_date_cell" rel="eBody" sel="selection" r="2" c="5">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150619)" class="">19</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150620" class="mv_date_cell" rel="eBody" sel="selection" r="2" c="6">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150620)" class="sat">20</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td></tr></tbody></table>
      </div>
       
      <div class="calendar_rows" id="week3" style="height: 85px;"> 

        <table class="tbl_calendar3" cellspacing="0" cellpadding="0"> 
          <tbody><tr>  
            <td id="tc20150621" class="mv_bg_cell" sel="selection" r="3" c="0"></td> 
            <td id="tc20150622" class="mv_bg_cell" sel="selection" r="3" c="1"></td> 
            <td id="tc20150623" class="mv_bg_cell today" sel="selection" r="3" c="2"></td> 
            <td id="tc20150624" class="mv_bg_cell" sel="selection" r="3" c="3"></td> 
            <td id="tc20150625" class="mv_bg_cell" sel="selection" r="3" c="4"></td> 
            <td id="tc20150626" class="mv_bg_cell" sel="selection" r="3" c="5"></td> 
            <td id="tc20150627" class="mv_bg_cell" sel="selection" r="3" c="6"></td></tr>
        </tbody></table>

        <table class="tbl_calendar4" cellspacing="0" cellpadding="0" id="row3">
          <tbody><tr>            <td id="tb20150621" class="mv_date_cell" rel="eBody" sel="selection" r="3" c="0">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150621)" class="hol">21</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150622" class="mv_date_cell" rel="eBody" sel="selection" r="3" c="1">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150622)" class="">22</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150623" class="mv_date_cell" rel="eBody" sel="selection" r="3" c="2">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150623)" class="">23</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150624" class="mv_date_cell" rel="eBody" sel="selection" r="3" c="3">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150624)" class="">24</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150625" class="mv_date_cell" rel="eBody" sel="selection" r="3" c="4">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150625)" class="">25</a></td>
                <td align="right" style="padding-right:4px;"> <span class="hol_normal">6.25 전쟁일</span>                  </td></tr></tbody></table></td>            <td id="tb20150626" class="mv_date_cell" rel="eBody" sel="selection" r="3" c="5">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150626)" class="">26</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150627" class="mv_date_cell" rel="eBody" sel="selection" r="3" c="6">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150627)" class="sat">27</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td></tr><tr rel="event">
<td class="mv_event_cell" sel="selection" r="3" c="0" id="e_3_0_0"></td>
<td class="mv_event_cell" sel="selection" r="3" c="1" id="e_3_1_0"></td>
<td class="mv_event_cell" sel="selection" r="3" c="2" id="e_3_2_0"></td>
<td class="mv_event_cell" sel="selection" r="3" c="3" id="e_3_3_0"></td>
<td class="mv_event_cell" sel="selection" r="3" c="4" id="e_3_4_0"></td>
<td class="mv_event_cell" sel="selection" r="3" c="5" id="e_3_5_0"></td>
<td class="mv_event_cell" sel="" r="3" c="6" id="e_3_6_0" colspan="1" title=""><div class="event_div" category="72" style="background-color:#44be1e" value="s20948" onclick="_openScheduleView(20948, '2015-06-27 00:00:00')">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tbl_board9">
  <tbody><tr height="20">
    <td width="" style="color:#FFFFFF;padding:2px 0 0 5px;font-weight:normal;">(종일) test</td>
    <td width="10" align="right"><img src="/img/calendar/bt_set.gif"></td>
  </tr>
</tbody></table></div></td></tr></tbody></table>
      </div>
       
      <div class="calendar_rows" id="week4" style="height: 85px;"> 

        <table class="tbl_calendar3" cellspacing="0" cellpadding="0"> 
          <tbody><tr>  
            <td id="tc20150628" class="mv_bg_cell" sel="selection" r="4" c="0"></td> 
            <td id="tc20150629" class="mv_bg_cell" sel="selection" r="4" c="1"></td> 
            <td id="tc20150630" class="mv_bg_cell" sel="selection" r="4" c="2"></td> 
            <td id="tc20150701" class="mv_bg_cell old_month" sel="selection" r="4" c="3"></td> 
            <td id="tc20150702" class="mv_bg_cell old_month" sel="selection" r="4" c="4"></td> 
            <td id="tc20150703" class="mv_bg_cell old_month" sel="selection" r="4" c="5"></td> 
            <td id="tc20150704" class="mv_bg_cell old_month" sel="selection" r="4" c="6"></td></tr>
        </tbody></table>

        <table class="tbl_calendar4" cellspacing="0" cellpadding="0" id="row4">
          <tbody><tr>            <td id="tb20150628" class="mv_date_cell" rel="eBody" sel="selection" r="4" c="0">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150628)" class="hol">28</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150629" class="mv_date_cell" rel="eBody" sel="selection" r="4" c="1">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150629)" class="">29</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150630" class="mv_date_cell" rel="eBody" sel="selection" r="4" c="2">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150630)" class="">30</a></td>
                <td align="right" style="padding-right:4px;"><span class="lunar">(음) 05.15</span>
                  </td></tr></tbody></table></td>            <td id="tb20150701" class="mv_date_cell" rel="eBody" sel="selection" r="4" c="3">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150701)" class="old">1</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150702" class="mv_date_cell" rel="eBody" sel="selection" r="4" c="4">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150702)" class="old">2</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150703" class="mv_date_cell" rel="eBody" sel="selection" r="4" c="5">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150703)" class="old">3</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td>            <td id="tb20150704" class="mv_date_cell" rel="eBody" sel="selection" r="4" c="6">
              <table width="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr>
                <td><a href="javascript:openScheduleByClick(20150704)" class="oldsat">4</a></td>
                <td align="right" style="padding-right:4px;"></td></tr></tbody></table></td></tr></tbody></table>
      </div>
          </div>

    </td>
  </tr>
</tbody></table></div>            <!--본문TB END-->
            </td>
                    <td width="7" style="text-align: center; border-left-width: 1px; border-left-color: rgb(88, 88, 88); border-left-style: solid; cursor: pointer; font-size: 7px; font-weight: bold; background-color: rgb(255, 255, 255);" id="__rightbar"><img src="/img/calendar/bt_arrow_left.gif"></td>
            <td width="348" height="100%" align="center" valign="top" style="border-left:1px #b1b1b1 solid;display:none" id="__rightmenu">
              <iframe frameborder="0" marginheight="0" marginwidth="0" scrolling="no" style="width:100%;height:100%;" id="__right__frame__" src="/service/load/frame_sms.php" lang="ko"></iframe>            </td>
                      </tr>
        </tbody></table>
         <!--컨텐츠구분TB END-->
        </td>
      </tr>