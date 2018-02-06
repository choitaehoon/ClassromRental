<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<table width="500" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<td>번호</td>
		<td>작성자</td>
		<td>내용</td>
		<td>삭제</td>
		<td>수정</td>
	<tr>
	<c:forEach items="${board}" var="dto">
	<tr>
		<td>${dto.number}</td>
		<td>${dto.id}</td>
		<td>${dto.context}</td>
		<td><a href="delete?id=${dto.id}">X</a></td>
		<td><a href="update">누르기</a></td>
	<tr>
	</c:forEach>
</table>
<p><a href="writeForm">글작성</a></p>

</body>
</html>