<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html >
<html>
<head>
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<style>
thead tr {
	background: #eee;
}

tbody tr:hover {
	background-color: #ffa;
	cursor: pointer;
}
</style>
<script>
	$(function() {
		$("tbody tr").click(function() {
			location.href = $(this).attr("data-url");
		});
	});
</script>
</head>
<body>
	<div class="container">
		<h1>사용자 목록</h1>
		<hr />
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>id</th>
					<th>loingId</th>
					<th>name</th>
					<th>email</th>
					<th>userType</th>
					<th>department</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${ list }">
					<tr data-url="edit?id=${ user.id }">
						<td>${ user.id }</td>
						<td>${ user.loginId }</td>
						<td>${ user.name }</td>
						<td>${ user.email }</td>
						<td>${ user.userType }</td>
						<td>${ user.departmentName }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
<%@ include file="/WEB-INF/views/view/footer.jsp"%>
</body>
</html>