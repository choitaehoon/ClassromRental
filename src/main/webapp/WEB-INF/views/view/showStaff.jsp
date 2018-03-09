<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<link
   href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
   rel="stylesheet">
<style>
#color1 {
   color: black;
}
</style>
</head>

<body>
	<h1>승인 요청 목록</h1>
	<form method="get">
		<input type="hidden" name="pg" value="2" />
		<table class="table table-bordered">
			<tr>
				<td>작성자</td>
				<td>학번</td>
				<td>등급</td>
				<td>승인요청</td>
			<tr>
				<c:forEach items="${staffshowboard}" var="staff">
					<tr data-url="approval.do?id=${staff.bronumber} }">
						<td>${staff.bronumber}</td>
						<td>${staff.id}</td>
						<td>${staff.name}</td>
						<td>${staff.grade}</td>
						<td><a href="update?grade=${staff.grade}">3</a></td>
						<td><a href="update?approval=${staff.approval}">불허</a></td>
					</tr>
				</c:forEach>
		</table>
	</form>
		<%@ include file="/WEB-INF/views/view/footer.jsp"%>
</body>
</html>