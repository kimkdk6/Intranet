<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%		//model.addAttribute("board", board);
			//model.addAttribute("boardlist", boardlist); 
			//model.addAttribute("replylist", replylist);
			//model.addAttribute("emplist", emplist);
			//model.addAttribute("empinfolist", empinfolist);
	%>
			
			
<td width="" align="left" valign="top">
        <!--본문TB START--><script type="text/javascript" src="/js/jquery/picbox.js"></script>
<script type="text/javascript">
$(document).ready(function()
{
    $("#bbs_content").find("a").attr("target", "_blank");
    $("a[rel^='lightbox']").simpletooltip();

	$("img[rel='album_image']").hover(function(){
	    w = $(this).width();
	    $(this).width( w+5 );
	},
	function(){
	    w = $(this).width();
	    $(this).width( w-5 );
	});

    var WrapWidth = $('body').width() - 210 - 105;
    $('img').load(function() {
        $('.attimg').load(function() {
            if($(this).width() > WrapWidth)
                $(this).width( WrapWidth);
        });
    });
});
function gotoModify()
{
    var f = document.writeBBS;
    f.action = 'write.php';
    f.del.value = '';
        f.submit();
    }
function gotoDelete()
{
    var f = document.writeBBS;
    f.action = 'write_exe.php';
    f.del.value = '1';
        f.submit();
    }
function deleteReply(fs)
{
    f = eval("document.reply"+fs);
    f.work.value = 'delete';

    f.submit();
}
function modifyReply(fs)
{
    h = $("#acont"+fs).height();
    $("#acont"+fs).hide();

    $("#atext"+fs).height(h);
    $("#atext"+fs).show();

    $("#pbt"+fs).hide();
    $("#mbt"+fs).show();
}
function cancelModify(fs)
{
    $("#acont"+fs).show();
    $("#atext"+fs).hide();
    $("#pbt"+fs).show();
    $("#mbt"+fs).hide();
}
function openMailWriteWindow()
{
    openWindow('/mail/load/popup_write.php?bbs_id=0009&seq=8', '_mail_write_','width=1000,height=800,scrollbars=yes,resizable=yes')
}
</script>
<style>p{margin:10;}</style>
<!--본문TB START-->
<form name="writeBBS" method="post">
<input type="hidden" name="bbs_id" value="0009">
<input type="hidden" name="seq" value="8">
<input type="hidden" name="rtn_url" value="/bbs/list.php?bbs_id=0009">
<input type="hidden" name="del">
<input type="hidden" name="bbspass">
</form>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody><tr>
            <td height="40">
            <!--타이틀TB START-->
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tbody><tr>
                <td width="520" align="left" class="title_txt" style="padding:5px 0 0 14px;">
                                   <b> ${boardlist.boardname}</b>
                                  </td>
                <td width="" align="right" style="padding:0 12px 0 0;">
                  <!--검색TB START-->
                  <table border="0" cellspacing="0" cellpadding="0">
                    <tbody><tr>
                      <td>
                      <select name="searchkey" class="sel2">
                        <option value="sc">제목+내용</option>
                        <option value="subject">제목</option>
                        <option value="content">내용</option>
                                                <option value="rname">작성자</option>
                                              </select>
                      </td>
                      <td width="3"></td>
                      <td><input type="text" name="searchval" class="input_search" style="width:152;" value=""></td>
                      <td width="3"></td>
                      <td><input type="image" src="../resources/img/bt_search.gif"></td>
                    </tr>
                  </tbody></table>
                  <!--검색TB END-->
                </td>
              </tr>
            
            </tbody></table>
            <!--타이틀TB END-->
            </td>
          </tr>            <tr>
            <td height="30" bgcolor="#ececec" style="border-bottom:1px #c9c9c9 solid;border-top:1px #c9c9c9 solid;padding:0 0 0 12px;">
            <!--기능TB START-->
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tbody><tr>
                <td align="left">
                <table border="0" cellspacing="0" cellpadding="0">
                  <tbody><tr>
                    <td><a href="/bbs/list.php?bbs_id=0009"><img src="../resources/img/bt_list.gif"></a></td>
                    <td width="5"></td>

                                        <td><a href="javascript:gotoModify()"><img src="../resources/img/bt_modify.gif"></a></td>
                    <td width="5"></td>
                                                            <td><a href="javascript:gotoDelete()"><img src="../resources/img/bt_delete.gif" onclick="if(!confirm('글을 삭제하시겠습니까?')) return false;"></a></td>
                    <td width="5"></td>
                                        <td><a href="write.php?bbs_id=0009&amp;rtn_url=%2Fbbs%2Flist.php%3Fbbs_id%3D0009"><img src="../resources/img/bt_write2.gif"></a></td>
                    <td width="5"></td>
                    <td><a href="javascript:openMailWriteWindow()"><img src="../resources/img/bt_write_mail.gif"></a></td>
                  </tr>
                </tbody></table>
                </td>
                <td align="right" style="padding:0 12px 0 0;"><table border="0" cellspacing="0" cellpadding="0">
                  <tbody><tr>
                    <td><a href="/bbs/make_notice_article.php?bbs_id=0009&amp;seq=8&amp;rtn_url=%2Fbbs%2Flist.php%3Fbbs_id%3D0009&amp;notice=0"><img src="../resources/img/bt_notice_remove.gif" onclick="if(!confirm('공지처리를 해제합니다.')) return false;"></a></td>
                  </tr>
                </tbody></table>
                                </td>
              </tr>
            </tbody></table>
            <!--기능TB END-->
            </td>
          </tr>  <tr>
    <td valign="top" id="imgWrap">
    <!--리스트TB START-->
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tbody><tr>
        <td style="border-bottom:#eaeaea 1px solid;padding:8px 20px 7px 20px;">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td height="25">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tbody><tr>
                <td align="left">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody><tr>
                                            <td width="55" align="center">
