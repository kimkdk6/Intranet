<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<tbody>
	<tr>
		<td height="40">
			<!--타이틀TB START-->
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
						<td width="360" align="left" class="title_txt"
							style="padding: 5px 0 0 14px;">전체 직원 목록</td>
						<td width="" align="right" style="padding: 0 12px 0 0;"></td>
					</tr>

				</tbody>
			</table> <!--타이틀TB END-->
		</td>
	</tr>
	<tr>
		<td height="30" bgcolor="#ececec"
			style="border-bottom: 1px #c9c9c9 solid; border-top: 1px #c9c9c9 solid; padding: 0 0 0 12px;">
			<!--기능TB START-->
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
						<td align="left">
							<table border="0" cellspacing="0" cellpadding="0">
								<tbody>
									<tr>
										<td><a
											href="usrInfo.php?dept=&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><img
												src="/img/webmail/bt_add2.gif"></a></td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table> <!--기능TB END-->
		</td>
	</tr>
	<tr>
		<td>
			<!--리스트TB START-->
			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				class="tbl_board1">
				<tbody>
					<tr height="20">
						<td align="left"
							style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
							class="title">No</td>
						<td align="left"
							style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
							class="title">아이디</td>
						<td align="left"
							style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
							class="title">부서</td>
						<td align="left"
							style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
							class="title">직급</td>
						<td align="left"
							style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
							class="title">직원명</td>
						<td align="left"
							style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
							class="title">메일용량</td>
						<td align="left"
							style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
							class="title">사용량</td>
						<td align="left"
							style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
							class="title">회사전화</td>
						<td align="left"
							style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
							class="title">핸드폰</td>
						<td align="left"
							style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
							class="title">G/W 관리</td>
						<td align="left"
							style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
							class="title">근태 관리</td>
						<td align="left"
							style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"
							class="title">근태 대상</td>
					</tr>
					<tr bgcolor="#f9f9f9" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">1</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=3231&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>abcc</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">전무</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">대표이사
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=3231&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><font
								color="red">전무 abv 대표이사 test (대기중) </font></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">123</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#ffffff" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">2</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=2390&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>demo2</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">전무</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">대표이사
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=2390&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>데모2</b></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">0%</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">011-1111-1111</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#f9f9f9" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">3</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=2485&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>demo3</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">전무</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">대표이사
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=2485&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>1234</b></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">0%</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#ffffff" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">4</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=2486&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>demo4</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">전무</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">대표이사
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=2486&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><font
								color="red">전무 1234 대표이사 test (대기중) </font></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#f9f9f9" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">5</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=31&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>admin</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">연구부문</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">부장
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=31&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>관리자</b></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">1,400M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">4%</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#ffffff" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">6</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=2565&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>ddtest</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">연구부문</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">부장
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=2565&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>dd테스트</b></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">0%</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#f9f9f9" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">7</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=2838&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>test1</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">대표이사</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">부장
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=2838&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>테스터1</b></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">0%</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">010-1234-5678</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#ffffff" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">8</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=2400&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>demo1</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">대표이사</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">부장
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=2400&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>데모1</b></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">0%</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#f9f9f9" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">9</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=3233&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>jang</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">개발팀</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">대표이사
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=3233&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>장그래</b></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">0%</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">010--54--5431</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#ffffff" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">10</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=3237&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>a1</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">개발팀</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">부장
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=3237&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>a1</b></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">0%</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#f9f9f9" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">11</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=2661&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>demo-2</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">개발팀</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">부장
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=2661&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>demo</b></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">0%</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">010-2617-8985</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#ffffff" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">12</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=2633&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b></b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">개발팀</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">차장
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=2633&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><font
								color="red">개발팀 oqltcpiqy 차장 test (대기중) </font></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#f9f9f9" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">13</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=3238&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>a2</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">개발팀</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">과장
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=3238&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>a2</b></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">0%</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#ffffff" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">14</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=3100&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>javaenjoy</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">개발팀</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">과장
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=3100&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><font
								color="red">개발팀 슬러시 과장 test (대기중) </font></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#f9f9f9" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">15</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=3232&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>kglim</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">개발팀</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">과장
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=3232&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>임경균</b></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">0%</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">010-3431-5411</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#ffffff" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">16</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=3239&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>a3</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">개발팀</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">대리
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=3239&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>a3</b></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">0%</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#f9f9f9" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">17</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=2068&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>criss</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">지원부문</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">대표이사
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=2068&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>정시현</b></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">0%</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">010-9164-2169</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#ffffff" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">18</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=1532&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>demo-1</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">지원부문</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">대표이사
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=1532&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>데모사용자</b></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">0M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">-</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#f9f9f9" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">19</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=3230&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>namename</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">지원부문</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">대리
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=3230&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><font
								color="red">지원부문 name 대리 test (대기중) </font></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">010-3333-333</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#ffffff" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">20</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=2436&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>yhsk8956</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">품질팀</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">대표이사
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=2436&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><font
								color="red">품질팀 착한예술 대표이사 test (대기중) </font></a>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">50M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">010-123-1234</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
					<tr bgcolor="#f9f9f9" height="23">
						<td align="left"
							style="padding: 2px 0px 0 7px; border-bottom: 1px #eaeaea solid;">21</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"><a
							href="usrInfo.php?dept=&amp;usrmgno=3134&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><b>411388</b></a></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">지원부문</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">부장
							test</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
							<a
							href="usrInfo.php?dept=&amp;usrmgno=3134&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><font
								color="red">지원부문 klark 부장 test (대기중) </font></a> <b>(외부인원)</b>
						</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">0M</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">-</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;"></td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">763-1178-3638</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">X</td>
						<td align="left"
							style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">O</td>
					</tr>
				</tbody>
			</table> <!--리스트TB END-->
		</td>
	</tr>
	<tr>
		<td height="30" bgcolor="#ececec"
			style="border-bottom: 1px #c9c9c9 solid; border-top: 1px #c9c9c9 solid; padding: 0 0 0 12px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
						<td align="left">
							<table border="0" cellspacing="0" cellpadding="0">
								<tbody>
									<tr>
										<td><a
											href="usrInfo.php?dept=&amp;rtn_url=%2Fadmin%2FusrList.php%3Fdept%3D"><img
												src="/img/webmail/bt_add2.gif"></a></td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
		</td>
	</tr>
</tbody>

