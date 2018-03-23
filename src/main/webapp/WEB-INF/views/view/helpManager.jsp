<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html >
<html>
<head>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script>
		function okay(loginId, loginId2)
		{
			var ok = loginId;
			var ok2 = loginId2;
			
			document.gogo.loginId.value=ok;
			document.gogo.loginId2.value=ok2;
			gogo.submit();
		}
		
		function nono(loginId, loginId2)
		{
			var ok = loginId;
			var ok2 = loginId2;
			
			document.nonon.loginId.value=ok;
			document.nonon.loginId2.value=ok2;
			nonon.submit();
		}
	</script>
</head>

<body>

<hr/>
	<div class="container">
		<h1>등급 구제 목록</h1>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>작성자</th>
					<th>내용</th>
					<th>구제하기</th>
					<th>구제거절하기</th>
				</tr>
			</thead>	
			<tr>
				<c:forEach items="${help}" var="h">
				<th>${h.loginId}</th>
				<th>${h.context}</th>
				<th><input type="button" class="btn btn-link" value="구제하기" onclick="okay('${h.loginId}', '${user.loginId}');"></th>
				<th><input type="button" class="btn btn-link" value="거절하기" onclick="nono('${h.loginId}', '${user.loginId}');"></th>
				</c:forEach>
			</tr>
			
		</table>
	</div>
	
	<form action="okok" name="gogo">
		<input type="hidden" name="loginId" value="">
		<input type="hidden" name="loginId2" value="">
	</form>
	
	<form action="nonono" name="nonon">
		<input type="hidden" name="loginId" value="">
		<input type="hidden" name="loginId2" value="">
	</form>
</body>
</html>