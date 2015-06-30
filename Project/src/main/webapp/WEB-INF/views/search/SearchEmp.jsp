<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<!--본문TB START-->

	<!-- /.box-header -->
	

	<!-- /.box-header -->
	<div class="box">
		
		<div class="box-body">
			<table class="table table-hover">
				<tr>
					<th style="width: 75px">사용자 ID</th>
					<th style="width: 75px">사원 번호</th>
					<th style="width: 75px">사원 이름</th>
					<th style="width: 75px">사원 전화번호</th>
					<th style="width: 75px">부서명</th>
					<th style="width: 75px">팀명</th>
					<th style="width: 75px">직급</th>
				</tr>
				<c:choose>
					<c:when test="${fn:length(emplist) > 0}">
						<c:forEach items="${emplist}" var="e">
							<c:set var="emptype" value="${e.emptype}" />
							<tr>
								<td width="100" class="title bb1 br1 p0007"><font
									color="#666666"> <c:choose>
											<c:when test="${emptype == 1}">
												<a
													href="${pageContext.request.contextPath}/search/DraftingDetail.htm?docnum=${s.docnum}">
													${s.docnum} </a>
											</c:when>
											<c:when test="${signtype == 2}">
												<a
													href="${pageContext.request.contextPath}/sign/HolidayDocDetail.htm?docnum=${s.docnum}">
													${s.docnum} </a>
									</c:when>
											<c:when test="${signtype == 3}">
												<a
													href="${pageContext.request.contextPath}/sign/OrderDocDetail.htm?docnum=${s.docnum}">
													${s.docnum} </a>
									</c:when>
											<c:when test="${signtype == 4}">
												<a
													href="${pageContext.request.contextPath}/sign/BizTripDocDetail.htm?docnum=${s.docnum}">
													${s.docnum} </a>
									</c:when>
											<c:when test="${signtype == 5}">
												<a
													href="${pageContext.request.contextPath}/sign/BizTripRepDetail.htm?docnum=${s.docnum}">
													${s.docnum} </a>
											</c:when>
										</c:choose>

								</font></td>
								<td width="80" class="title bb1 br1 p3007"><font
									color="#666666"> <c:choose>
											<c:when test="${signtype == 1}">
										기안서
									</c:when>
											<c:when test="${signtype == 2}">
										휴가계
									</c:when>
											<c:when test="${signtype == 3}">
										발주서
									</c:when>
											<c:when test="${signtype == 4}">
										출장 신청서
									</c:when>
											<c:when test="${signtype == 5}">
										출장 결과 보고서 
									</c:when>
										</c:choose>


								</font></td>
								<td width="100" class="title bb1 br1 p3007"><font
									color="#666666">${s.draftdate}</font></td>
								<td width="100" class="title bb1 br1 p3007"><font
									color="#666666">${s.refreshdate}</font></td>	
								<td width="100" class="title bb1 br1 p3007"><font
									color="#666666">${s.currsign}/${s.totalsign}</font></td>
								<td width="100" class="title bb1 br1 p3007"><font
									color="#666666">
									<c:choose>
										<c:when test="${s.signstate == 1}">
											결재완료										
										</c:when>
										<c:when test="${s.signstate == 2}">
											반려
										</c:when>
										<c:when test="${s.signstate == 0}">
											대기중
										</c:when>
									</c:choose>	
									</font></td>
								<td width="200" class="title bb1 p3007"><font
									color="#666666">${s.signtitle}</font></td>
							</tr>

						</c:forEach>

					</c:when>
					<c:otherwise>
						<tr height="60">
							<td class="p2007 bb1" colspan="7" align="center"><b>조회된
									문서가 없습니다.</b></td>
						</tr>
					</c:otherwise>
				</c:choose>
			</table>
		</div>
	</div>
</section>


