<%@page import="dto_vo.Emp.Emp"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Date d1 = new Date();
	SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
	String strdate = sdf1.format(d1);
	System.out.println("오늘의 날짜: "+strdate);
	
%>

<!DOCTYPE html>
<section class="content-header">
   <h1>
      전자결재 작성 <small>전자결재 작성 페이지</small>
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
          <a class="title_txt" href="DraftingReg.htm">
                결재문서 작성   &gt; 기안서</a>        
      </h3>
   </div>
   <div class="box-body">
<form action="" method="post" >
<input type="hidden" id="signtype" name="signtype" value="1">
<input type="hidden" id="dept" name="dept" value="${sessionScope.dept}">
<input type="hidden" id="team" name="team" value="${sessionScope.team}">
<input type="hidden" id="ename" name="ename" value="${sessionScope.myemp.ename}">
<input type="hidden" id="posname" name="posname" value="${sessionScope.pos}">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
   <tbody>
      <tr>
         <td height="40">
            <!--타이틀TB START-->
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
               <tbody>
                  <tr>
                     <td width="360" align="center" class="title_txt"
                        style="padding: 5px 0 0 14px; font-size: 30px">기안서</td>
                     <!-- <td width="" align="right" style="padding: 0 12px 0 0;">&nbsp;</td> -->
                  </tr>
               </tbody>
            </table> <!--타이틀TB END-->
         </td>
      </tr>
      
      <tr>
         <td align="center" valign="top" style="padding: 19px 15px 19px 15px;">
         
            <!-- 결재자 메뉴 띄우는 기능 -->
            <!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
            <script src="//code.jquery.com/jquery-1.10.2.js"></script>
            <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> -->
            

            <!-- ck 에디터 -->
            <!-- <script type="text/javascript" src="../resources/plugins/ckeditor/ckeditor.js"></script> -->
            <!-- ck 에디터 끝 -->
            
            <script language="javascript">
               
               /* 결재자 메뉴 띄우는 기능 */
               // ============= 첫번째 ======================
               $(function() {
            	   var dialog;
            	   var dialog1;
            	   var dialog2;
            	   var dialog3;
            	 
            	   $("#cancel").hide();
            	   dialog = $("#dialog").dialog({
                        autoOpen : false,
                        width : 500,
                        show : {
                           effect : "blind",
                           duration : 1000
                        },
                        
                        hide : {
                           /*  effect : "explode",  */
                           duration : 1000
                        },
                        
                        buttons : {
							"추가" : addUser,
							Cancel : function() {
								dialog.dialog("close");
							}
						}
                     });
            	    
            	    
            	    
            	    
                  function addUser() {
                     var valid = true;

                     if (valid) {
                    	 $("#opener").hide();
                    	 $("#cancel").show();
                    	 $("#users").prepend(
									"<td id='signer1' name='signer1'>" + $('input[name="name"]:checked').val() + 
									"</td>");  
                    	
                        dialog.dialog("close");
                     }
                     
                     $("#cancel").click(function(){
                    	 $(this).hide('fast',function(){
                    		 $("#signer1").remove();
                    		 $("#opener").show();
                    	 });
                    	 
                    	 
                      });
                     
                     return valid;
                     
                  }
                  
                  // ============== 두번째 =====================
                  dialog1 = $("#dialog1").dialog({
                     autoOpen : false,
                     width : 500,
                     show : {
                        effect : "blind",
                        duration : 1000
                     },
                     hide : {
                        /* effect : "explode", */
                        duration : 1000
                     },
                     buttons : {
							"추가" : addUser1,
							Cancel : function() {
								dialog1.dialog("close");
							}
						}
                  });
                  
                  function addUser1() {
                      var valid = true;

                      if (valid) {
                     	 $("#users1").replaceWith(
 									"<td>" + $('input[name="name1"]:checked').val() + "</td>");
                         dialog1.dialog("close");
                      }
                      return valid;
                  }
                  
                  // ================ 세번째 ========================
                  dialog2 = $("#dialog2").dialog({
                     autoOpen : false,
                     width : 500,
                     show : {
                        effect : "blind",
                        duration : 1000
                     },
                     hide : {
                        /* effect : "explode", */
                        duration : 1000
                     },
                     buttons : {
                    	"추가" : addUser2,
						Cancel : function() {
							dialog2.dialog("close");
						}
					}
                  });
                  
                  function addUser2() {
                      var valid = true;

                      if (valid) {
                     	 $("#users2").html(
 									"<td>" + $('input[name="name2"]:checked').val() + "</td>");
                         dialog2.dialog("close");
                      }
                      return valid;
                  }
                  
                  // ================ 세번째 ===================
                  dialog3 = $("#dialog3").dialog({
                     autoOpen : false,
                     width : 500,
                     show : {
                        effect : "blind",
                        duration : 1000
                     },
                     hide : {
                        /* effect : "explode", */
                        duration : 1000
                     },
                     buttons : {
                    	"추가" : addUser3,
						Cancel : function() {
							dialog3.dialog("close");
						}
					}
                  });
                  
                  function addUser3() {
                      var valid = true;

                      if (valid) {
                     	 $("#users3").html(
 									"<td>" + $('input[name="name3"]:checked').val() + "</td>");
                         dialog3.dialog("close");
                      }
                      return valid;
                  }

                  $("#opener").click(function() {
                     $("#dialog").dialog("open");
                  });
                  $("#opener1").click(function() {
                     $("#dialog1").dialog("open");
                  });
                  $("#opener2").click(function() {
                     $("#dialog2").dialog("open");
                  });
                  $("#opener3").click(function() {
                     $("#dialog3").dialog("open");
                  });
               });
               /* 결재자 메뉴 띄우는 기능 끝*/
               
               /* 결재자 트리 띄우는 기능 */
               $(function() {
                  $("#accordion").accordion({
                     heightStyle : "content"
                  });
               });
               $(function() {
                  $("#accordion1").accordion({
                     heightStyle : "content"
                  });
               });
               $(function() {
                  $("#accordion2").accordion({
                     heightStyle : "content"
                  });
               });
               $(function() {
                  $("#accordion3").accordion({
                     heightStyle : "content"
                  });
               });
               /* 결재자 트리 띄우는 기능 끝*/

               /* ck 에디터 기능 */
               $(function() {
                  CKEDITOR
                        .replace(
                              'ckeditor',
                              {//해당 이름으로 된 textarea에 에디터를 적용
                                 width : '100%',
                                 height : '400px',
                                 filebrowserImageUploadUrl : '/community/imageUpload' //여기 경로로 파일을 전달하여 업로드 시킨다.
                              });

                  CKEDITOR.on('dialogDefinition', function(ev) {
                     var dialogName = ev.data.name;
                     var dialogDefinition = ev.data.definition;

                     switch (dialogName) {
                     case 'image': //Image Properties dialog
                        //dialogDefinition.removeContents('info');
                        dialogDefinition.removeContents('Link');
                        dialogDefinition.removeContents('advanced');
                        break;
                     }
                  });

               });
               /* ck 에디터 기능 끝*/
            </script>
            
            
               <tbody>
                  <tr>
                     <td align="center" valign="top">
                        <table width="100%" class="tbl_c9c9c9" cellspacing="0" cellpadding="0" style="table-layout: fixed;">
                           <tbody>
                              <tr>
                                 <td width="95" height="30" align="center" bgcolor="#f6f6f6" class="m_sp">
                                    <b>문서번호</b>
                                 </td>
                                 <td width="" style="padding: 0 0 0 12px;"></td>
                                 <td width="365" rowspan="6" align="center" valign="top" style="padding: 0; border-bottom:1px #afafaf solid;">

                                    <table width="100%" class="tbl_c9c9c9" cellpadding="0" cellspacing="0">
                                       <tbody>
                                          <tr height="10" align="center" bgcolor="#f6f6f6">
                                             <td width="7%" rowspan="4"><b>결<br> <br><br>재</b></td>
                                             <td width="19%"
                                                style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;">기안자</td>
                                             <td width="19%"
                                                style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
                                                id="dept0"></td>
                                             <td width="19%"
                                                style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
                                                id="dept1"></td>
                                             <td width="19%"
                                                style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
                                                id="dept2"></td>
                                             <td width="19%"
                                                style="border-bottom: 1px #eaeaea solid; padding: 3px 0 0 0;"
                                                id="dept3"></td>
                                          </tr>
                                          <tr height="70" align="center">
                                             <td style="border-bottom: 1px #eaeaea solid;">${sessionScope.myemp.ename}</td>
                                             
                                             <td id="users" style="border-bottom: 1px #eaeaea solid;">
                                                <div id="dialog" title="결재자 지정하기">
                                                      <div id="accordion">
                                                         <c:forEach items="${dept}" var="d">
                                                            <h3>${d.deptname}</h3>
                                                            <div>
                                                               <c:forEach items="${emp}" var="e">
                                                                  <c:if test="${d.deptcode == e.deptcode}">
                                                                     <c:forEach items="${team}" var="t">
                                                                        <c:if test="${t.teamcode == e.teamcode }">
                                                                           <c:forEach items="${pos}" var="p">
                                                                              <c:if test="${p.poscode == e.poscode}">
                                                                                 <i class="fa fa-fw fa-user-plus"></i> 
                                                                                 ${t.teamname} ${e.ename} ${p.posname }
                                                                                 <input type="radio" name="name" id="name" value="${t.teamname} ${e.ename} ${p.posname}" ><hr>
                                                                              </c:if>
                                                                           </c:forEach>
                                                                        </c:if>
                                                                     </c:forEach>
                                                                     
                                                               </c:if>
                                                            </c:forEach>   
                                                         </div>
                                                         </c:forEach>
                                                         
                                                        <!-- <h3>임원</h3>
                                                        <div>
                                                           대표이사 <input type="button" value="지정" onclick="check()">
                                                         <hr>
                                                         전무 <input type="button" value="지정" onclick="check()">
                                                        </div> -->
                                                   </div>
                                                   <!-- <input type="button" value="완료" onclick="check()"> -->
                                                   </div>
                                                   
                                                  <!--  <button id="opener">지정1</button> -->
                                                  <input type="button" id="opener" value="지정1"/>
                                                   <!-- <button id="cancel1" >취소</button> -->
                                                   <input type='button' id='cancel' value='취소'/>
                                             </td>
                                             
                                             <td id="users1" style="border-bottom: 1px #eaeaea solid;">
                                                <div id="dialog1" title="결재자 지정하기">
                                                   <div id="accordion1">
                                                         <c:forEach items="${dept}" var="d">
                                                            <h3>${d.deptname}</h3>
                                                            <div>
                                                               <c:forEach items="${emp}" var="e">
                                                                  <c:if test="${d.deptcode == e.deptcode}">
                                                                     <c:forEach items="${team}" var="t">
                                                                        <c:if test="${t.teamcode == e.teamcode }">
                                                                           <c:forEach items="${pos}" var="p">
                                                                              <c:if test="${p.poscode == e.poscode}">
                                                                                 <i class="fa fa-fw fa-user-plus"></i> 
                                                                                 ${t.teamname} ${e.ename} ${p.posname }
                                                                                <input type="radio" name="name1" id="name1" value="${t.teamname} ${e.ename} ${p.posname}" ><hr>
                                                                              </c:if>
                                                                           </c:forEach>
                                                                        </c:if>
                                                                     </c:forEach>
                                                               </c:if>
                                                            </c:forEach>   
                                                         </div>
                                                         </c:forEach>
                                                   </div>
                                                </div>
                                                <input type="button" id="opener1" value="지정2"/>
                                             </td>
                                             
                                             
                                             <td id="users2" style="border-bottom: 1px #eaeaea solid;">
                                                <div id="dialog2" title="결재자 지정하기">
                                                   <div id="accordion2">
                                                         <c:forEach items="${dept}" var="d">
                                                            <h3>${d.deptname}</h3>
                                                            <div>
                                                               <c:forEach items="${emp}" var="e">
                                                                  <c:if test="${d.deptcode == e.deptcode}">
                                                                     <c:forEach items="${team}" var="t">
                                                                        <c:if test="${t.teamcode == e.teamcode }">
                                                                           <c:forEach items="${pos}" var="p">
                                                                              <c:if test="${p.poscode == e.poscode}">
                                                                                 <i class="fa fa-fw fa-user-plus"></i> 
                                                                                 ${t.teamname} ${e.ename} ${p.posname }
                                                                                 <input type="radio" name="name2" id="name2" value="${t.teamname} ${e.ename} ${p.posname}" ><hr>
                                                                              </c:if>
                                                                           </c:forEach>
                                                                        </c:if>
                                                                     </c:forEach>
                                                               </c:if>
                                                            </c:forEach>   
                                                         </div>
                                                         </c:forEach>
                                                   </div>
                                                </div>
                                                <input type="button" id="opener2" value="지정3"/>
                                             </td>
                                             
                                             <td id="users3" style="border-bottom: 1px #eaeaea solid;">
                                                <div id="dialog3" title="결재자 지정하기">
                                                   <div id="accordion3">
                                                         <c:forEach items="${dept}" var="d">
                                                            <h3>${d.deptname}</h3>
                                                            <div>
                                                               <c:forEach items="${emp}" var="e">
                                                                  <c:if test="${d.deptcode == e.deptcode}">
                                                                     <c:forEach items="${team}" var="t">
                                                                        <c:if test="${t.teamcode == e.teamcode }">
                                                                           <c:forEach items="${pos}" var="p">
                                                                              <c:if test="${p.poscode == e.poscode}">
                                                                                 <i class="fa fa-fw fa-user-plus"></i> 
                                                                                 ${t.teamname} ${e.ename} ${p.posname }
                                                                                 <input type="radio" name="name3" id="name3" value="${t.teamname} ${e.ename} ${p.posname}" ><hr>
                                                                              </c:if>
                                                                           </c:forEach>
                                                                        </c:if>
                                                                     </c:forEach>
                                                               </c:if>
                                                            </c:forEach>   
                                                         </div>
                                                         </c:forEach>
                                                   </div>
                                                </div>
                                                <input type="button" id="opener3" value="지정4"/>
                                             </td>
                                          </tr>
                                          
                                          
                                          
                                          <tr height="20" align="center" bgcolor="#f6f6f6">
                                                   <input type="hidden" name="docproc[]" id="proc4" value="">
                                                   <td style="border-bottom:1px #eaeaea solid;padding:3px 0 0 0;" id="dept4"></td>
                                               <input type="hidden" name="docproc[]" id="proc5" value="">
                                                   <td style="border-bottom:1px #eaeaea solid;padding:3px 0 0 0;" id="dept5"></td>
                                               <input type="hidden" name="docproc[]" id="proc6" value="">
                                                   <td style="border-bottom:1px #eaeaea solid;padding:3px 0 0 0;" id="dept6"></td>
                                               <input type="hidden" name="docproc[]" id="proc7" value="">
                                                   <td style="border-bottom:1px #eaeaea solid;padding:3px 0 0 0;" id="dept7"></td>
                                               <input type="hidden" name="docproc[]" id="proc8" value="">
                                                   <td style="border-bottom:1px #eaeaea solid;padding:3px 0 0 0;" id="dept8"></td>
                                           </tr>
                                          
                                          
                                          
                                          
                                          
                                          <tr height="70" align="center">
                                                   <td>
                                                     <div id="divCan4" style="display:none">
                                                       <span id="procName4"></span>
                                                       <br>
                                                       <a href="javascript:procCancel('4')">
                                                          <img src="/img/approval/bt_cancel.gif">
                                                       </a>
                                                     </div>
                                                     
              <div id="divSel4" style="display:block">
                <a href="javascript:"><img class="bt_procsel" value="4" src="/img/approval/bt_sel.gif"></a>
              </div>
            </td>
                        <td>
              <div id="divCan5" style="display:none">
                <span id="procName5"></span><br><a href="javascript:procCancel('5')"><img src="/img/approval/bt_cancel.gif"></a>
              </div>
              <div id="divSel5" style="display:block">
                <a href="javascript:"><img class="bt_procsel" value="5" src="/img/approval/bt_sel.gif"></a>
              </div>
            </td>
                        <td>
              <div id="divCan6" style="display:none">
                <span id="procName6"></span><br><a href="javascript:procCancel('6')"><img src="/img/approval/bt_cancel.gif"></a>
              </div>
              <div id="divSel6" style="display:block">
                <a href="javascript:"><img class="bt_procsel" value="6" src="/img/approval/bt_sel.gif"></a>
              </div>
            </td>
                        <td>
              <div id="divCan7" style="display:none">
                <span id="procName7"></span><br><a href="javascript:procCancel('7')"><img src="/img/approval/bt_cancel.gif"></a>
              </div>
              <div id="divSel7" style="display:block">
                <a href="javascript:"><img class="bt_procsel" value="7" src="/img/approval/bt_sel.gif"></a>
              </div>
            </td>
                        <td>
              <div id="divCan8" style="display:none">
                <span id="procName8"></span><br><a href="javascript:procCancel('8')"><img src="/img/approval/bt_cancel.gif"></a>
              </div>
              <div id="divSel8" style="display:block">
                <a href="javascript:"><img class="bt_procsel" value="8" src="/img/approval/bt_sel.gif"></a>
              </div>
            </td>
                      </tr>
                                       </tbody>
                                    </table>

                                 </td>
                              </tr>
                              <tr>
                                 <td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"><b>문서종류</b></td>
                                 <td style="padding: 0 0 0 12px;">기안서</td>
                              </tr>
                              <tr>
                                 <td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"><b>문서상태</b></td>
                                 <td style="padding: 0 0 0 12px;">작성전 문서입니다.</td>
                              </tr>
                              <tr>
                                 <td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"><b>부서</b></td>
                                 <td style="padding: 0 0 0 12px;">${sessionScope.dept}</td>
                              </tr>
                              <tr>
                                 <td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"><b>기안자</b></td>
                                 <c:set var="emp" value="${sessionScope.myemp}"/>
                                 <td style="padding: 0 0 0 12px;"> ${emp.ename} ${sessionScope.pos} </td>
                              </tr>
                              <tr>
                                 <td height="30" align="center" bgcolor="#f6f6f6" class="m_sp"
                                    valign="top" style="padding-top: 7px;"><b>기안일</b></td>
                                 <td colspan="2" style="padding: 0 0 0 12px;" valign="top">
                                    <c:set var="todaydate" value="<%=strdate%>"/>
                                    <input
                                    type="text" name="reportdt" readonly class="input_type2"
                                    style="width: 85px" maxlength="10"
                                      value="${todaydate}">
                                 </td>
                              </tr>


                              <tr>
                                 <td align="center" bgcolor="#f6f6f6" class="m_sp"><b>파일첨부</b></td>
                                 <td colspan="2" style="padding: 0 0 0 12px;">
                                 <input id="signfilesrc" name="signfilesrc" type="file"></td>
                              </tr>
                     
                              <tr>
                                 <td height="30" align="center" bgcolor="#f6f6f6" class="m_sp">
                                    <b>제목</b>
                                 </td>
                                 <td colspan="2" style="padding: 0 0 0 12px;">
                                    <input id="signtitle" name="signtitle" type="text"
                                    class="input_type2" style="width: 630px;" value="">
                                 </td>
                              </tr>
                              <tr>
                                 <td colspan="3" align="center" valign="top" class="m_sp"
                                    style="padding: 0; border: 0;">
                                    <table width="100%" cellpadding="0" cellspacing="0">
                                       <tbody>
                                          <tr>
                                             <td width="100%" style="padding: 0; border-top: 0;">
                                                
                                                <script type="text/javascript">
                                                      $(
                                                            document)
                                                            .ready(
                                                                  function() {
                                                                  });
                                                </script>
                                                <table cellspacing="0" cellpadding="0" width="100%" class="noborder">
                                                   <tbody>
                                                      <tr>
                                                         <td width="100%" style="padding: 2px">
                                                            <div id="new_content_toolbar" style="width: 10%;">
                                                               <table width="100%" border="0" cellspacing="0"
                                                                  cellpadding="0" align="left"
                                                                  style="text-align: left;">
                                                               </table>
                                                            </div>
                                                            
                                                            <!-- <td width="365" rowspan="6" align="center" valign="top" style="padding: 0; border-bottom:1px #afafaf solid;">

                                    							<table id="users" width="100%" class="tbl_c9c9c9" cellpadding="0" cellspacing="0">
                                    								<tr>
                                    									<td>ddddd</td>
                                    								</tr>
                                    							</table>
                                    						</td> -->
                                                            
                                                            
                                                            
                                                            
                                                            <textarea rows="1000" cols="3000" name="dracontent" id="dracontent"></textarea>
                                                               <script type="text/javascript">
                                                                  CKEDITOR.replace('dracontent');
                                                               </script>
                                                         </td>
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
                        </table>
                     </td>
                  </tr>
               </tbody>
            </table> 
           
         </td>
      </tr>
      <tr>
         <td height="30" bgcolor="#ececec"
            style="border-bottom: 1px #c9c9c9 solid; border-top: 1px #c9c9c9 solid; padding: 0 0 0 12px;">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
               <tbody>
                  <tr>
                     <td align="right" style="padding: 0 12px 0 0;">
                        <table border="0" cellspacing="0" cellpadding="0">
                           <tbody>
                           
                              <tr>
                                 <td>
                                    <input type="submit" value="작성완료">
                                 </td>
                              </tr>
                           </tbody>
                        </table>
                     </td>
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
 </form>
   </div>
</div>
</section>