<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript" src="/js/jquery/jquery.history.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.form.js"></script>
<script type="text/javascript" src="/js/jquery/ui.core.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.cookie.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.dynatree.min.js"></script>

<script type="text/javascript">

	function popupOpen(){
	var popUrl = "AddressWindow.htm";	//팝업창에 출력될 페이지 URL
	var popOption = "width=370, height=500, resizable=no, scrollbars=no, status=no, left=100, top=100;";    //팝업창 옵션(optoin)
		window.open(popUrl,"",popOption);
	}

</script>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td height="34" align="center" bgcolor="#f9f9f9"
				style="border-bottom: 1px #d9d9d9 solid; padding: 0 5px 0 5px;"><table
					width="100%" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="110" align="left">&nbsp;</td>
							<td width="" align="center" class="m_sp"
								style="font-weight: bold; color: #000; padding: 3px 0 0 0;">쪽지쓰기</td>
							<td width="110">&nbsp;</td>
						</tr>
					</tbody>
				</table></td>
		</tr>
	</tbody>
</table>
<!--기능버튼TB-->
<!--내용TB START-->
<form name="noteWrite" method="post" action="WriteMessage.htm">
	<input type="hidden" name="sendid" value="${sessionScope.myemp.userid}">
	
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tbody>
			<tr>
				<td height="30" style="padding: 0px 10px 0px 10px;">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td width="42" class="m_sp" style="padding: 3px 0 0 0;"><b>받는이</b></td>
							</tr>
							<tr>
								<td colspan="2">
									<input width="100%" type="text"
									id="receiveid" name="receiveid" class="input_type1" readonly="readonly" value="${receiveid}">
								</td>
								
								<td align="right"> <input type="button" id="selectreceiver" onclick="popupOpen()"
										style="padding: 3px 0 0 0; font-weight: bold; font-size: 13px;" value="선택하기">
										
								</td>
							</tr>
							<tr>
								<td width="42" class="m_sp" style="padding: 3px 0 0 0;"><b>제목</b></td>

							</tr>
							<tr>
								<td colspan="3"><input type="text" id="msgtitle"
									name="msgtitle" class="input_type1" style="width: 100%;"
									></td>
							</tr>
							<tr>
								<td width="42" class="m_sp" style="padding: 3px 0 0 0;"><b>내용</b></td>

							</tr>
							<tr>
								<td colspan="3" height="223" valign="top"
									style="padding: 5px 10px 5px 10px;"><textarea
										name="msgcontent"
										style="width: 100%; height: 100%; border: #adafaa 1px solid; font-size: 12px; color: #333333; line-height: 140%; padding: 5px;">
    
    </textarea></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>

			<tr>
				<td height="50" align="center" class="m_sp"
					style="padding: 0px 10px 0px 10px;">
					<button onclick="this.form.submit()"
						style="padding: 3px 0 0 0; font-weight: bold; font-size: 13px;">보내기</button>
					<button onclick="window.close()"
						style="padding: 3px 0 0 0; font-weight: bold; font-size: 13px;">취소</button>

				</td>
			</tr>
		</tbody>
	</table>
</form>


