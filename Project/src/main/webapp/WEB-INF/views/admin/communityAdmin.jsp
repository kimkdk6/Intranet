<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<section class="content-header" >
	<h1>
		커뮤니티 관리 <small>커뮤니티 관리 페이지</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">관리자</li>
	</ol><hr style=	"border-color: white;" >
</section>


<section class="content-header" style="
   
    padding-left: 70px;
    padding-right: 70px;">
	<div class="box box-success" style="padding-left: 30px;
    padding-right: 30px;">
		<div class="box-header">
			<h3 class="box-title" style="padding-left: 3px">Add Board</h3>
		</div>
		<div class="box-body" style="padding-top: 0px;">
			<div class="input-group">
						<form name="newboard" action="communityAdd.htm" method="post">
							<input type="text" name="boardname" id="boardname"
								class="form-control input-sm pull-left"
								style="width: 200px; height: 35px;" placeholder="board name" />
							 
								<button class="btn btn-danger" type="button" onclick="addBoard()" style="
    margin-left: 7px;
">추가</button>
							 
						</form>
					</div>
		</div>
		<!-- /.box-body -->
	</div>
</section>
 
<section class="content-header"  style="padding-left: 70px; padding-right: 70px; padding-bottom: 20px;">
	<div class="box" style="padding-left: 30px;
    padding-right: 30px;">
		<div class="box-header">
			<h3 class="box-title">커뮤니티 관리</h3>

		</div>
		<!-- /.box-header -->
		<div class="box-body table-responsive no-padding">
			<form name="boardmg" action="" method="post">
			</form>
				<table class="table table-hover">
					<tr>
						<th>게시판명</th>
						<th>게시글 수</th>
						<th style="padding-left: 23px;">관리</th>
	
					</tr>
					  
					  <c:forEach var="boardtype" items="${boardtypelist}" varStatus="bt">
						<tr>
							<td>
								<c:if test="${boardtype.boardcode == 1 || boardtype.boardcode == 2 || boardtype.boardcode == 3 || boardtype.boardcode == 4}">
								<span class="label pull-center bg-yellow">기본</span></c:if>
								<input type="text" name="boardname" class="form-control" id="boardname${boardtype.boardcode}"
								value="${boardtype.boardname}"></td>
							<td style="font-align: center;padding-top: 28px;padding-left: 32px;">${boardnlist[bt.index]}</td>
							 <td style="
    padding-top: 25px;
">
								<a href="javascript:myApp('M', ${boardtype.boardcode})">
									<span class="label label-success" style="
    padding-top: 7px;
    padding-bottom: 7px;
    margin-right: 2px;">명칭바꾸기</span></a>
								 
								<c:if test="${boardtype.boardcode != 1 && boardtype.boardcode != 2 
										&& boardtype.boardcode != 3 && boardtype.boardcode != 4}">
									<a href="javascript:myApp('D', ${boardtype.boardcode})">
									<span class="label label-danger" style="
    padding-top: 7px;
    padding-bottom: 7px;
    
">삭제</span></a>
								</c:if>
							</td> 
							
						</tr>
					</c:forEach> 
					
				</table>
			
		</div>
		<!-- /.box-body -->
	</div>
	<!-- /.box -->
</section>
<script language="javascript">
	function myApp(proc, boardcode)
	{
	    var f = document.boardmg;
	    if(proc == 'D')
	    {
	    	console.log("boardcode: "+boardcode);
	        if( !confirm( '게시판을 삭제하시겠습니까?') ) return;
	        f.action = "communityRemove.htm?boardcode="+boardcode;
	    }
	    
	    if(proc == 'M')
	    {
	    	
	    	console.log("boardcode: "+boardcode);
	    	var name = $('#boardname'+boardcode).val();
	    	console.log("boardname: "+name);
	        if( !confirm( '게시판을 수정하시겠습니까?') ) return;
	        f.action = "communityModify.htm?boardcode="+boardcode+"&boardname="+name;
	    }
	    
	    f.submit();
	}
	
	function addBoard(){
		var f = document.newboard;
		if(!f.boardname.value){
			alert("생성할 게시판 명을 입력하세요");
			f.boardname.focus();
			return false;
		}
		
		f.submit();
		
	}
</script>