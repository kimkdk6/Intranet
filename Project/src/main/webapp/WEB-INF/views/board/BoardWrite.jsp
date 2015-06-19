<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<table width="100%" height="100%" border="0" cellspacing="0"
   cellpadding="0" id="__top__">
   <tr>
      <td align="center" valign="top" bgcolor="#ffffff"
         style="border-left: 1px #b1b1b1 solid; border-right: 1px #b1b1b1 solid; border-bottom: 1px #b1b1b1 solid;">
         <!--컨텐츠구분TB START-->
         <table width="100%" height="100%" border="0" cellspacing="0"
            cellpadding="0" style="table-layout: fixed;">
            <tr>
               <table width="100%" border="0" cellspacing="0" cellpadding="0" id="writeForm">
                  <tr>
                     <td height="40">
                        <!--타이틀TB START-->
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                           <form name='searchBBS' method='post' action='/bbs/list.php'>
                              <input type='hidden' name='bbs_id' value='0009'>
                              <tr>
                                 <td width="520" align="left" class="title_txt" style="padding: 5px 0 0 14px;">
                                   	${boardlist.boardname } 
<!--                                     <img src="../resources/img/title_divide.gif" align="absmiddle"> -->
                                 </td>
                              </tr>
                           </form>
                        </table> 
                        <!--타이틀TB END-->
                     </td>
                  </tr>
                  <tr>
                     <td height="30" bgcolor="#ececec" style="border-bottom: 1px #c9c9c9 solid; border-top: 1px #c9c9c9 solid; padding: 0 0 0 12px;">
                        <!--기능TB START-->
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                           <tr>
                              <td align="left">
                                 <table border="0" cellspacing="0" cellpadding="0">
                                       <tr>
                                          <td>
                                             <a href="${pageContext.request.contextPath}/board/BoardList.htm?boardcode=${boardlist.boardcode}">
                                                <img src="../resources/img/bt_list.gif">
                                             </a>
                                          </td>
                                          <td width="5"></td>
                                          <td>
                                             <a href="javascript:onwrite()">
                                                <img src="../resources/img/bt_write3.gif">
                                             </a>
                                          </td>
                                       </tr>
                                 </table>
                              </td>
                              <td align="right" style="padding: 0 12px 0 0;">&nbsp;</td>
                           </tr>
                        </table> 
                        <!--기능TB END-->
                     </td>
                  </tr>
                  <tr>
                     <td valign="top">
                        <form name="writeBBS" method="post" action="write_exe.php">
                           <!--리스트TB START-->
                           <table width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout: fixed;">
                              <tr height="30">
                                 <td width="100" height="30" align="left" bgcolor="#f6f6f6" class="m_sp" style="padding: 3px 0px 0px 12px; border-bottom: #eaeaea 1px solid; border-right: #eaeaea 1px solid;"><b>제목</b></td>
                                 <td width=""style="border-bottom: #eaeaea 1px solid; padding: 0px 11px 0px 11px;">
                                 <input type="text" id="t_subject" name="subject" class="input_type1" style="width: 100%" value=""></td>
                              </tr>
                              <tr height="30">
                                 <td align="left" bgcolor="#f6f6f6" class="m_sp" style="padding: 3px 0px 0px 12px; border-right: #eaeaea 1px solid; border-bottom: #eaeaea 1px solid;"><b>파일첨부</b></td>
                                 <td align="left" style="padding: 0px 11px 0px 11px; border-bottom: #eaeaea 1px solid;">
                                    <div id="u_w" style="display: none;">
                                       <input type="file" name="uploadify" id="uploadify" />
                                    </div>
                                 </td>
                              </tr>
                              <tr>
                                 <td bgcolor="#f6f6f6"></td>
                                 <td>
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                       <tr>
                                          <td id="fileQueue"></td>
                                       </tr>
                                    </table>
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="attachWrap">
                                       <tr>
                                          <td style="padding: 8px 8px 3px 8px;" id="attachList">
                                          </td>
                                       </tr>
                                    </table>
                                 </td>
                              </tr>
                              <tr>
                                 <td colspan="2" height="650" align="left" valign="top">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                       <tr>
                                          <td align="left" valign="top" style="padding: 5px;">
                                             <textarea id="content" name="content" title="higheditor_full" style="width: 100%; height: 610px;"></textarea>
                                          </td>
                                       </tr>
                                    </table>
                                 </td>
                              </tr>
                              
                           </table>
                        </form>
                        <!--리스트TB END-->
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
                                       <td>
                                          <a href="/bbs/list.php?bbs_id=0009">
                                             <img src="../resources/img/bt_list.gif">
                                          </a>
                                       </td>
                                       <td width="5">
                                       </td>
                                       <td>
                                          <a href="javascript:onwrite()">
                                             <img src="../resources/img/bt_write3.gif">
                                          </a>
                                       </td>
                                    </tr>
                                 </table>
                              </td>
                              <td align="right" style="padding: 0 12px 0 0;">&nbsp;</td>
                           </tr>
                        </table> <!--기능TB END-->
                     </td>
                  </tr>
                  <tr>
                     <td height="30"></td>
                  </tr>
               </table>
               <!--본문TB END-->
            </tr>
         </table> <!--컨텐츠구분TB END-->
      </td>
   </tr>
</table>