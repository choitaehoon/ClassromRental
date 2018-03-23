<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link
   href="http://nethna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
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
	
	function reject()
	{
		var idDate = $('#a').html();
		var currentTime = $('#b').html();
		var endTime = $('#c').html();
		var facilityCode = $('#d').html();
		
		document.approvalReject.idDate.value=idDate;
		document.approvalReject.currentTime.value=currentTime;
		document.approvalReject.endTime.value=endTime;
		document.approvalReject.facilityCode.value=facilityCode;
		approvalReject.submit();
	}
</script>
</head>

<body>
<hr>
	<div class="container">
	<h1>승인 요청 목록</h1>
	<form method="get">
		<table class="table table-hover">
		<thead>
			<tr>
				<th>작성자</th>
				<th>빌린 날짜</th>
				<th>시작 시간</th>
				<th>종료 시간</th>
				<th>강의실</th>
				
				<th>등급</th>
				<th>승인 하기</th>
				<th>거부 하기</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${dates}" var="date">
			<c:forEach items="${date.students}" var="user">
			<tr>
				<th>${date.rent}</th>
				<th id="a">${date.idDate}</th>
				<th id="b">${date.currentTime}</th>
				<th id="c">${date.endTime}</th>
				<th id="d">${date.facilityCode}</th>
				<c:choose>
					<c:when test="${user.grade == 0}">
						<th>정상</th>
					</c:when>
					
					<c:when test="${user.grade == 1}">
						<th>경고</th>
					</c:when>
					
					<c:when test="${user.grade == 2}">
						<th>위험</th>
					</c:when>
					
					<c:when test="${user.grade == 3}">
						<th>강등</th>
					</c:when>
					
				</c:choose>
				
				<th><input type="button" class="btn btn-success" value="승인 하기" onclick="sub();"></th>
				<th><input type="button" class="btn btn-danger" value="거부 하기" onclick="reject();"></th>
<%-- 				<th>${date.approval}</th> --%>
			</tr>
			</c:forEach>
			</c:forEach>
			</tbody>
		</table>
	</form>
	</div>
	<form action="approvalSubmit" id="approvalSubmit" name="approvalSubmit">
		<input type="hidden" name="idDate" value="">
		<input type="hidden" name="currentTime" value="">
		<input type="hidden" name="endTime" value="">
		<input type="hidden" name="facilityCode" value="">
		<input type="hidden" name="loginId" value="${user.loginId}">
	</form>
	
	<form action="approvalReject" id="approvalReject" name="approvalReject">
		<input type="hidden" name="idDate" value="">
		<input type="hidden" name="currentTime" value="">
		<input type="hidden" name="endTime" value="">
		<input type="hidden" name="facilityCode" value="">
		<input type="hidden" name="loginId" value="${user.loginId}">
	</form>
	
<%-- 		<%@ include file="/WEB-INF/views/view/footer.jsp"%> --%>
</body>
</html>