<%--                         <img width="50" src="${boardempinfo.userphoto}" style="border:1px solid #CCCCCC;"> --%>
                        <img width="50" src="../resources/img/josuck.jpg" style="border:1px solid #CCCCCC;">
                      </td>
                                            <td width="" style="padding-left:10px;" valign="middle">
                        <div style="height:25px;">
                        
                        <c:choose>
                        
                        	<c:when test="${board.boardnotice==1}">
                        		<img src="../resources/img/icon_notice.gif" border="0" align="absmiddle">
                        	</c:when>
                        	<c:otherwise>
                        		${board.boardnum}번글
                        	</c:otherwise>
                        </c:choose>
                        
                         &nbsp;                        <b><font color="#000000">${board.boardtitle}</font></b>
                        </div>
                                                작성자 : ${board.userid}(${boardemp.ename})<br>
                                                작성일시 : <span class="counter" style="color:#666666;letter-spacing:-1px;">${board.boarddate}</span> <br>
                        조회수 : ${board.boardcount} <br>
                      </td>
                    </tr>
                  </tbody></table>
                </td>
              </tr>
            </tbody></table>
            </td>
          </tr>
                  </tbody></table>
        </td>
      </tr>
            <tr>
        <td valign="top" style="padding:13px 20px 20px 25px;" id="bbs_content">${board.boardcontent}</td>
      </tr>

            <tr>
        <td height="120" valign="top" style="padding:0px 20px 20px 20px;">
        <!--댓글TB START-->
        <table width="100%" border="1" bordercolor="#eaeaea" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td align="left" valign="top" bgcolor="#f8f8f8" style="padding:13px 20px 12px 20px;">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tbody>
              <c:forEach items="${replylist}" var="rp" varStatus="rps">
              <!-- 댓글시작 -->
              <tr>
                <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                	<tbody>
                		<tr>
                 			<td width="55" valign="top" style="padding:5px 5px 5px 5px;" align="center">
