<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<!DOCTYPE html>
<section class="content-header">
	<h1>
		팀 관리 <small>팀 관리 페이지</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">관리자</li>
	</ol>
</section>

<section class="content-header">
	<div class="box box-success">
		<div class="box-header">
			<h3 class="box-title">Add Team</h3>
		</div>
		<div class="box-body">
			<div class="input-group">
						<form name="newboard" action="teamAdd.htm" method="post">
							<select id="deptcode" name="deptcode" class="form-control" style="width: 300px;" ${disabled}>
								<option value="">부서를 선택하세요</option>
								<c:forEach var="dept" items="${deptlist}">
									<option value="${dept.deptcode}">${dept.deptname}</option>
								</c:forEach>
							</select>							
							<input type="text" name="teamname" id="teamname"
								class="form-contro	l input-sm pull-left"
								style="width: 200px; height: 35px;" placeholder="team name" />
							 
								<button class="btn btn-info btn-flat" type="button" onclick="addTeam()">추가</button>
							 
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
						<th>부서명</th>
						<th>팀 명</th>
						<th>사원 수</th>
						<th>관리</th>
	
					</tr>
					   <c:forEach var="dept" items="${deptlist}">
							<c:forEach var="team" items="${teamlist}" varStatus="i">
								<c:if test="${dept.deptcode == team.deptcode}">
									<tr>
										<td>${dept.deptname}</td>
										<td><input type="text" name="teamname" class="form-control" id="teamname${team.teamcode}"
											value="${team.teamname}"></td>
										<td>${teamnlist[i.index]}</td>
										<td>
											<a href="javascript:myApp('M', ${team.teamcode}, ${teamnlist[i.index]})">
											<span class="label label-success">명칭바꾸기</span>
											</a>
											<a href="javascript:myApp('D', ${team.teamcode}, ${teamnlist[i.index]})">
											<span class="label label-danger">삭제</span></a>
										</td>
									</tr>
								</c:if>
							</c:forEach>
					</c:forEach>   
					 
					 
					
				</table>
			
		</div>
		<!-- /.box-body -->
	</div>
	<!-- /.box -->
</section>
<script language="javascript">
	function myApp(proc, teamcode, teamnum)
	{
	    var f = document.boardmg;
	    if(proc == 'D')
	    {
	    	console.log("teamcode/teamnum: "+teamcode+"/"+teamnum);
	    	if(teamnum > 0){alert('해당 부서의 팀에 포함된 직원이 존재하여 삭제되지 않습니다.'); return false;}
	        if( !confirm( '해당 부서의 팀을 삭제하시겠습니까?') ) return;
	        f.action = "teamRemove.htm?teamcode="+teamcode;
	    }
	    
	    if(proc == 'M')
	    {
	    	
	    	console.log("teamcode: "+teamcode);
	    	var name = $('#teamname'+teamcode).val();
	    	console.log("boardname: "+name);
	        if( !confirm( '팀 명을 수정하시겠습니까?') ) return;
	        f.action = "teamModify.htm?teamcode="+teamcode+"&teamname="+name;
	    }
	    
	    f.submit();
	}
	
	function addTeam(){
		var f = document.newboard;
		
		if(!f.deptcode.value && f.deptcode.value==""){
			alert("부서를 선택하세요");
			f.deptcode.focus();
			return false;
		}
		
		if(!f.teamname.value){
			alert("생성할 팀 명을 입력하세요");
			f.teamname.focus();
			return false;
		}
		
		f.submit();
		
	}
</script>