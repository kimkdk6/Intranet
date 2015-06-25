<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<!--본문TB START-->
<section class="content-header">
	<h1>
		전자결재 메인 <small>전자결재 메인 페이지</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">전자결재</li>
	</ol>
</section>

<section class="content-header">
	<!-- /.box-header -->
	<div class="box">
		<div class="box-header with-border">
			<h3 class="box-title">
				<a class="title_txt" href="ReceiveSignList.htm?type=2"> 결재문서함
					&gt; 미결재 문서</a>
			</h3>
		</div>
		<div class="box-body">
			<table class="table table-hover">
				<tr>
					<th style="width: 75px">문서번호</th>
					<th style="width: 75px">문서종류</th>
					<th style="width: 75px">기안부서</th>
					<th style="width: 75px">기안자</th>
					<th style="width: 75px">기안일</th>
					<th style="width: 75px">결재완료수</th>
					<th style="width: 75px">제목</th>

				</tr>

				<c:choose>
					<c:when test="${fn:length(unsignlist) > 0}">
						<c:forEach items="${unsignlist}" var="n">
							<c:set var="signtype" value="${n.signtype}" />
							<tr>
								<td width="100" class="title bb1 br1 p0007"><font
									color="#666666"> <c:choose>
											<c:when test="${signtype == 1}">
												<a
													href="${pageContext.request.contextPath}/sign/DraftingDetail.htm?docnum=${n.docnum}">
													${n.docnum} </a>
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
												<a
													href="${pageContext.request.contextPath}/sign/BizTripRepDetail.htm">
													${n.docnum} </a>
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
									color="#666666">${n.dept}</font></td>
								<td width="100" class="title bb1 br1 p3007"><font
									color="#666666">${n.team} ${n.ename} ${n.posname}</font></td>
								<td width="100" class="title bb1 br1 p3007"><font
									color="#666666">${n.draftdate}</font></td>
								<td width="70" class="title bb1 br1 p3007"><font
									color="#666666">${n.currsign}/${n.totalsign}</font></td>
								<td width="200" class="title bb1 p3007"><font
									color="#666666">${n.signtitle}</font></td>
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

	<!-- /.box-header -->
	<div class="box">
		<div class="box-header with-border">
			<h3 class="box-title">
				<a class="title_txt" href="SendsignsList.htm"> 개인문서함
					&gt; 상신문서</a>
			</h3>
		</div>
		<div class="box-body">
			<table class="table table-hover">
				<tr>
					<th style="width: 75px">문서번호</th>
					<th style="width: 75px">문서종류</th>
					<th style="width: 75px">기안일</th>
					<th style="width: 75px">결재완료수</th>
					<th style="width: 75px">상태</th>
					<th style="width: 75px">현재 결재자</th>
					<th style="width: 75px">제목</th>
				</tr>
				<c:choose>
					<c:when test="${fn:length(sendsignlist) > 0}">
						<c:forEach items="${sendsignlist}" var="s">
							<c:set var="signtype" value="${s.signtype}" />
							<tr>
								<td width="100" class="title bb1 br1 p0007"><font
									color="#666666"> <c:choose>
											<c:when test="${signtype == 1}">
												<a
													href="${pageContext.request.contextPath}/sign/DraftingDetail.htm?docnum=${s.docnum}">
													${s.docnum} </a>
											</c:when>
											<c:when test="${signtype == 2}">
										휴가계 ${s.docnum} 
									</c:when>
											<c:when test="${signtype == 3}">
										발주서 ${s.docnum} 
									</c:when>
											<c:when test="${signtype == 4}">
										출장 신청서 ${s.docnum} 
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
								<td width="70" class="title bb1 br1 p3007"><font
									color="#666666">${s.signer1}</font></td>
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


