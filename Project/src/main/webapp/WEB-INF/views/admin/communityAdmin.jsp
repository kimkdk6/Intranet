<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<section class="content-header">
	<h1>
		커뮤니티 관리 <small>커뮤니티 관리 페이지</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">관리자</li>
	</ol>
</section>

<section class="content-header">
	<div class="box box-success">
		<div class="box-header">
			<h3 class="box-title">Add Board</h3>
		</div>
		<div class="box-body">
			<div class="input-group">
						<form name="newboard" action="communityAdd.htm" method="post">
							<input type="text" name="boardname" id="boardname"
								class="form-control input-sm pull-right"
								style="width: 200px; height: 35px;" placeholder="board name" />
							 
								<button class="btn btn-info btn-flat" type="button" onclick="addBoard()">추가</button>
							 
						</form>
					</div>
		</div>
		<!-- /.box-body -->
	</div>
</section>
 
<section class="content-header">
	<div class="box">
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
						<th>관리</th>
	
					</tr>
					  <c:forEach var="boardtype" items="${boardmap}">
						<tr>
							<td><input type="text" name="boardname" class="form-control" id="boardname${boardtype.key.boardcode}"
								value="${boardtype.key.boardname}"></td>
							<td>${boardtype.value}</td>
							<td>
								<a href="javascript:myApp('M', ${boardtype.key.boardcode})">
									<span class="label label-success">명칭바꾸기</span>
								</a>
									<a href="javascript:myApp('D', ${boardtype.key.boardcode})">
								<span class="label label-danger">삭제</span></a>
							
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