<%--                       			<img width="50" src="${empinfo[rps.index].userphoto}" style="border:1px solid #CCCCCC;"> --%>
                      			<img width="50" src="../resources/img/josuck.jpg" style="border:1px solid #CCCCCC;">
                    		</td>
                    		<td width="" align="left" valign="top" class="m_sp" style="padding:5px 0px 5px 5px;">
                      			<div style="padding:0px 0 0px 0;height:16px;color:#000000;background-color:#f8f8f8;">${rp.userid}(${emplist[rps.index].ename})</div>
                      			<span id="acont0">${rp.replycontent}</span>
                      			<span id="atext0" style="display:none;">
                      				<textarea name="content" style="width:80%;height:100%;overflow:auto;border-top:#cacaca 1px solid;border-bottom:#cacaca 2px solid;border-left:#cacaca 1px solid;border-right:#cacaca 1px solid;">${rp.replycontent}</textarea>
                      			</span>
                    		</td>
                    		<td width="110" align="center" valign="top" class="counter" style="padding:3px 0px 3px 0px;letter-spacing:-1px;">
                      			<font color="#999999">${rp.replydate}</font>
                        	</td>
	                  	</tr>
                  		<tr height="2" style="background:url(/img/community/pattern_line.gif);background-repeat:repeat-x;background-position:bottom;">
                  			<td colspan="3"></td>
                  		</tr>
                	</tbody>
                </table>
                </td>
              </tr>
              </c:forEach>
              <!-- 댓글종료 -->
                            <tr>
              <form name="attach" method="post" action="rwrite_exe.php" onsubmit="return (this.content.value.length>0)? true:false"></form>
              <input type="hidden" name="bbs_id" value="0009">
              <input type="hidden" name="seq" value="8">
              <input type="hidden" name="rtn_url" value="/bbs/view.php?bbs_id=0009&amp;seq=8&amp;rtn_url=%2Fbbs%2Flist.php%3Fbbs_id%3D0009">
                <td style="padding:8px 0px 0px 0px;">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tbody><tr>
                    <td width="64" align="left" valign="top" style="letter-spacing:-1px;padding:4px 0px 0px 0px;"><b><font color="#000000">댓글쓰기</font></b></td>
                    <td align="left" valign="top" width="" height="45"><textarea name="content" style="width:100%;height:100%;overflow:auto;border-top:#cacaca 1px solid;border-bottom:#cacaca 2px solid;border-left:#cacaca 1px solid;border-right:#cacaca 1px solid;"></textarea></td>
                    <td width="64" align="right" valign="top"><input type="image" src="../resources/img/bt_re_write.gif"></td>
                  </tr>
                </tbody></table>
                </td>
              </tr>
              
                          </tbody></table>
            </td>
          </tr>
        </tbody></table>
        <!--댓글TB END-->
        </td>
      </tr>
<!--                   <tr> -->
<!--         <td> -->
<!--         <table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!--           <tbody><tr height="30"> -->
<!--             <td width="110" align="center" bgcolor="#f6f6f6" style="border-top:#eaeaea 1px solid;border-right:#eaeaea 1px solid;padding:3px 0px 0px 0px;">조회자 목록</td> -->
<!--             <td width="" align="left" style="border-top:#eaeaea 1px solid;padding:10px 0px 10px 15px;"> -->
<!--               2014-06-08 19:29:57 교무실 관리자 교원<br>2015-06-05 11:15:51 연구부문 관리자 부장 test<br>2015-06-08 17:17:30 연구부문 관리자 부장 test<br>2015-06-10 14:41:54 연구부문 관리자 부장 test<br>2015-06-10 14:42:14 연구부문 관리자 부장 test<br>2015-06-10 16:00:56 연구부문 관리자 부장 test<br>2015-06-10 16:05:05 연구부문 관리자 부장 test<br>2015-06-10 16:05:37 지원부문 데모사용자 대표이사 test<br>2015-06-10 16:05:38 연구부문 관리자 부장 test<br>2015-06-11 10:20:56 지원부문 데모사용자 대표이사 test<br>2015-06-11 10:21:20 지원부문 데모사용자 대표이사 test<br>2015-06-11 10:22:41 지원부문 데모사용자 대표이사 test<br>2015-06-11 14:32:12 연구부문 관리자 부장 test<br>2015-06-11 17:27:12 연구부문 관리자 부장 test<br>2015-06-12 13:24:29 연구부문 관리자 부장 test<br>2015-06-15 15:23:02 연구부문 관리자 부장 test<br>2015-06-17 10:53:10 연구부문 관리자 부장 test<br>2015-06-17 18:39:01 개발팀 a2 과장 test<br>2015-06-18 10:01:22 연구부문 관리자 부장 test            </td> -->
<!--           </tr> -->
<!--         </tbody></table> -->
<!--         </td> -->
<!--       </tr> -->
            <tr>
        <td>
        <!--이전글 다음글TB START-->
