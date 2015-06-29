<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="_schedule_desc" style="border: 3px solid rgb(204, 204, 204); z-index: 500; top: 227.5px; width: 725px; left: 312px; position: absolute; display: block; background-color: rgb(255, 255, 255);"> 
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
                <label><input type="radio" name="rbymonth" right="owner" value=""><span id="strMonthDay1">10일에</span></label>&nbsp;
                <label><input type="radio" name="rbymonth" right="owner" value="BYDAY=WE;BYSETPOS=2"><span id="strMonthDay2">2 번째 수요일에</span></label>&nbsp;
                <label id="_MlastWeek" style="display: none;"><input type="radio" name="rbymonth" right="owner" value="">마지막 <span id="strMonthDay3"></span></label>&nbsp;
                <label id="_MlastDay" style="display: none;"><input type="radio" name="rbymonth" right="owner" value="BYMONTHDAY=-1">마지막 날에</label>&nbsp;
              </td>
            </tr>
            <tr rel="moreFrame" id="reYearFrame" style="display: none;">
              <td colspan="2" align="left">
                <label><input type="radio" name="rbyyear" right="owner" value=""><span id="strYearDay1">6월 10일에</span></label>&nbsp;
                <label><input type="radio" name="rbyyear" right="owner" value="BYDAY=WE;BYSETPOS=2"><span id="strYearDay2">6월 2 번째 수요일에</span></label>&nbsp;
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