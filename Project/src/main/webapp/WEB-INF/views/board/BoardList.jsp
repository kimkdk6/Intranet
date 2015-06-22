<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
   //model.addAttribute("boardlist", boardlist);//게시판 이름 코드
   //model.addAttribute("boardlistlist", boardlistlist);//게시글 리스트
   //model.addAttribute("paging", pagingUtil);//게시글 리스트
   
   /*
   	해당게시판의 총 글수
   	현재 페이지
   	현재 페이지사이즈
   	
   
   */
   
%>

<!--전체외곽TB START-->
<table width="100%" height="100%" border="0" cellspacing="0"
   cellpadding="0" id="__top__">
   <tr>
      <td align="center" valign="top" bgcolor="#ffffff"
         style="border-left: 1px #b1b1b1 solid; border-right: 1px #b1b1b1 solid; border-bottom: 1px #b1b1b1 solid;">
         <!--컨텐츠구분TB START-->
         <table width="100%" height="100%" border="0" cellspacing="0"
            cellpadding="0" style="table-layout: fixed;">
            <tr>
               <td width="" align="left" valign="top">
                  <!--본문TB START-->
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                     <tr>
                        <td height="40">
                           <!--타이틀TB START-->
                           <table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <form name='searchBBS' method='post' action='/bbs/list.php'>
                                 <input type='hidden' name='bbs_id' value='0656'>
                                 <tr>
                                    <td width="520" align="left" class="title_txt" style="padding: 5px 0 0 14px;">${boardlist.boardname}
                                       <span class="stxt" style="color: #727272; font-weight: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;총 ${allcount}개 게시물 등록</span>
                                    </td>
                                    <td width="" align="right" style="padding: 0 12px 0 0;">
                                       <!--검색TB START-->
                                       <table border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                             <td><select name="searchkey" class="sel2">
                                                   <option value="sc">제목+내용</option>
                                                   <option value="subject">제목</option>
                                                   <option value="content">내용</option>
                                                   <option value="rname">작성자</option>
                                             </select></td>
                                             <td width="3"></td>
                                             <td><input type="text" name="searchval"
                                                class="input_search" style="width: 152;" value=""></td>
                                             <td width="3"></td>
                                             <td><input type="image"
                                                src="../resources/img/bt_search.gif"></td>
                                          </tr>
                                       </table> <!--검색TB END-->
                                    </td>
                                 </tr>
                              </form>
                           </table> <!--타이틀TB END-->
                        </td>
                     </tr>
                     <tr>
                        <td height="30" bgcolor="#ececec"
                           style="border-bottom: 1px #c9c9c9 solid; border-top: 1px #c9c9c9 solid; padding: 0 0 0 12px;">
                           <!--기능TB START-->
                           <table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                 <td align="left">
                                    <table border="0" cellspacing="0" cellpadding="0">
                                       <tr>
                                          <td><a href="${pageContext.request.contextPath}/board/BoardWrite.htm?boardcode=${boardlist.boardcode}"><img
                                                src="../resources/img/bt_write.gif"></a></td>
                                       </tr>
                                    </table>
                                 </td>
                                 <td align="right" style="padding: 0 12px 0 0;"><select
                                    name="select4" class="sel2"
                                    onChange="chgLcnt(this.options[this.selectedIndex].value)">
                                       <option value="10" selected>10개씩 보기</option>
                                       <option value="15">15개씩 보기</option>
                                       <option value="20">20개씩 보기</option>
                                       <option value="30">30개씩 보기</option>
                                       <option value="40">40개씩 보기</option>
                                       <option value="50">50개씩 보기</option>
                                       <option value="80">80개씩 보기</option>
                                       <option value="100">100개씩 보기</option>
                                 </select></td>
                              </tr>
                           </table> <!--기능TB END-->
                        </td>
                     </tr>
                     <tr>
                        <td>
                           <!--리스트TB START-->
                           <table width="100%" border="0" cellspacing="0" cellpadding="0"
                              class="tbl_board9">
                              <tr>
                                 <td width="55" height="20" align="center" style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 0px;" class="title">번호</td>
                                 <td width="" align="center" style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;" class="title">제목</td>
                                 <td width="100" align="center" style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;"class="title">작성자</td>
                                 <td width="90" align="center" style="border-bottom: 1px #eaeaea solid; border-right: 1px #eaeaea solid; padding: 3px 0 0 7px;" class="title"><font color="#666666">날짜</font><img src="../resources/img/list_up.gif" align="absmiddle"></td>
                                 <td width="80" align="center" style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 7px;"   class="title">조회수</td>
                              </tr>
                              
                              <c:forEach items="${boardlistlist}" var="bl" varStatus="bls">
                                 <tr bgcolor='#f9f9f9'>
                                    <td height="23" align="center" style="padding: 2px 0 0 0px; border-bottom: 1px #eaeaea solid;">
                                       ${bl.boardnum}
                                    </td>

                                    <td style="padding: 2px 0 0 7px; border-bottom: 1px #eaeaea solid;">
                                       <a href="${pageContext.request.contextPath}/board/BoardDetail.htm?boardnum=${bl.boardnum}">
                                          ${bl.boardtitle}
                                       </a>
                                    </td>
                                    <td align="center" style="padding: 2px 7px 0 7px; border-bottom: 1px #eaeaea solid;">
                                       
                                       
                                       <c:choose>
                                             <c:when test="${boardlist.boardcode==3}">
                                          Anonymous
                                       </c:when>
                                             <c:otherwise>
                                           ${bl.userid}
                                       </c:otherwise>
                                          </c:choose>
                                      
                                       
                                       
                                       
                                    </td>
                                    <td align="center" class="date" style="border-bottom: 1px #eaeaea solid;">
                                       ${bl.boarddate}
                                    </td>
                                    <td align="center" class="date" style="padding: 0px 7px 0 0; border-bottom: 1px #eaeaea solid;">
                                       ${bl.boardcount}
                                    </td>
                                 </tr>
                              </c:forEach>
                           </table> <!--리스트TB END-->
                        </td>
                     </tr>
                     <tr>
                        <td align="center" height="30" bgcolor="#ececec" style="border-bottom: 1px #c9c9c9 solid; border-top: 1px #c9c9c9 solid; padding: 0 0 0 12px;">
                    
   						   <c:choose>
   						   		<c:when test="${paging.start==1}">
   						   		
   						   		</c:when>
   						   		<c:otherwise>
   						   			<a href="${pageContext.request.contextPath}/board/BoardList.htm?boardcode=${boardlist.boardcode}&cpage=${paging.start-1}&pagesize=${pagesize}">이전</a>
   						   		</c:otherwise>
   						   
   						   </c:choose>	                 		
                           <c:forEach begin="${paging.start}" end="${paging.end}" var="page">
                           		
                           		<c:choose>
                           			<c:when test="${paging.currentPage==page}">
                           				<font color="#ff6600"><b>[${page}]</b></font>
                           			</c:when>
                           			<c:otherwise>
                           				<b><a href="${pageContext.request.contextPath}/board/BoardList.htm?boardcode=${boardlist.boardcode}&cpage=${page}&pagesize=${pagesize}">[${page}]</a></b>
                           			</c:otherwise>
                           		</c:choose>
                           		
                           		
                           </c:forEach>
                           
                              <c:choose>
   						   		<c:when test="${paging.end < paging.finalPage}">
   						   			<a href="${pageContext.request.contextPath}/board/BoardList.htm?boardcode=${boardlist.boardcode}&cpage=${paging.end+1}&pagesize=${pagesize}">다음</a>
   						   		</c:when>
   						   		<c:otherwise>
   						   			
   						   		</c:otherwise>
   						   
   						   </c:choose>	
                           
                        </td>
                     </tr>
                  </table> <!--본문TB END--> <!--본문TB END-->
               </td>
            </tr>
         </table> <!--컨텐츠구분TB END-->
      </td>
   </tr>
</table>