<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html >
<html>
<head>
<style>
	tr:hover { background-color: #ffffdd; }
</style>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script>
		function subscribe(number)
		{
			var num = number;
			document.application.number.value=num;
			application.submit();
		}
	</script>
</head>
<body>
	<h1>강의실 나눔</h1>
	<table class="table table-bordered">
		<tr>
			<td>번호</td>
			<td>작성자</td>
			<td>제목</td>
			<td>내용</td>
			<td>신청자</td>
			<td>신청하기</td>
		</tr>
		<c:forEach items="${swap}" var="swap">
		<tr>
			<td>${swap.number}</td>
			<td>${swap.loginId}</td>
			<td>${swap.title}</td>
			<td>${swap.textarea}</td>
			<c:choose>
				<c:when test="${swap.borrower eq null}">
					<td></td>
				</c:when>
				
				<c:when test="${swap.borrower != null}">
					<td>${swap.borrower}</td>
				</c:when>
			</c:choose>
			
			<c:choose>
				<c:when test="${swap.request eq 1}">
					<td>
						<a href="javascript:subscribe(${swap.number});">신청하기</a>
					</td>
				</c:when>
				
				<c:when test="${swap.request eq 0}">
					<td>마감</td>
				</c:when>
			</c:choose>
		</tr>
		</c:forEach>
	</table>
	
	<form action="application" name="application">
		<input type="hidden" name="number" value="">
		<input type="hidden" name="loginId" value="${user.loginId}">
	</form>
	
	<p>
		<input type="button" class="btn btn-primary" value="글작성"
		onclick="location.href='http://localhost:8080/controller/view/writeClassroom?loginId=${user.loginId}'">
	</p>
</body>
</html>