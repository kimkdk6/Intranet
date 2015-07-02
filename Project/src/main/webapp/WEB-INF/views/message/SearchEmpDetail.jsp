<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<table height="400px" width="500px">
		<tr>
			<td colspan="2" style="border-bottom: 2px solid #0469AF"><h4>${member.ename}님의 사원정보</h4></td>
		</tr>
		<tr>
			<td>
				<table height="300px" width="200px">
					<tr height="220px">
						<td align="center"><img src="http://192.168.7.241:8090/PROJECT/Upload/${member.p_picture}" width="200px" height="200px"></td>
					</tr>
					<tr>
						<td align="center" style="background-image: url('img/배경2.png');">" ${member.p_content} "</td>
					</tr>
				</table>
			</td>
			<td>
				<table height="300px" width="300px" id="emp">
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>사원번호</td>
						<td>${member.empno}</td>
					</tr>
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>이름</td>
						<td>${member.ename}</td>
					</tr>
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>생년월일</td>
						<td>${member.birth}</td>
					</tr>
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>성별</td>
						<td>${member.sex}</td>
					</tr>
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>핸드폰</td>
						<td>${member.celphone}</td>
					</tr>
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>이메일</td>
						<td>${member.email}</td>
					</tr>
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>소속부서</td>
						<td>${member.deptname}</td>
					</tr>
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>소속팀</td>
						<td>${member.teamname}</td>
					</tr>
					<tr style="border-bottom: 1px solid #A2A2A2">
						<td>직급</td>
						<td>${member.gradename}</td>
					</tr>
					<tr>
						<td>사내전화번호</td>
						<td>${member.emptel}</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="button" class="btn btn-primary" value="수정하기" onclick="editAdmin(${member.empno})">&nbsp;
			<input type="button" class="btn btn-default" value="닫기" onclick="window.close()"></td>
		</tr>
	</table>