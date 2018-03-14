<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html >
<html>
<head>

</head>
<body>
	<h1>강의실 나눔</h1>
	<table class="table table-bordered">
		<tr>
			<td>작성자</td>
			<td>내용</td>
			<td>신청</td>
		</tr>
		<tr>
			
		</tr>
	</table>
	
	<p>
		<input type="button" class="btn btn-primary" value="글작성"
		onclick="location.href='http://localhost:8080/controller/view/writeClassroom?loginId=${user.loginId}'">
	</p>
</body>
</html>