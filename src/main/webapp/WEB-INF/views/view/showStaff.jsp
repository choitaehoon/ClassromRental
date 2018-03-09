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
<hr>
	<h1>승인 요청 목록</h1>
	<form method="get">
		<table class="table table-bordered">
			<tr>
				<td>작성자</td>
				<td>빌린 날짜</td>
				<td>시작 시간</td>
				<td>종료 시간</td>
				<td>강의실</td>
				<td>요청</td>
				<td>거부</td>
			</tr>
			<c:forEach items="${date}" var="date">
			<tr>
				<td>${user.name}</td>
				<td>${date.idDate}</td>
				<td>${date.currentTime}</td>
				<td>${date.endTime}</td>
				<td>${date.facilityCode}</td>
<%-- 				<td>${date.approval}</td> --%>
			</tr>
			</c:forEach>
		</table>
	</form>
		<%@ include file="/WEB-INF/views/view/footer.jsp"%>
</body>
</html>