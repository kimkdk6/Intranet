<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script type="text/javascript">
 
	$(function(){
		 
		$('#').on("change", function() {
			$('#listtable').empty();
			// 부서이름 
			console.log("ename: "+$('#Ename1').val());
			$.ajax({
				url : "<%=request.getContextPath() %>/sign/.htm",
				dataType : "json",
				data : {ename : $('#Ename1').val()},
				success : function(data) {
					$('#listtable').append(
							"<tr>" +
							"<th style='width: 75px'>문서번호</th>"+
							"<th style='width: 75px'>문서종류</th>"+
							"<th style='width: 75px'>기안일</th>"+
							"<th style='width: 75px'>결재완료수</th>"+
							"<th style='width: 75px'>상태</th>"+
							"<th style='width: 75px'>제목</th>"+
							"</tr>"	
					);
					
					$.each(data.d, function(index, entry) {
						$('#listtable').append(
							  "<tr>" + 
	              			  "<td width='100' class='title bb1 br1 p0007'><font color='#666666'>" + entry.docnum + "</font></td>" +
	              			  "<td width='100' class='title bb1 br1 p0007'><font color='#666666'>" +  + "</font></td>" +
	              			  "<td width='100' class='title bb1 br1 p0007'><font color='#666666'>" + entry.ename + "</font></td>" +
	              			  "<td width='100' class='title bb1 br1 p0007'><font color='#666666'>" + entry.emptel + "</font></td>" +
	              			  "<td width='100' class='title bb1 br1 p0007'><font color='#666666'>" + entry.deptcode + "</font></td>" +
	              			  "<td width='100' class='title bb1 br1 p0007'><font color='#666666'>" + entry.teamcode + "</font></td>" +
	              			   
	              			 
	              			//  "<input type='button' id='detailbutton' value='상세보기' onclick=\"javascript:go_pop_search('..\/search\/SearchEmpDetail.htm?userid="+entry.userid+"')\" class='btn btn-back btn-xs'>" +
	              			//  "<a href='javascript:go_pop_search('${pageContext.request.contextPath}/search/SearchEmpDetail.htm')'></a>" +
	              			   
	              			  "</tr>"
	              			  
						)
						
					});
				},
				error: function (xhr,Options,thrownError) {
			    },
				
			});
		});
	});
</script>
<!DOCTYPE html>
<!--본문TB START-->
<section class="content-header">
	<h1>
		전자결재 <small>상신 문서함 페이지</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">전자결재</li>
	</ol>
</section>

<section class="content-header">
	<!-- /.box-header -->
	

	<!-- /.box-header -->
	<div class="box">
		<div class="box-header with-border">
			<h3 class="box-title">
				<a class="title_txt" href="SendsignsList.htm"> 올린 결재 문서함
					&gt; 상신문서</a>
			</h3>
			
		</div>
		<div class="box-body">
			<table class="table table-hover" id="listtable">
				<tr>
					<th style="width: 75px">문서번호</th>
					<th style="width: 75px">문서종류</th>
					<th style="width: 75px">기안일</th>
					<th style="width: 75px">결재완료수</th>
					<th style="width: 75px">상태</th>
					<!-- <th style="width: 75px">현재 결재자</th> -->
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
													href="${pageContext.request.contextPath}/sign/DraftingDetail.htm?docnum=${s.docnum}&cpage=${paging.currentPage}">
													${s.docnum} </a>
											</c:when>
											<c:when test="${signtype == 2}">
												<a
													href="${pageContext.request.contextPath}/sign/HolidayDocDetail.htm?docnum=${s.docnum}&cpage=${paging.currentPage}">
													${s.docnum} </a>
									</c:when>
											<c:when test="${signtype == 3}">
												<a
													href="${pageContext.request.contextPath}/sign/OrderDocDetail.htm?docnum=${s.docnum}&cpage=${paging.currentPage}">
													${s.docnum} </a>
									</c:when>
											<c:when test="${signtype == 4}">
												<a
													href="${pageContext.request.contextPath}/sign/BizTripDocDetail.htm?docnum=${s.docnum}&cpage=${paging.currentPage}">
													${s.docnum} </a>
									</c:when>
											<c:when test="${signtype == 5}">
												<a
													href="${pageContext.request.contextPath}/sign/BizTripRepDetail.htm?docnum=${s.docnum}&cpage=${paging.currentPage}">
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
								<%-- <td width="70" class="title bb1 br1 p3007"><font
									color="#666666">${s.signer1}</font></td> --%>
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
		<div class="box-footer clearfix" >
			<div align="center">
                    <ul class="pagination pagination-sm no-margin pull-right">
                      <c:choose>
   						   		<c:when test="${paging.start==1}">
   						   			  	 
   						   		</c:when>
   						   		<c:otherwise>
   						   			 <li><a href="${pageContext.request.contextPath}/sign/SendsignsList.htm?cpage=${paging.start-1}">이전</a></li> 
   						   		</c:otherwise>
   						</c:choose> 
                       
   					  <c:forEach begin="${paging.start}" end="${paging.end}" var="page">
                           		<c:choose>
                           			<c:when test="${paging.currentPage==page}">
                           				<li><a href="#"><font color="#ff6600"><b>${page}</b></font></a></li>
                           			</c:when>
                           			<c:otherwise>
                           				<li> <a href="${pageContext.request.contextPath}/sign/SendsignsList.htm?cpage=${page}">
                           				<b>${page}</b></a></li>
                           			</c:otherwise>
                           		</c:choose>
                           		
                           		
                     	 </c:forEach>
                     	 
                       	 <c:choose>
   						   		<c:when test="${paging.end < paging.finalPage}">
   						   			<li><a href="${pageContext.request.contextPath}/sign/SendsignsList.htm?cpage=${paging.end+1}">다음</a></li>
   						   		</c:when>
   						   		<c:otherwise>
   						   			 
   						   		</c:otherwise>
   						  </c:choose>
   						
                    </ul>
                    </div>
            </div>
	</div>
</section>


