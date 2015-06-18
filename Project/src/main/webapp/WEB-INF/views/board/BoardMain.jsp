<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${boardList}" var="bl" varStatus="bls">

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
		
			<!-- 게시판 하나 시작 -->
			<td align="left"
				style="border-top: 1px #c9c9c9 solid; padding: 19px 15px 0 15px;">
	
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tbody>
					<!-- 게시판 이름  MORE 아이콘 -->
						<tr>
							<td height="25">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tbody>
										<tr>
											<td width="90%" style="font-weight: bold; letter-spacing: -1px; padding: 0 0 0 3px;"><img src="../resources/img/icon_4.gif" align="absmiddle"> <a class="title_txt" href="/bbs/list.php?bbs_id=0009">${bl.boardname}</a></td>
											<td width="10%" align="right" style="padding: 0 6px 0 0;"><a  	href="${pageContext.request.contextPath}/board/BoardList.htm?boardcode=${bl.boardcode}"><img src="../resources/img/bt_more.gif"></a></td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
					<!-- 게시판이름 MORE아이콘 끝 -->
						
					<!-- 번호 제목 작성자 + 내용 -->
						<tr>
							<td>

								<table width="100%" id="docList" border="0" cellspacing="0"
									cellpadding="0" class="tbl_board9"
									style="border-top: #c9c9c9 1px solid;">
									<tbody>
									<!-- 번호 제목 작성자 -->
										<tr>
											<td width="10%" height="20" align="center" style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 0px;" class="title">번호</td>
											<td width="60%" align="left" style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;" class="title">제목</td>
											<td width="10%" align="left" style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;" class="title">작성자</td>
											<td width="10%" align="left" style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;" class="title">작성일</td>
											<td width="10%" align="left" style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 7px;" class="title">조회수</td>
										</tr>
									<!-- 게시판 내용 -->
									

									<c:forEach items="${boards[bls.index]}" var="b" varStatus="bs">
										<tr bgcolor="#f9f9f9">
											<td height="23" align="center" style="padding: 2px 0 0 0px; border-bottom: 1px #eaeaea solid;">
												<c:choose>
													<c:when test="${b.boardnotice == 1}">
														<img src="../resources/img/icon_notice.gif" border="0" align="absmiddle">
													</c:when>
													 <c:otherwise>
<%-- 													 	${b.boardnum} --%>
														${bs.index+1}
													 </c:otherwise>
												</c:choose>	
											</td>
											<td style="padding: 2px 0 0 7px; border-bottom: 1px #eaeaea solid;">
												<a href="${pageContext.request.contextPath}/board/BoardDetail.htm?boardnum=${b.boardnum}">${b.boardtitle}</a>
											</td>
											<td align="left" style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">${b.userid}</td>
											<td align="center" class="date" style="border-bottom: 1px #eaeaea solid;">${b.boarddate}</td>
											<td align="right" class="date" style="padding: 0px 7px 0 0; border-bottom: 1px #eaeaea solid;">${b.boardcount}</td>
										</tr>
									</c:forEach>
									</tbody>
								</table>

							</td>
						</tr>
						<tr>
							<td height="15"></td>
						</tr>
					</tbody>
				</table>

			</td>


		</tr>
		<tr>
			<td height="30"></td>
		</tr>
	</tbody>
	
</table>












</c:forEach>












<!-- <table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!-- 	<tbody> -->
<!-- 		<tr> -->
		
<!-- 			<!-- 게시판 하나 시작 -->
<!-- 			<td align="left" -->
<!-- 				style="border-top: 1px #c9c9c9 solid; padding: 19px 15px 0 15px;"> -->
	
<!-- 				<table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!-- 					<tbody> -->
<!-- 					게시판 이름  MORE 아이콘 -->
<!-- 						<tr> -->
<!-- 							<td height="25"> -->
<!-- 								<table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!-- 									<tbody> -->
<!-- 										<tr> -->
<!-- 											<td width="90%" style="font-weight: bold; letter-spacing: -1px; padding: 0 0 0 3px;"><img src="../resources/img/icon_4.gif" align="absmiddle"> <a class="title_txt" href="/bbs/list.php?bbs_id=0009">공지사항</a></td> -->
<!-- 											<td width="10%" align="right" style="padding: 0 6px 0 0;"><a  	href="/bbs/list.php?bbs_id=0009"><img src="../resources/img/bt_more.gif"></a></td> -->
<!-- 										</tr> -->
<!-- 									</tbody> -->
<!-- 								</table> -->
<!-- 							</td> -->
<!-- 						</tr> -->
<!-- 					게시판이름 MORE아이콘 끝 -->
						
<!-- 					번호 제목 작성자 + 내용 -->
<!-- 						<tr> -->
<!-- 							<td> -->

<!-- 								<table width="100%" id="docList" border="0" cellspacing="0" -->
<!-- 									cellpadding="0" class="tbl_board9" -->
<!-- 									style="border-top: #c9c9c9 1px solid;"> -->
<!-- 									<tbody> -->
<!-- 									번호 제목 작성자 -->
<!-- 										<tr> -->
<!-- 											<td width="10%" height="20" align="center" style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 0px;" class="title">번호</td> -->
<!-- 											<td width="60%" align="left" style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;" class="title">제목</td> -->
<!-- 											<td width="10%" align="left" style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;" class="title">작성자</td> -->
<!-- 											<td width="10%" align="left" style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;" class="title">작성일</td> -->
<!-- 											<td width="10%" align="left" style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 7px;" class="title">조회수</td> -->
<!-- 										</tr> -->
<!-- 									게시판 내용 -->
<!-- 										<tr bgcolor="#f9f9f9"> -->
<!-- 											<td height="23" align="center" style="padding: 2px 0 0 0px; border-bottom: 1px #eaeaea solid;"> -->
<!-- 												<img src="../resources/img/icon_notice.gif" border="0" align="absmiddle"> -->
<!-- 											</td> -->
<!-- 											<td style="padding: 2px 0 0 7px; border-bottom: 1px #eaeaea solid;"> -->
<!-- 												<a href="view.php?bbs_id=0009&amp;seq=8&amp;rtn_url=/bbs/list.php?bbs_id=0009">체육대회 공지</a> -->
<!-- 											</td> -->
<!-- 											<td align="left" style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">관리자</td> -->
<!-- 											<td align="center" class="date" style="border-bottom: 1px #eaeaea solid;">2015-06-05 11:15</td> -->
<!-- 											<td align="right" class="date" style="padding: 0px 7px 0 0; border-bottom: 1px #eaeaea solid;">15</td> -->
<!-- 										</tr> -->
<!-- 									</tbody> -->
<!-- 								</table> -->

<!-- 							</td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td height="15"></td> -->
<!-- 						</tr> -->
<!-- 					</tbody> -->
<!-- 				</table> -->

<!-- 			</td> -->


<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<td height="30"></td> -->
<!-- 		</tr> -->
<!-- 	</tbody> -->
	
<!-- </table> -->


