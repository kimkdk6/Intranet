<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<!--본문TB START-->
<c:choose>
	<c:when test="${param.type == 1}">
		<c:set var="pagetitle" value="결재 완료"/>
	</c:when>
	<c:when test="${param.type == 2}">
		<c:set var="pagetitle" value="미결재"/>
	</c:when>
</c:choose>
<section class="content-header">
	<h1>
		전자결재 <small>${pagetitle} 문서 페이지</small>
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
				<a class="title_txt" href="/approval/proc_wait_list.php"> 받은 결재 문서함
					&gt; ${pagetitle} 문서</a>
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
					<c:when test="${fn:length(signlist) > 0}">
						<c:forEach items="${signlist}" var="n">
							<c:set var="signtype" value="${n.signtype}" />
							<tr>
								<td width="100" class="title bb1 br1 p0007"><font
									color="#666666"> <c:choose>
											<c:when test="${signtype == 1}">
												<a
													href="${pageContext.request.contextPath}/sign/DraftingDetail.htm?docnum=${n.docnum}&cpage=${paging.currentPage}">
													${n.docnum} </a>
											</c:when>
											<c:when test="${signtype == 2}">
												<a
													href="${pageContext.request.contextPath}/sign/HolidayDocDetail.htm?docnum=${n.docnum}&cpage=${paging.currentPage}">
													${n.docnum} </a>
									</c:when>
											<c:when test="${signtype == 3}">
												<a
													href="${pageContext.request.contextPath}/sign/OrderDocDetail.htm?docnum=${n.docnum}&cpage=${paging.currentPage}">
													${n.docnum} </a>
									</c:when>
											<c:when test="${signtype == 4}">
												<a
													href="${pageContext.request.contextPath}/sign/BizTripDocDetail.htm?docnum=${n.docnum}&cpage=${paging.currentPage}">
													${n.docnum} </a>
									</c:when>
											<c:when test="${signtype == 5}">
												<a
													href="${pageContext.request.contextPath}/sign/BizTripRepDetail.htm?docnum=${n.docnum}&cpage=${paging.currentPage}">
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
			<div class="box-footer clearfix" >
			<div align="center">
                    <ul class="pagination pagination-sm no-margin pull-right">
                      <c:choose>
   						   		<c:when test="${paging.start==1}">
   						   			  	 
   						   		</c:when>
   						   		<c:otherwise>
   						   			 <li><a href="${pageContext.request.contextPath}/sign/ReceiveSignList.htm?cpage=${paging.start-1}&type=${param.type}">이전</a></li> 
   						   		</c:otherwise>
   						</c:choose> 
                       
   					  <c:forEach begin="${paging.start}" end="${paging.end}" var="page">
                           		<c:choose>
                           			<c:when test="${paging.currentPage==page}">
                           				<li><a href="#"><font color="#ff6600"><b>${page}</b></font></a></li>
                           			</c:when>
                           			<c:otherwise>
                           				<li> <a href="${pageContext.request.contextPath}/sign/ReceiveSignList.htm?cpage=${page}&type=${param.type}">
                           				<b>${page}</b></a></li>
                           			</c:otherwise>
                           		</c:choose>
                           		
                           		
                     	 </c:forEach>
                     	 
                       	 <c:choose>
   						   		<c:when test="${paging.end < paging.finalPage}">
   						   			<li><a href="${pageContext.request.contextPath}/sign/ReceiveSignList.htm?cpage=${paging.end+1}&type=${param.type}">다음</a></li>
   						   		</c:when>
   						   		<c:otherwise>
   						   			 
   						   		</c:otherwise>
   						  </c:choose>
   						
                    </ul>
                    </div>
            </div>
		</div>
	</div>

	
</section>


