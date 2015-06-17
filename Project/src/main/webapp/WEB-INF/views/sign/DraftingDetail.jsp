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
                        style="padding: 5px 0 0 14px;">받은 결재 문서함 &gt; 미결재 문서 &gt;
                        문서조회</td>
                     <td width="" align="right" style="padding: 0 12px 0 0;">&nbsp;</td>
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
                                 <td><a href=""><img src="/img/approval/bt_list.gif"></a></td>
                                 <td width="5"></td>
                                 <td><a href="javascript:_docprint('9759')"><img
                                       src="/img/approval/bt_print.gif"></a></td>
                              </tr>
                           </tbody>
                        </table>
                     </td>
                     <td align="right" style="padding: 0 12px 0 0;">
                        <table border="0" cellspacing="0" cellpadding="0">
                           <tbody>
                              <tr>
                                 <td><a href="javascript:myApp('F')"><img
                                       src="/img/approval/bt_approval.gif"></a></td>
                                 <td width="5"></td>
                                 <td><a href="javascript:myApp('S')"><img
                                       src="/img/approval/bt_standby.gif"></a></td>
                                 <td width="5"></td>
                                 <td><a href="javascript:myApp('R')"><img
                                       src="/img/approval/bt_return.gif"></a></td>
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
         <td align="center" valign="top" style="padding: 19px 15px 19px 15px;">
            
            <table width="100%" border="0" cellspacing="0" cellpadding="0"
               class="tbl_appdoc">
               <tbody>
                  <tr>
                     <td class="dochead" align="center" valign="top">
                        <table width="100%" border="0" frame="void" cellspacing="0"
                           cellpadding="0">
                           <tbody>
                              <tr>
                                 <td width="120"></td>
                                 <td class="dochead" align="center" valign="top">기안서</td>
                                 <td width="120" align="right" valign="bottom"><a
                                    href="javascript:" rel="proc_s" onclick="mod_proc();"><img
                                       src="/img/webmail/bt_modify3.gif"></a><a
                                    href="javascript:" rel="proc_f" style="display: none;"
                                    onclick="cancel_proc();"><img
                                       src="/img/webmail/bt_cancel.gif"></a>&nbsp;<a
                                    href="javascript:" rel="proc_f" style="display: none;"
                                    onclick="save_proc();"><img
                                       src="/img/webmail/bt_save.gif"></a></td>
                              </tr>
                           </tbody>
                        </table>
                     </td>
                  </tr>
                  <tr>
                     <td align="center" valign="top">

                        <table width="100%" border="0" class="tbl_c9c9c9"
                           cellspacing="0" cellpadding="0" style="table-layout: fixed;">
                           <tbody>
                           
                              <tr>
                                 <td width="95" height="30" align="center" bgcolor="#f6f6f6"
                                    class="m_sp"><b>문서번호</b></td>
                                 <td width="" style="padding: 0 0 0 12px;">${sign.docnum}</td>
                                 <td width="365" rowspan="6" align="center" valign="top"
                                    style="padding: 0; border-bottom: 1px #afafaf solid;">

                                    <table width="100%" cellpadding="0" cellspacing="0"
                                       class="tbl_c9c9c9" style="table-layout: fixed;"
                                       rel="proc_s">
                                       <tbody>
                                          <tr height="20" align="center" bgcolor="#f6f6f6">
                                             <td width="7%" rowspan="4"><b>결<br>
                                                <br>
                                                <br>재
                                             </b></td>
                                             <td width="19%"
                                                style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;">기안자</td>
                                             <td width="19%"
                                                style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;">과장
                                                test</td>
                                             <td width="19%"
                                                style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"></td>
                                             <td width="19%"
                                                style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"></td>
                                             <td width="19%"
                                                style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"></td>
                                          </tr>
                                          <tr height="70" align="center">
                                             <td style="border-bottom: 1px #eaeaea solid;">
                                                <table width="55" class="noborder" cellspacing="0"
                                                   cellpadding="0">
                                                   <tbody>
                                                      <tr>
                                                         <td height="42" align="center" valign="middle"
                                                            background="/img/approval/stamp_bg.gif"
                                                            style="background-repeat: no-repeat; color: #d30000; font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
                                                            a1</td>
                                                      </tr>
                                                      <tr>
                                                         <td height="20" align="center">a1</td>
                                                      </tr>
                                                   </tbody>
                                                </table>
                                             </td>
                                             <td style="border-bottom: 1px #eaeaea solid;">
                                                <table width="55" class="noborder" cellspacing="0"
                                                   cellpadding="0">
                                                   <tbody>
                                                      <tr>
                                                         <td height="42" align="center" valign="middle"
                                                            style="background-repeat: no-repeat; color: #d30000; font-size: 11px; letter-spacing: -1px; padding: 3px 0 0 0;">
                                                         </td>
                                                      </tr>
                                                      <tr>
                                                         <td height="20" align="center">a2</td>
                                                      </tr>
                                                   </tbody>
                                                </table>
                                             </td>
                                             <td style="border-bottom: 1px #eaeaea solid;"></td>
                                             <td style="border-bottom: 1px #eaeaea solid;"></td>
                                             <td style="border-bottom: 1px #eaeaea solid;"></td>
                                          </tr>
                                          <tr height="20" align="center" bgcolor="#f6f6f6">
                                             <td
                                                style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"></td>
                                             <td
                                                style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"></td>
                                             <td
                                                style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"></td>
                                             <td
                                                style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"></td>
                                             <td
                                                style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"></td>
                                          </tr>
                                          <tr height="70" align="center">
                                             <td></td>
                                             <td></td>
                                             <td></td>
                                             <td></td>
                                             <td></td>
                                          </tr>
                                       </tbody>
                                    </table>

                                    <form name="modProc" method="post"
                                       action="/approval/execute/doc_mod_proc.php">
                                       <input type="hidden" name="docmgno" value="9759"> <input
                                          type="hidden" name="rtn_url"
                                          value="/approval/proc_wait_view.php?rtn_url=&amp;docmgno=9759">
                                       <table width="100%" class="tbl_c9c9c9" cellpadding="0"
                                          cellspacing="0" rel="proc_f" style="display: none;">
                                          <tbody>
                                             <tr height="20" align="center" bgcolor="#f6f6f6">
                                                <td width="7%" rowspan="4"><b>결<br>
                                                   <br>
                                                   <br>재
                                                </b></td>
                                                <td width="19%"
                                                   style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;">기안자</td>
                                                <input type="hidden" name="docproc[]" id="proc0"
                                                   value="3238">
                                                <td width="19%"
                                                   style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
                                                   id="dept0">과장 test</td>
                                                <input type="hidden" name="docproc[]" id="proc1"
                                                   value="">
                                                <td width="19%"
                                                   style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
                                                   id="dept1"></td>
                                                <input type="hidden" name="docproc[]" id="proc2"
                                                   value="">
                                                <td width="19%"
                                                   style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
                                                   id="dept2"></td>
                                                <input type="hidden" name="docproc[]" id="proc3"
                                                   value="">
                                                <td width="19%"
                                                   style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
                                                   id="dept3"></td>
                                             </tr>
                                             <tr height="70" align="center">
                                                <td style="border-bottom: 1px #eaeaea solid;">a1</td>
                                                <td style="border-bottom: 1px #eaeaea solid;">a2</td>
                                                <td style="border-bottom: 1px #eaeaea solid;">
                                                   <div id="divCan1" style="display: none">
                                                      <span id="procName1"></span><br>
                                                      <a href="javascript:procCancel('1')"><img
                                                         src="/img/approval/bt_cancel.gif"></a>
                                                   </div>
                                                   <div id="divSel1" style="display: block">
                                                      <a href="javascript:"><img class="bt_procsel"
                                                         value="1" src="/img/approval/bt_sel.gif"></a>
                                                   </div>
                                                </td>
                                                <td style="border-bottom: 1px #eaeaea solid;">
                                                   <div id="divCan2" style="display: none">
                                                      <span id="procName2"></span><br>
                                                      <a href="javascript:procCancel('2')"><img
                                                         src="/img/approval/bt_cancel.gif"></a>
                                                   </div>
                                                   <div id="divSel2" style="display: block">
                                                      <a href="javascript:"><img class="bt_procsel"
                                                         value="2" src="/img/approval/bt_sel.gif"></a>
                                                   </div>
                                                </td>
                                                <td style="border-bottom: 1px #eaeaea solid;">
                                                   <div id="divCan3" style="display: none">
                                                      <span id="procName3"></span><br>
                                                      <a href="javascript:procCancel('3')"><img
                                                         src="/img/approval/bt_cancel.gif"></a>
                                                   </div>
                                                   <div id="divSel3" style="display: block">
                                                      <a href="javascript:"><img class="bt_procsel"
                                                         value="3" src="/img/approval/bt_sel.gif"></a>
                                                   </div>
                                                </td>
                                             </tr>
                                             <tr height="20" align="center" bgcolor="#f6f6f6">
                                                <input type="hidden" name="docproc[]" id="proc4"
                                                   value="">
                                                <td
                                                   style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
                                                   id="dept4"></td>
                                                <input type="hidden" name="docproc[]" id="proc5"
                                                   value="">
                                                <td
                                                   style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
                                                   id="dept5"></td>
                                                <input type="hidden" name="docproc[]" id="proc6"
                                                   value="">
                                                <td
                                                   style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
                                                   id="dept6"></td>
                                                <input type="hidden" name="docproc[]" id="proc7"
                                                   value="">
                                                <td
                                                   style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
                                                   id="dept7"></td>
                                                <input type="hidden" name="docproc[]" id="proc8"
                                                   value="">
                                                <td
                                                   style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
                                                   id="dept8"></td>
                                             </tr>
                                             <tr height="70" align="center">
                                                <td>
                                                   <div id="divCan4" style="display: none">
                                                      <span id="procName4"></span><br>
                                                      <a href="javascript:procCancel('4')"><img
                                                         src="/img/approval/bt_cancel.gif"></a>
                                                   </div>
                                                   <div id="divSel4" style="display: block">
                                                      <a href="javascript:"><img class="bt_procsel"
                                                         value="4" src="/img/approval/bt_sel.gif"></a>
                                                   </div>
                                                </td>
                                                <td>
                                                   <div id="divCan5" style="display: none">
                                                      <span id="procName5"></span><br>
                                                      <a href="javascript:procCancel('5')"><img
                                                         src="/img/approval/bt_cancel.gif"></a>
                                                   </div>
                                                   <div id="divSel5" style="display: block">
                                                      <a href="javascript:"><img class="bt_procsel"
                                                         value="5" src="/img/approval/bt_sel.gif"></a>
                                                   </div>
                                                </td>
                                                <td>
                                                   <div id="divCan6" style="display: none">
                                                      <span id="procName6"></span><br>
                                                      <a href="javascript:procCancel('6')"><img
                                                         src="/img/approval/bt_cancel.gif"></a>
                                                   </div>
                                                   <div id="divSel6" style="display: block">
                                                      <a href="javascript:"><img class="bt_procsel"
                                                         value="6" src="/img/approval/bt_sel.gif"></a>
                                                   </div>
                                                </td>
                                                <td>
                                                   <div id="divCan7" style="display: none">
                                                      <span id="procName7"></span><br>
                                                      <a href="javascript:procCancel('7')"><img
                                                         src="/img/approval/bt_cancel.gif"></a>
                                                   </div>
                                                   <div id="divSel7" style="display: block">
                                                      <a href="javascript:"><img class="bt_procsel"
                                                         value="7" src="/img/approval/bt_sel.gif"></a>
                                                   </div>
                                                </td>
                                                <td>
                                                   <div id="divCan8" style="display: none">
                                                      <span id="procName8"></span><br>
                                                      <a href="javascript:procCancel('8')"><img
                                                         src="/img/approval/bt_cancel.gif"></a>
                                                   </div>
                                                   <div id="divSel8" style="display: block">
                                                      <a href="javascript:"><img class="bt_procsel"
                                                         value="8" src="/img/approval/bt_sel.gif"></a>
                                                   </div>
                                                </td>
                                             </tr>
                                          </tbody>
                                       </table>
                                    </form>

                                 </td>
                              </tr>
                              <tr>
                                 <td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"><b>문서종류</b></td>
                                 <td style="padding: 0 0 0 12px;">기안서</td>
                              </tr>
                              <tr>
                                 <td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"><b>문서상태</b></td>
                                 <td style="padding: 0 0 0 12px;">
                                 	<c:choose>
                                 		<c:when test="${sign.signstate == 0}">
                                 			결재 대기중
                                 		</c:when>
                                 		<c:when test="${sign.signstate == 1}">
                                 			결재 완료 
                                 		</c:when>
                                 		<c:when test="${sign.signstate == 2}">
                                 			반려
                                 		</c:when>
                                 	</c:choose>
                                 </td>
                              </tr>
                              <tr>
                                 <td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"><b>부서</b></td>
                                 <td style="padding: 0 0 0 12px;">${sign.dept}</td>
                              </tr>
                              <tr>
                                 <td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"><b>기안자</b></td>
                                 <td style="padding: 0 0 0 12px;"> ${sign.team} ${sign.ename} ${sign.posname}</td>
                              </tr>
                              <tr>
                                 <td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"
                                    style="padding: 7px 0 7px 0"><b>기안일</b></td>
                                 <td style="padding: 7px 0 7px 12px;">${sign.draftdate }</td>
                              </tr>
                              <tr>
                                 <td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"><b>수신부서</b></td>
                                 <td colspan="2" style="padding: 3px 0 3px 12px;">
                                    <table class="noborder" cellspacing="0" cellpadding="0">
                                       <tbody>
                                          <tr height="18">
                                             <td><a href="javascript:" rel="dept_s"
                                                onclick="mod_ref   ('dept');"><img
                                                   src="/img/webmail/bt_modify3.gif"></a><a
                                                href="javascript:" rel="dept_f" style="display: none;"
                                                onclick="cancel_ref('dept');"><img
                                                   src="/img/webmail/bt_cancel.gif"></a></td>
                                             <td style="padding: 5px 0 0 5px;" rel="dept_s"></td>
                                             <td rel="dept_f"
                                                style="display: none; padding-left: 5px;"><input
                                                type="hidden" id="_deptkeys" name="deptkeys" value="">
                                                <input id="_depttext" name="depttext" type="text"
                                                class="input_type2" style="width: 450px;" readonly="">
                                                <a href="javascript:"><img id="bt_deptsel"
                                                   src="/img/approval/bt_recieve1.gif" align="absmiddle"></a>
                                             </td>
                                             <td rel="dept_f"
                                                style="display: none; padding-left: 5px;"><a
                                                href="javascript:" onclick="save_ref  ('dept');"><img
                                                   src="/img/webmail/bt_save.gif"></a></td>
                                          </tr>
                                       </tbody>
                                    </table>
                                 </td>
                              </tr>
                              <tr>
                                 <td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"><b>승인
                                       전 참조</b></td>
                                 <td colspan="2" style="padding: 3px 0 3px 12px;">
                                    <table class="noborder" cellspacing="0" cellpadding="0">
                                       <tbody>
                                          <tr height="18">
                                             <td><a href="javascript:" rel="als_s"
                                                onclick="mod_ref   ('als');"><img
                                                   src="/img/webmail/bt_modify3.gif"></a><a
                                                href="javascript:" rel="als_f" style="display: none;"
                                                onclick="cancel_ref('als');"><img
                                                   src="/img/webmail/bt_cancel.gif"></a></td>
                                             <td style="padding: 5px 0 0 5px;" rel="als_s"></td>
                                             <td rel="als_f" style="display: none; padding-left: 5px;">
                                                <input type="hidden" id="_alskeys" name="alskeys"
                                                value=""> <input id="_alstext" name="alstext"
                                                type="text" class="input_type2" style="width: 450px;"
                                                readonly=""> <a href="javascript:"><img
                                                   id="bt_alssel" src="/img/approval/bt_refer1.gif"
                                                   align="absmiddle"></a>
                                             </td>
                                             <td rel="als_f" style="display: none; padding-left: 5px;"><a
                                                href="javascript:" onclick="save_ref  ('als');"><img
                                                   src="/img/webmail/bt_save.gif"></a></td>
                                          </tr>
                                       </tbody>
                                    </table>
                                 </td>
                              </tr>
                              <tr>
                                 <td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"><b>승인
                                       후 참조</b></td>
                                 <td colspan="2" style="padding: 3px 0 3px 12px;">
                                    <table class="noborder" cellspacing="0" cellpadding="0">
                                       <tbody>
                                          <tr height="18">
                                             <td><a href="javascript:" rel="ref_s"
                                                onclick="mod_ref   ('ref');"><img
                                                   src="/img/webmail/bt_modify3.gif"></a><a
                                                href="javascript:" rel="ref_f" style="display: none;"
                                                onclick="cancel_ref('ref');"><img
                                                   src="/img/webmail/bt_cancel.gif"></a></td>
                                             <td style="padding: 5px 0 0 5px;" rel="ref_s"></td>
                                             <td rel="ref_f" style="display: none; padding-left: 5px;">
                                                <input type="hidden" id="_refkeys" name="refkeys"
                                                value=""> <input id="_reftext" name="reftext"
                                                type="text" class="input_type2" style="width: 450px;"
                                                readonly=""> <a href="javascript:"><img
                                                   id="bt_refsel" src="/img/approval/bt_refer1.gif"
                                                   align="absmiddle"></a>
                                             </td>
                                             <td rel="ref_f" style="display: none; padding-left: 5px;"><a
                                                href="javascript:" onclick="save_ref  ('ref');"><img
                                                   src="/img/webmail/bt_save.gif"></a></td>
                                          </tr>
                                       </tbody>
                                    </table>
                                 </td>
                              </tr>
                              <tr>
                                 <td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"><b>제목</b></td>
                                 <td colspan="2" style="padding: 7px 0 7px 12px;">${sign.signtitle }</td>
                              </tr>
                           </tbody>
                        </table>

                        <table width="100%" border="0" class="tbl_c9c9c9"
                           cellspacing="0" cellpadding="0">
                           <tbody>
                              <tr>
                                 <td height="350" align="left" valign="top"
                                    style="padding: 8px 8px 5px 8px; border-top: 0">${draftingdoc.dracontent}
                                 </td>
                              </tr>

                              <tr>
                                 <td align="left" valign="top" class="m_sp"
                                    style="padding: 8px 8px 8px 8px;">2015-06-17 10:08:50 -
                                    a1 상신</td>
                              </tr>
                           </tbody>
                        </table>
                     </td>
                  </tr>
               </tbody>
            </table>

            
      <tr>
         <td height="30"></td>
      </tr>
   </tbody>
