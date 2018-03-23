<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
	<style>
	#b
 	{
 		position: absolute;
/*  		margin:120px; */
 		right:800px; 
 		top: 17%;
 	}
 	#submitId
 	{
 		position: absolute;
 		right:200px;
 		top: 100%;
 	}
 	#list
 	{
 		position: absolute;
 		right:60px;
 		top: 100%;
 	}
 	
 	
	</style>
</head>
<body>
	<hr>
	<div id="b">
	
	<h1>신청하기</h1><br/>
	날짜 <input class="form-control" type="text" placeholder="${swap.idDate}" readonly><br/><br/>
	시작시간 <input class="form-control" type="text" placeholder="${swap.currentTime}" readonly><br/><br/>
	종료시간 <input class="form-control" type="text" placeholder="${swap.endTime}" readonly><br/><br/>
	신청하시겠습니까?<br/><br/>
	
	<form action="borrow">
	<input type="hidden" name="number" value="${swap.number}">
	<input type="hidden" name="request" value="0">
	<input type="hidden" name="borrower" value="${user.loginId}">
	<input type="hidden" name="loginId" value="${user.loginId}">
	<input type="submit" class="btn btn-primary" id="submitId" value="전송">
	</form>
	
	<input type="button" class="btn btn-default" id="list" value="목록으로 나가기" 
	onclick="location.href='http://localhost:8081/controller/view/rent?loginId=${user.loginId}'"
	>
	</div>	
	
</body>
</html>