<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
     String yy = request.getParameter("yy");
	String mm = request.getParameter("mm");
	String dd = request.getParameter("dd");
%>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/plugins/jqwidgets/styles/jqx.base.css" type="text/css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/jqwidgets/jqxdraw.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/jqwidgets/jqxchart.core.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/jqwidgets/jqxdata.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/jqwidgets/jqxmenu.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/jqwidgets/jqxlistbox.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/jqwidgets/jqxdropdownlist.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/jqwidgets/jqxgrid.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/jqwidgets/jqxgrid.selection.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/jqwidgets/jqxgrid.pager.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/jqwidgets/jqxgrid.filter.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/jqwidgets/jqxcheckbox.js"></script>

<c:set var="offlateness" value="${offlateness}" />
<c:set var="devellateness" value="${devellateness}" />
<c:set var="manalateness" value="${manalateness}" />
<c:set var="manalateness" value="${manalateness}" />

<c:set var="offleave" value="${offleave}" />
<c:set var="develleave" value="${develleave}" />
<c:set var="manaleave" value="${manaleave}" />
<c:set var="busileave" value="${busileave}" />

<c:set var="offabsence" value="${offabsence}" />
<c:set var="develabsence" value="${develabsence}" />
<c:set var="manaabsence" value="${manaabsence}" />
<c:set var="busiabsence" value="${busiabsence}" />
    <script type="text/javascript">
  

    $(function() {
    	 var nowday = "";
    	if(<%=yy%>!=null){
    		nowday = <%=yy%>+"-"+<%=mm%>+"-"+<%=dd%>;
    	} 
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
            window.location.href = "<%=request.getContextPath() %>/attendance/AttendanceCheck.htm?yy="+strArr[0]+"&mm="+strArr[1]+"&dd="+strArr[2];
           
        }
		
    }).datepicker( "setDate", nowday );
  
    $(document).ready(function () {
 
        // prepare chart data as an array
        var sampleData = [
                { Day: '임원', 지각 : '${offlateness}', 조퇴: '${offleave}', 결근: '${offabsence}' },
                { Day: '개발부', 지각: '${devellateness}', 조퇴: '${develleave}', 결근: '${develabsence}' },
                { Day: '총무부', 지각: '${manalateness}', 조퇴: '${manaleave}', 결근: '${manaabsence}' },
                { Day: '영업부', 지각: '${busilateness}', 조퇴: '${busileave}', 결근: '${busiabsence}' },

        ];
        // prepare jqxChart settings
        var settings = {
            title: "부서별 근태현황",
            description: "",  
            enableAnimations: true,
            showLegend: true,
            padding: { left: 5, top: 5, right: 5, bottom: 5 },
            titlePadding: { left: 90, top: 0, right: 0, bottom: 10 },
            source: sampleData,
            xAxis:
                {
                    dataField: 'Day',
                    gridLines: { visible: true }
                },
            colorScheme: 'scheme01',
            seriesGroups:
                [
                    {
                        type: 'column',
                        columnsGapPercent: 50,
                        seriesGapPercent: 0,
                        valueAxis:
                        {
                            visible: true,
                            unitInterval: 10,
                            minValue: 0,
                            maxValue: 20,
                            title: { text: '횟 수' }
                        },
                        series: [
                                { dataField: '지각', displayText: '지각' },
                                { dataField: '조퇴', displayText: '조퇴' },
                                { dataField: '결근', displayText: '결근' }
                        ]
                    }
                ]
        };
        // setup the chart
        $('#jqxChart').jqxChart(settings);
        var adapter = new $.jqx.dataAdapter({
            datafields: [
                { name: "Day", type: "string" },
                { name: "지각", type: "number" },
                { name: "조퇴", type: "number" },
                { name: "결근", type: "number" }
            ],
            localdata: sampleData,
            datatype: 'array'
        });
        $("#jqxGrid").jqxGrid({
            width: 848,
            height: 232,
            filterable: true,
            showfilterrow: true,
            source: adapter,
            columns:
            [
                { text: "Day", width: '40%', datafield: "Day", filteritems: ["임원", "개발부", "총무부", "영업부"], filtertype: "checkedlist" },
                { text: "지각", width: '20%', datafield: "지각" },
                { text: "조퇴", width: '20%', datafield: "조퇴" },
                { text: "결근", width: '20%', datafield: "결근" }
            ]
        });
        $("#jqxGrid").on('filter', function () {
            var rows = $("#jqxGrid").jqxGrid('getrows');
            var chart = $('#jqxChart').jqxChart('getInstance');
            chart.source = rows;
            chart.update();
        });
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
        </td>
        <td width="" valign="top">
          <table>
           <div id="jqxGrid"></div>
    <div id='jqxChart' style="margin-top: 50px; width: 850px; height: 400px; position: relative; left: 0px; top: 0px;">
          </div>
          
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
                </table>
    <!--리스트TB END-->
    </td>
  </tr>
  <tr>
    <td height="10"></td>
  </tr>
</table>

