<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html >
<html>
<head>
<link href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
	div{
		width:600px;
		margin:0 auto;
	}
</style>
</head>
<body>
<div>
	<hr/>
	<h1>내정보</h1>
	<label>이름</label>
	<input class="form-control" type="text" placeholder="${user.name}" readonly>
	
	<label>아이디</label>
	<input class="form-control" type="text" placeholder="${user.loginId}" readonly>
	
	<label>소속 학과</label>
	<c:if test="${user.departmentId == 1}">
	<input class="form-control" type="text" placeholder="소프트웨어공학과" readonly>
	</c:if>
	
	<c:if test="${user.departmentId == 2}">
	<input class="form-control" type="text" placeholder="컴퓨터공학과" readonly>
	</c:if>
	
	<c:if test="${user.departmentId == 3}">
	<input class="form-control" type="text" placeholder="정보통신공학과" readonly>
	</c:if>
	
	<c:if test="${user.departmentId == 4}">
	<input class="form-control" type="text" placeholder="글로컬IT학과 input here…" readonly>
	</c:if>
	
	<label>등급</label>
	<c:if test="${user.grade == 0}">
	<input class="form-control" type="text" placeholder="정상" readonly>
	</c:if>
	
	<c:if test="${user.grade == 1}">
	<input class="form-control" type="text" placeholder="경고" readonly>
	</c:if>
	
	<c:if test="${user.grade == 2}">
	<input class="form-control" type="text" placeholder="위험" readonly>
	</c:if>
	
	<c:if test="${user.grade == 3}">
	<input class="form-control" type="text" placeholder="강등" readonly>
	</c:if>
	
</div>
	
</body>
<%-- <%@ include file="/WEB-INF/views/view/footer.jsp"%> --%>
</html>