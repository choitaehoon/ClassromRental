<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link
   href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
   rel="stylesheet">
<style>
#color1 {
   color: black;
}
</style>

<script>
	function sub()
	{
		var idDate = $('#a').html();
		var currentTime = $('#b').html();
		var endTime = $('#c').html();
		var facilityCode = $('#d').html();
		
		document.approvalSubmit.idDate.value=idDate;
		document.approvalSubmit.currentTime.value=currentTime;
		document.approvalSubmit.endTime.value=endTime;
		document.approvalSubmit.facilityCode.value=facilityCode;
		approvalSubmit.submit();
	}
</script>
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
				<td>승인 하기</td>
				<td>거부 하기</td>
			</tr>
			<c:forEach items="${date}" var="date">
			<tr>
				<td>${user.name}</td>
				<td id="a">${date.idDate}</td>
				<td id="b">${date.currentTime}</td>
				<td id="c">${date.endTime}</td>
				<td id="d">${date.facilityCode}</td>
				<td><input type="button" class="btn btn-success" value="승인 하기" onclick="sub();"></td>
				<td><input type="button" class="btn btn-danger" value="거부 하기"></td>
<%-- 				<td>${date.approval}</td> --%>
			</tr>
			</c:forEach>
		</table>
	</form>
	<form action="approvalSubmit" id="approvalSubmit" name="approvalSubmit">
		<input type="hidden" name="idDate" value="">
		<input type="hidden" name="currentTime" value="">
		<input type="hidden" name="endTime" value="">
		<input type="hidden" name="facilityCode" value="">
		<input type="hidden" name="loginId" value="${user.loginId}">
	</form>
<%-- 		<%@ include file="/WEB-INF/views/view/footer.jsp"%> --%>
</body>
</html>