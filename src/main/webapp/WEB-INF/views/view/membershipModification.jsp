<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
label {
	margin-top: 20px;
}
</style>
</head>
<body>
	<div class="container">
		<h1>사용자 정보 수정</h1>
		<hr />
		
		<form method="post" action="membershipModification">
			<input type="hidden" name="id" value="${user.id}">
			
			<label>로그인ID</label>
			<input type="text" name="loginId" value="${user.loginId}" />
			<label>이름</label>
			<input type="text" name="name" value="${user.name}" />
			<label>이메일</label>
			<input type="text" name="email" />
			
			<label>사용자 유형</label>
			<select name="userType">
				<option value="관리자" label="관리자" />
				<option value="교수" label="교수" />
				<option value="학생" label="학생"  />
			</select>
			
			<label>학과</label>
			<select name="departmentId">
				<option value="0" label="없음" />
				<option value="1" label="소프트웨어공학과" />
				<option value="2" label="컴퓨터공학과" />
				<option value="3" label="경영학과" />
				<option value="4" label="정보통신공학과" />
			</select>
			<hr />
			<div>
				<input type="submit" class="btn btn-primary" value="저장"/> <a
					href="signUpAfter?loginId=${user.loginId}" class="btn btn-primary" name="loginId">초기 화면으로 나가기 </a>
			</div>
		</form>
		
		<c:if test="${ not empty error }">
			<div class="alert alert-error">${ error }</div>
		</c:if>
		<c:if test="${ not empty success }">
			<div class="alert alert-success">${ success }</div>
		</c:if>
	</div>
<%@ include file="/WEB-INF/views/view/footer.jsp"%>
</body>
</html>