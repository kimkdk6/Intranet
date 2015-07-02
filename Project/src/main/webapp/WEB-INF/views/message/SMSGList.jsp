<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
/*

		model.addAttribute("messagelist", messagelist);
		model.addAttribute("pagingUtil", pagingUtil);
		
*/
%>

<script type="text/javascript" src="/js/jquery/jquery.history.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.form.js"></script>
<script type="text/javascript" src="/js/jquery/ui.core.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.cookie.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.dynatree.min.js"></script>
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
<body bgcolor="#ffffff" leftmargin="0" topmargin="0">
	<div id="_CalendarDiv"
		style="z-index: 999; background: #ffffcc; width: 150px; display: none; position: absolute">
		<div id="calendar"
			style="z-index: 999; position: absolute; display: none">
			<table width="150" border="1" cellspacing="0" cellpadding="0"
				bordercolor="#858585" bgcolor="#ffffff">
				<tbody>
					<tr>
						<td align="center" valign="top">
							<table width="140" border="0" cellspacing="0" cellpadding="0">
								<tbody>
									<tr>
										<td height="20" valign="top"><span id="caption">
												<table width="140" border="0" cellspacing="0"
													cellpadding="0">
													<tbody>
														<tr>
															<td width="70" style="padding: 5 0 0 12"><span
																id="spanYear"></span></td>
															<td width="57" style="padding: 5 0 0 2"><span
																id="spanMonth"></span></td>
															<td width="13" align="right" valign="middle"
																style="padding: 2 2 0 0;"><span
																style="cursor: hand" onclick="oPopup.hide();"><img
																	src="/img/bt_calendar_close.gif" border="0"
																	align="absmiddle"></span></td>
														</tr>
													</tbody>
												</table>
										</span></td>
									</tr>
									<tr height="1">
										<td style="padding: 3px" bgcolor="#ffffff"><div
												id="dcontent"></div></td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="selectMonth"
			style="z-index: +999; position: absolute; display: none;"></div>
		<div id="selectYear"
			style="z-index: +999; position: absolute; display: none;"></div>
	</div>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tbody>
			<tr>
				<td height="34" align="center" bgcolor="#f9f9f9"
					style="border-bottom: 1px #d9d9d9 solid; padding: 0 5px 0 5px;"><table
						width="100%" border="0" cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td width="110" align="left"><table border="0"
										cellspacing="0" cellpadding="0">
										<!-- <tbody><tr>
                <td><a href="javascript:_delete()"><img src="../resources/img/message/bt_delete.gif"></a></td>
                <td width="5"></td>
                <td><a href="javascript:_keep()"><img src="../resources/img/message/bt_keep.gif" border="0"></a></td>
              </tr> -->
										</tbody>
									</table></td>
								<td width="" align="center" class="m_sp"
									style="font-weight: bold; color: #000; padding: 3px 0 0 0;">보낸쪽지함</td>
								<td width="110">&nbsp;</td>
							</tr>
						</tbody>
					</table></td>
			</tr>
		</tbody>
	</table>
	<!--기능버튼TB-->
	<!--리스트TB START-->
	<form name="noteList" method="post" action="note_action_exe.php">
		<input type="hidden" name="work">
		<table width="100%" id="noteList" border="0" cellspacing="0"
			cellpadding="0" class="tbl_board9">
			<tbody>
				<tr height="20">
					<!-- 	<td width="35" align="center" style="border-bottom:1px #eaeaea solid;border-right:1px #eaeaea solid;"><input type="checkbox" name="checkbox" onclick="chkall('noteList', this.checked)"></td> -->
					<td width="70" align="left"
						style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
						class="title"><a href="javascript:sort('fromname');"><font
							color="#a6a6a6">받는사람</font> </a></td>
					<td width="" align="left"
						style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
						class="title"><a href="javascript:sort('content');"><font
							color="#a6a6a6">제목</font> </a></td>
					<td width="90" align="left"
						style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
						class="title"><a href="javascript:sort('rcvdt');"><font
							color="#a6a6a6">날짜</font> <img src="../resources/img/list_up.gif"
							align="absmiddle"></a></td>
				</tr>




				<!-- 메세지 객체 시작 -->

				<c:forEach items="${messagelist}" var="ml" varStatus="mls">
					<tr>
						<!-- 	<td height="23" align="center" style="border-bottom:1px #eaeaea solid;"><input class="chkbox" type="checkbox" name="notemgno[]" value="548"></td> -->
						<td align="center" class="m_sp"
							style="padding: 2px 0 0 0; border-bottom: 1px #eaeaea solid;">${ml.receiveid }</td>
						<td align="left" class="m_sp"
							style="padding: 2px 0 0 7px; border-bottom: 1px #eaeaea solid;">
							<span class="stip" title=""><a
								href="${pageContext.request.contextPath}/message/SendDetail.htm?msgnum=${ml.msgnum}"
								style="font-weight: normal">${ml.msgtitle}</a></span>
						</td>
						<td align="center" class="date"
							style="border-bottom: 1px #eaeaea solid;">${ml.msgdate}</td>
					</tr>

				</c:forEach>
				<!-- 메세지 객체 끝 -->

			</tbody>
		</table>
	</form>

	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tbody>

			<tr>
				<td align="center" height="30" bgcolor="#ececec"
					style="border-bottom: 1px #c9c9c9 solid; border-top: 1px #c9c9c9 solid; padding: 0 0 0 12px;">

					<c:choose>
						<c:when test="${paging.start==1}">

						</c:when>
						<c:otherwise>
							<a
								href="${pageContext.request.contextPath}/message/SendMessage.htm?cpage=${paging.start-1}">이전</a>
						</c:otherwise>

					</c:choose> <c:forEach begin="${paging.start}" end="${paging.end}" var="page">

						<c:choose>
							<c:when test="${paging.currentPage==page}">
								<font color="#ff6600"><b>[${page}]</b></font>
							</c:when>
							<c:otherwise>
								<b><a
									href="${pageContext.request.contextPath}/message/SendMessage.htm?cpage=${page}">[${page}]</a></b>
							</c:otherwise>
						</c:choose>


					</c:forEach> <c:choose>
						<c:when test="${paging.end < paging.finalPage}">
							<a
								href="${pageContext.request.contextPath}/message/SendMessage.htm?cpage=${paging.end+1}">다음</a>
						</c:when>
						<c:otherwise>

						</c:otherwise>

					</c:choose>

				</td>
			</tr>
		</tbody>
	</table>
</body>