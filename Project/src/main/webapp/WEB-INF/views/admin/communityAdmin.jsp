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
						<input type="text" name="table_search"
							class="form-control input-sm pull-right"
							style="width: 200px; height: 35px;" placeholder="board name" />
						<div class="input-group-btn">
							<button class="btn btn-info btn-flat" type="button">추가</button>
						</div>
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
			<table class="table table-hover">
				<tr>
					<th>게시판명</th>
					<th>게시글 수</th>
					<th>관리</th>

				</tr>
				<c:forEach var="boardtype" items="${boardmap}">
					<tr>
						<td><input type="text" class="form-control"
							value="${boardtype.key.boardname}"></td>
						<td>${boardtype.value}</td>
						<td><span class="label label-success">Approved</span></td>

					</tr>
				</c:forEach>
			</table>
		</div>
		<!-- /.box-body -->
	</div>
	<!-- /.box -->
</section>
