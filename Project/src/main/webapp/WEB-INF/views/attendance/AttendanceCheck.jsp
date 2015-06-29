<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <script type="text/javascript">
    $(function() {
 
    $.datepicker.regional['ko'] = { // Default regional settings
        closeText: '닫기',
        prevText: '이전달',
        nextText: '다음달',
        monthNames: ['1월(JAN)','2월(FEB)','3월(MAR)','4월(APR)','5월(MAY)','6월(JUN)',
        '7월(JUL)','8월(AUG)','9월(SEP)','10월(OCT)','11월(NOV)','12월(DEC)'],
        monthNamesShort: ['1월','2월','3월','4월','5월','6월',
        '7월','8월','9월','10월','11월','12월'],
        dayNames: ['일','월','화','수','목','금','토'],
        dayNamesShort: ['일','월','화','수','목','금','토'],
        dayNamesMin: ['일','월','화','수','목','금','토'],
        weekHeader: 'Wk',
        dateFormat: 'yy-mm-dd', // [mm/dd/yy], [yy-mm-dd], [d M, y], [DD, d MM]
        firstDay: 0,
        isRTL: false,
        showMonthAfterYear: true,
        yearSuffix: ''};

    $.datepicker.setDefaults($.datepicker.regional['ko']);

    $('#datepicker').datepicker({
    	changeMonth: true,
        changeYear: true,
        
        onSelect: function(selectedDate) {
        	var strArr = selectedDate.split('-');
            alert(strArr);
            $.ajax({
				url:"<%=request.getContextPath() %>/attendance/AttendanceCheck.htm?yy=strArr[0]&mm=strArr[1]&dd=strArr[2]",  //요청 URL
				type:"get",           //전송 타입
				dataType:"html",
				success : function(data){
				},
				error :function(data){alert("aa");}
			});
    }
		
    });
});
</script>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="40">
    <!--타이틀TB START-->
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="360" align="left" class="title_txt" style="padding:5px 0 0 14px;">근태현황</td>
        <td width="" align="right" style="padding:0 12px 0 0;">&nbsp;</td>
      </tr>
    </table>
    <!--타이틀TB END-->
    </td>
  </tr>
  <tr>
    <td height="30" bgcolor="#ececec" style="border-bottom:1px #c9c9c9 solid;border-top:1px #c9c9c9 solid;padding:0 0 0 12px;">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td align="right" style="padding:0 15px 0 0;" class="bigtxt2">
            2015년 06월 29일
                       </td>
        </tr>
      </table>
    </td>
  </tr>

  <tr>
    <td style="padding:15px;">

    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="250" style="padding-right:15px;" valign="top">
		<div id="datepicker"></div>
            <!-- <table width="100%" border="1" bordercolor="#eaeaea" cellspacing="0" cellpadding="0">
              <tr height="25" align="center" bgcolor="#f6f6f6">
                <td width="3%" class="stxt" style="font-weight:bold;padding:3px 0px 0px;"><font color="#fe0000">일</font></td>
                <td width="3%" class="stxt" style="font-weight:bold;padding:3px 0px 0px;">월</td>
                <td width="3%" class="stxt" style="font-weight:bold;padding:3px 0px 0px;">화</td>
                <td width="3%" class="stxt" style="font-weight:bold;padding:3px 0px 0px;">수</td>
                <td width="3%" class="stxt" style="font-weight:bold;padding:3px 0px 0px;">목</td>
                <td width="3%" class="stxt" style="font-weight:bold;padding:3px 0px 0px;">금</td>
                <td width="3%" class="stxt" style="font-weight:bold;padding:3px 0px 0px;"><font color="#3548fc">토</font></td>
              </tr>
                              <tr>
                                      <td>&nbsp;</td>
                                        <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=01'">
                      <font color="">1</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=02'">
                      <font color="">2</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=03'">
                      <font color="">3</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=04'">
                      <font color="">4</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=05'">
                      <font color="">5</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=06'">
                      <font color="#E10000">6</font>
                    </td>
                                  </tr>
                              <tr>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=07'">
                      <font color="#E10000">7</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=08'">
                      <font color="">8</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=09'">
                      <font color="">9</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=10'">
                      <font color="">10</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=11'">
                      <font color="">11</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=12'">
                      <font color="">12</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=13'">
                      <font color="#0252E4">13</font>
                    </td>
                                  </tr>
                              <tr>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=14'">
                      <font color="#E10000">14</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=15'">
                      <font color="">15</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=16'">
                      <font color="">16</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=17'">
                      <font color="">17</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=18'">
                      <font color="">18</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=19'">
                      <font color="">19</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=20'">
                      <font color="#0252E4">20</font>
                    </td>
                                  </tr>
                              <tr>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=21'">
                      <font color="#E10000">21</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=22'">
                      <font color="">22</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=23'">
                      <font color="">23</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=24'">
                      <font color="">24</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=25'">
                      <font color="">25</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=26'">
                      <font color="">26</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=27'">
                      <font color="#0252E4">27</font>
                    </td>
                                  </tr>
                              <tr>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=28'">
                      <font color="#E10000">28</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;" bgcolor='#c2e4f5' class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=29'">
                      <font color="">29</font>
                    </td>
                                                          <td align="right" valign="top" style="padding:7px;"  class="vtd" onClick="document.location.href='/timecard/dept.php?yy=2015&mm=06&dd=30'">
                      <font color="">30</font>
                    </td>
                                      <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                          </table> -->

        </td>
        <td width="" valign="top">
          <table width="100%" border="1" bordercolor="#eaeaea" cellspacing="0" cellpadding="0">
            <tr height="25" bgcolor="#F6F6F6" align="center">
              <td style="padding:3px 0 0 0;"><b>부서</b></td>
              <td style="padding:3px 0 0 0;"><b>직원수</b></td>
              <td style="padding:3px 0 0 0;"><b>휴가</b></td>
              <td style="padding:3px 0 0 0;"><b>지각</b></td>
              <td style="padding:3px 0 0 0;"><b>조퇴</b></td>
              <td style="padding:3px 0 0 0;"><b>반차</b></td>
              <td style="padding:3px 0 0 0;"><b>야근</b></td>
              <td style="padding:3px 0 0 0;"><b>결근 </b></td>
              <td style="padding:3px 0 0 0;"><b>출장</b></td>
              <td style="padding:3px 0 0 0;"><b>특근</b></td>
            </tr>
                                    <tr>
              <td height="28" align="left" style="padding:3px 0 0 16px;"><b>전무</b></td>
              <td align="center" style="padding:3px 0 0 0;">2</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
            </tr>
                                    <tr>
              <td height="28" align="left" style="padding:3px 0 0 16px;"><b>연구부문</b></td>
              <td align="center" style="padding:3px 0 0 0;">2</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
            </tr>
                                    <tr>
              <td height="28" align="left" style="padding:3px 0 0 16px;"><b>대표이사</b></td>
              <td align="center" style="padding:3px 0 0 0;">2</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
            </tr>
                                    <tr>
              <td height="28" align="left" style="padding:3px 0 0 16px;"><b>개발팀</b></td>
              <td align="center" style="padding:3px 0 0 0;">6</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
            </tr>
                                    <tr>
              <td height="28" align="left" style="padding:3px 0 0 16px;"><b>지원부문</b></td>
              <td align="center" style="padding:3px 0 0 0;">2</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
              <td align="center" style="padding:3px 0 0 0;">-</td>
            </tr>
                                                                        <tr height="25" bgcolor="#F6F6F6" align="center">
              <td height="28" align="left" style="padding:3px 0 0 16px;"><b> 합계 </b></td>
              <td align="center" style="padding:3px 0 0 0;">14</td>
              <td align="center" style="padding:3px 0 0 0;">0</td>
              <td align="center" style="padding:3px 0 0 0;">0</td>
              <td align="center" style="padding:3px 0 0 0;">0</td>
              <td align="center" style="padding:3px 0 0 0;">0</td>
              <td align="center" style="padding:3px 0 0 0;">0</td>
              <td align="center" style="padding:3px 0 0 0;">0</td>
              <td align="center" style="padding:3px 0 0 0;">0</td>
              <td align="center" style="padding:3px 0 0 0;">0</td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td height="10"></td>
  </tr>
  <tr>
    <td style="border-top:1px solid #eaeaea">
    <!--리스트TB START-->
    <table width="100%" >
      <tr height="23" align="left">
        <td width="50" style="border-bottom:1px #eaeaea solid;border-right:1px #eaeaea solid;padding:3px 0 0 7px;" class="title">No</td>
        <td width="120" style="border-bottom:1px #eaeaea solid;border-right:1px #eaeaea solid;padding:3px 0 0 7px;" class="title">부서</td>
        <td width="80"  style="border-bottom:1px #eaeaea solid;border-right:1px #eaeaea solid;padding:3px 0 0 7px;" class="title">직급</td>
        <td width="100" style="border-bottom:1px #eaeaea solid;border-right:1px #eaeaea solid;padding:3px 0 0 7px;" class="title">이름</td>
        <td width="70"  style="border-bottom:1px #eaeaea solid;border-right:1px #eaeaea solid;padding:3px 0 0 7px;" class="title">출근시간</td>
        <td width="70"  style="border-bottom:1px #eaeaea solid;border-right:1px #eaeaea solid;padding:3px 0 0 7px;" class="title">퇴근시간</td>
        <!-- <td width=""    style="border-bottom:1px #eaeaea solid;border-right:1px #eaeaea solid;padding:3px 0 0 7px;" class="title">접속장소</td> -->
      </tr>
       <c:forEach items="${all}" var="all">
            <tr bgcolor=#f9f9f9 height="28">
         
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">${all.ROWNUM}</td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">${all.DEPTNAME} </td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">${all.POSNAME} </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">${all.ENAME} </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">${all.ATTSTARTTIME}</td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">${all.ATTENDTIME}</td>
        <%-- <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">${a.rownum } </td> --%>
      
       </tr>
        </c:forEach>
        <!--    <tr bgcolor=#ffffff height="28">
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">2</td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">전무 </td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">대표이사 test </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
          데모2                             </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
                   </td>
      </tr>
            <tr bgcolor=#f9f9f9 height="28">
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">3</td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">연구부문 </td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">부장 test </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
          dd테스트                             </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
                   </td>
      </tr>
            <tr bgcolor=#ffffff height="28">
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">4</td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">연구부문 </td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">부장 test </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
          관리자                             </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
                   </td>
      </tr>
            <tr bgcolor=#f9f9f9 height="28">
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">5</td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">대표이사 </td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">부장 test </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
          데모1                             </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
                   </td>
      </tr>
            <tr bgcolor=#ffffff height="28">
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">6</td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">대표이사 </td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">부장 test </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
          테스터1                             </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
                   </td>
      </tr>
            <tr bgcolor=#f9f9f9 height="28">
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">7</td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">개발팀 </td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">대표이사 test </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
          장그래                             </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
                   </td>
      </tr>
            <tr bgcolor=#ffffff height="28">
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">8</td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">개발팀 </td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">부장 test </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
          demo                             </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
                   </td>
      </tr>
            <tr bgcolor=#f9f9f9 height="28">
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">9</td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">개발팀 </td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">부장 test </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
          a1                             </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
                   </td>
      </tr>
            <tr bgcolor=#ffffff height="28">
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">10</td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">개발팀 </td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">과장 test </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
          임경균                             </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
                   </td>
      </tr>
            <tr bgcolor=#f9f9f9 height="28">
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">11</td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">개발팀 </td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">과장 test </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
          a2                             </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
                   </td>
      </tr>
            <tr bgcolor=#ffffff height="28">
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">12</td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">개발팀 </td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">대리 test </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
          a3                             </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
                   </td>
      </tr>
            <tr bgcolor=#f9f9f9 height="28">
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">13</td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">지원부문 </td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">대표이사 test </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
          데모사용자                             </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
                   </td>
      </tr>
            <tr bgcolor=#ffffff height="28">
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">14</td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">지원부문 </td>
        <td align="left" style="padding:2px 0px 0 7px;border-bottom:1px #eaeaea solid;">대표이사 test </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
          정시현                             </td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;"></td>
        <td align="left" style="padding:2px 7px 0 7px;border-bottom:1px #eaeaea solid;">
                   </td>
      </tr> -->
                </table>
    <!--리스트TB END-->
    </td>
  </tr>
  <tr>
    <td height="10"></td>
  </tr>
</table>
<!--본문TB END-->
            <!--본문TB END-->
