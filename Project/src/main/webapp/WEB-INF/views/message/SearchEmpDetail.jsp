
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<script type="text/javascript">

<%-- $(function() {
	
	$('#search').click(function() {
		$.ajax({
			url : "<%=request.getContextPath() %>/message/WriteMessage.htm",
			dataType : "json",
			data : {userid : $('#Emp').val()},
			success : function(data) {
				window.open(url,"new","width=550, height=550, resizable=no, scrollbars=no, status=no, location=no, directories=no;");
			}
		});
	});
	
	$.ajax({
		
	});
}); --%>


function go_pop_message(url){
	window.open(url,"new","width=500, height=450, resizable=yes, scrollbars=no, status=no, location=no, directories=no;");
}
</script>

<table height="400px" width="500px">
		<tr>
			<td align="center" colspan="2" style="border-bottom: 2px solid #0469AF"><h4>${emp.ename}님의 사원정보</h4></td>
		</tr>
		<tr style="background-image: url('../resources/img/bg.jpg');">
			<td>
				<table height="300px" width="200px">
					<tr height="220px">
						<td align="center">
							<%-- <img src="http://192.168.7.241:8090/PROJECT/Upload/${member.p_picture}" width="200px" height="200px"> --%>
							<c:choose>
								<c:when test="${empinfo.userphoto!=null}">
									<img width="130px" height="146" src="../Upload/ProfilePhoto/${empinfo.userphoto}">
								</c:when>

								<!-- <c:otherwise>
									<img width="130px" height="146" src="../resources/img/anony.png" id="imageArea">
								</c:otherwise> -->
							</c:choose>
						</td>
					</tr>
					<tr>
						<!-- <td align="center" style="background-image: url('../resources/img/7inter_logo.PNG');"></td> -->
						<td align="center">
							<b>정직원</b>
						</td>
					</tr>
				</table>
			</td>
			<td>
				<table height="300px" width="300px" id="emp">
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>사원번호</td>
						<td>${emp.empno}</td>
					</tr>
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>이름</td>
						<td>${emp.ename}</td>
					</tr>
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>생년월일</td>
						<td>${empinfo.birth}</td>
					</tr>
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>핸드폰</td>
						<td>${empinfo.usermobile}</td>
					</tr>
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>자택전화</td>
						<td>${empinfo.usertel}</td>
					</tr>
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>이메일</td>
						<td>${empinfo.useremail}</td>
					</tr>
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>소속부서</td>
						<td>${emp.deptcode}</td>
					</tr>
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>소속팀</td>
						<td>${emp.teamcode}</td>
					</tr>
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>직급</td>
						<td>${emp.poscode}</td>
					</tr>
					<tr>
						<td>사내전화번호</td>
						<td>${emp.emptel}</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="button" id="search" class="btn btn-primary" value="쪽지 보내기" onclick="javascript:go_pop_message('${pageContext.request.contextPath}/message/WriteMessage.htm?userid=${emp.userid}')">&nbsp;
			<input type="button" class="btn btn-default" value="닫기" onclick="window.close()"></td>
		</tr>
	</table>