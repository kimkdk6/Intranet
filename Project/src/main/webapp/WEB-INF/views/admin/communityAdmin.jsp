<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="box">
	<div class="box-header">
		<h3 class="box-title">Responsive Hover Table</h3>
		<div class="box-tools">
			<div class="input-group">
				<input type="text" name="table_search"
					class="form-control input-sm pull-right" style="width: 150px;"
					placeholder="Search" />
				<div class="input-group-btn">
					<button class="btn btn-sm btn-default">
						<i class="fa fa-search"></i>
					</button>
				</div>
			</div>
		</div>
	</div>
	<!-- /.box-header -->
	<div class="box-body table-responsive no-padding">
		<table class="table table-hover">
			<tr>
				<th>ID</th>
				<th>User</th>
				<th>Date</th>
				<th>Status</th>
				<th>Reason</th>
			</tr>
			<tr>
				<td>183</td>
				<td>John Doe</td>
				<td>11-7-2014</td>
				<td><span class="label label-success">Approved</span></td>
				<td>Bacon ipsum dolor sit amet salami venison chicken flank
					fatback doner.</td>
			</tr>
			<tr>
				<td>219</td>
				<td>Alexander Pierce</td>
				<td>11-7-2014</td>
				<td><span class="label label-warning">Pending</span></td>
				<td>Bacon ipsum dolor sit amet salami venison chicken flank
					fatback doner.</td>
			</tr>
			 
		</table>
	</div>
	<!-- /.box-body -->
</div>
<!-- /.box -->