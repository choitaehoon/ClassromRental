<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
<link href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
	div{
		width:600px;
		margin:0 auto;
	}
</style>
</head>

<body>

<div>
	<h1>로그인</h1>
	<form action="loginAfter" method="post">
	<label>아이디</label>
	<input type="text" name="loginId"><br/>
	
	<label>비밀번호</label>
	<input type="password" name="password">
	<input type="submit" class="btn btn-primary" value="로그인"><br/>
	<input type="button" class="btn btn-primary" value="회원가입"
	onclick="location.href='http://localhost:8080/controller/view/signUpBefore'">
	</form>
	
		<c:if test="${ not empty error }">
			<div class="alert alert-error">${ error }</div>
		</c:if>
	
</div>
</body>
</html>