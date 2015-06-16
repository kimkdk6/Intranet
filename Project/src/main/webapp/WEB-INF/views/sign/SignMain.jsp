<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<!--본문TB START-->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td height="40">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="360" align="left" class="title_txt"
								style="padding: 5px 0 0 14px;">전자결재 메인 </td>
							<td width="" align="right" style="padding: 0 12px 0 0;">&nbsp;</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td align="left"
				style="border-top: 1px #c9c9c9 solid; padding: 19px 15px 0 15px;">


				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td height="25">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tbody>
										<tr>
											<td width="90%"
												style="font-weight: bold; letter-spacing: -1px; padding: 0 0 0 3px;"><a
												class="title_txt" href="/approval/proc_wait_list.php">결재문서함
													&gt; 미결재 문서</a></td>
											<td width="10%" align="right" style="padding: 0 6px 0 0;"><a
												href="/approval/proc_wait_list.php"></a></td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
						<tr>
							<td>

								<table width="100%" id="docList" border="0" cellspacing="0"
									cellpadding="0" class="tbl_board9"
									style="border-top: #c9c9c9 1px solid;">
									<tbody>
										<tr height="20">
											<td width="100" class="title bb1 br1 p0007"><font
												color="#666666">문서번호</font></td>
											<td width="80" class="title bb1 br1 p3007"><font
												color="#666666">문서종류</font></td>
											<td width="100" class="title bb1 br1 p3007"><font
												color="#666666">기안부서</font></td>
											<td width="100" class="title bb1 br1 p3007"><font
												color="#666666">기안자</font></td>
											<td width="100" class="title bb1 br1 p3007"><font
												color="#666666">기안일</font></td>
											<td width="70" class="title bb1 br1 p3007"><font
												color="#666666">결재완료수</font></td>
											<td width="200" class="title bb1 p3007"><font
												color="#666666">제목</font></td>
										</tr>
											
										 		
												<c:forEach items="${unsignlist}" var="n">
													<tr>
														<td width="100" class="title bb1 br1 p0007"><font
														color="#666666">${n.docnum}</font></td>
														<td width="80" class="title bb1 br1 p3007"><font
															color="#666666">${n.docnum}</font></td>
														<td width="100" class="title bb1 br1 p3007"><font
															color="#666666">${n.dept}</font></td>
														<td width="100" class="title bb1 br1 p3007"><font
															color="#666666">${n.userid}</font></td>
														<td width="100" class="title bb1 br1 p3007"><font
															color="#666666">${n.draftdate}</font></td>
														<td width="70" class="title bb1 br1 p3007"><font
															color="#666666">${n.signstate}</font></td>
														<td width="200" class="title bb1 p3007"><font
															color="#666666">${n.signtitle}</font></td>
													</tr>
												</c:forEach>
											 
											 
												<tr height="60">
													<td class="p2007 bb1" colspan="7" align="center"><b>조회된
															문서가 없습니다.</b></td>
												</tr>
											 
										
										
									</tbody>
								</table>


							</td>
						</tr>
						<tr>
							<td height="15"></td>
						</tr>
					</tbody>
				</table>




				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td height="25"><table width="100%" border="0"
									cellspacing="0" cellpadding="0">
									<tbody>
										<tr>
											<td width="90%"
												style="font-weight: bold; letter-spacing: -1px; padding: 0 0 0 3px;"><a
												class="title_txt" href="/approval/my_report_list.php">개인문서함
													&gt; 상신문서</a></td>
											<td width="10%" align="right" style="padding: 0 6px 0 0;"><a
												href="/approval/my_report_list.php"></a></td>
										</tr>
									</tbody>
								</table></td>
						</tr>
						<tr>
							<td>
								<table width="100%" id="docList" border="0" cellspacing="0"
									cellpadding="0" class="tbl_board9"
									style="border-top: #c9c9c9 1px solid;">
									<tbody>
										<tr height="20">
											<td width="100" class="title bb1 br1 p0007"><font
												color="#666666""="">문서번호</font></td>
											<td width="80" class="title bb1 br1 p3007"><font
												color="#666666""="">문서종류</font></td>
											<td width="70" class="title bb1 br1 p3007"><font
												color="#666666""="">기안일</font></td>
											<td width="70" class="title bb1 br1 p3007"><font
												color="#666666""="">결재완료수</font></td>
											<td width="90" class="title bb1 br1 p3007"><font
												color="#666666""="">상태</font></td>
											<td width="120" class="title bb1 br1 p3007"><font
												color="#666666""="">현재 결재자</font></td>
											<td width="" class="title bb1 p3007"><font
												color="#666666""="">제목</font></td>
										</tr>
										<tr height="60">
											<td class="p2007 bb1" colspan="7" align="center"><b>조회된
													문서가 없습니다.</b></td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
						<tr>
							<td height="15"></td>
						</tr>
					</tbody>
				</table>
				</table>