<!--         <table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!--           <tbody><tr height="30"> -->
<!--             <td width="110" align="center" bgcolor="#f6f6f6" style="border-bottom:#eaeaea 1px solid;border-top:#eaeaea 1px solid;border-right:#eaeaea 1px solid;padding:3px 0px 0px 0px;">이전글</td> -->
<!--             <td width="" align="left" style="border-bottom:#eaeaea 1px solid;border-top:#eaeaea 1px solid;padding:3px 0px 0px 15px;"> -->
<!--                             첫번째 글입니다. -->
<!--                           </td> -->
<!--           </tr> -->
<!--           <tr height="30"> -->
<!--             <td width="110" align="center" bgcolor="#f6f6f6" style="border-bottom:#eaeaea 1px solid;border-right:#eaeaea 1px solid;padding:3px 0px 0px 0px;">다음글</td> -->
<!--             <td width="" align="left" style="border-bottom:#eaeaea 1px solid;padding:3px 0px 0px 15px;"> -->
<!--                             <a href="view.php?bbs_id=0009&amp;seq=7&amp;rtn_url=/bbs/list.php?bbs_id=0009">6월 회사 공지 입니다</a> -->
<!--                           </td> -->
<!--           </tr> -->
<!--         </tbody></table> -->
        <!--이전글 다음글TB END-->
        </td>
      </tr>
      <tr>
        <td height="10"></td>
      </tr>
    </tbody></table>
    <!--리스트TB END-->
    </td>
  </tr>
            <tr>
            <td height="30" bgcolor="#ececec" style="border-bottom:1px #c9c9c9 solid;border-top:1px #c9c9c9 solid;padding:0 0 0 12px;">
            <!--기능TB START-->
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tbody><tr>
                <td align="left">
                <table border="0" cellspacing="0" cellpadding="0">
                  <tbody><tr>
                    <td><a href="/bbs/list.php?bbs_id=0009"><img src="../resources/img/bt_list.gif"></a></td>
                    <td width="5"></td>

                                        <td><a href="javascript:gotoModify()"><img src="../resources/img/bt_modify.gif"></a></td>
                    <td width="5"></td>
                                                            <td><a href="javascript:gotoDelete()"><img src="../resources/img/bt_delete.gif" onclick="if(!confirm('글을 삭제하시겠습니까?')) return false;"></a></td>
                    <td width="5"></td>
                                        <td><a href="write.php?bbs_id=0009&amp;rtn_url=%2Fbbs%2Flist.php%3Fbbs_id%3D0009"><img src="../resources/img/bt_write2.gif"></a></td>
                    <td width="5"></td>
                    <td><a href="javascript:openMailWriteWindow()"><img src="../resources/img/bt_write_mail.gif"></a></td>
                  </tr>
                </tbody></table>
                </td>
                <td align="right" style="padding:0 12px 0 0;"><table border="0" cellspacing="0" cellpadding="0">
                  <tbody><tr>
                    <td><a href="/bbs/make_notice_article.php?bbs_id=0009&amp;seq=8&amp;rtn_url=%2Fbbs%2Flist.php%3Fbbs_id%3D0009&amp;notice=0"><img src="../resources/img/bt_notice_remove.gif" onclick="if(!confirm('공지처리를 해제합니다.')) return false;"></a></td>
                  </tr>
                </tbody></table>
                                </td>
              </tr>
            </tbody></table>
            <!--기능TB END-->
            </td>
          </tr>  <tr>
    <td height="30"></td>
  </tr>
</tbody></table>
            <!--본문TB END-->
            </td>