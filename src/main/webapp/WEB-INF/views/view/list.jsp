<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="http://nethna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<script>

</script>
<style>

</style>
</head>

<body>
	<div class="container">
	<h1>목록 보기</h1>
	<form method="get"> 
	<table class="table table-hover">
	<thead>
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>내용</th>
			<c:if test="${user.userType == '관리자'}">
			<th>삭제</th>
			</c:if>
			<c:if test="${user.userType == '관리자'}">
			<th>수정</th>
			</c:if>
		</tr>
	</thead>
		<tr>
			<c:forEach items="${board}" var="dto">
				<tr>
					<th>${dto.number}</th>
					<th>${dto.loginId}</th>
					<th>${dto.context}</th>
					<c:if test="${user.userType == '관리자'}">
					<th><a href="delete?id=${dto.id}&loginId=${user.loginId}">X</a></th>
					</c:if>
					<c:if test="${user.userType == '관리자'}">
					<th><a href="update?id=${dto.id}">누르기</a></th>
					</c:if>
				<tr>
			</c:forEach>
		</tr>
	</table>

<!-- 	<div class="pagination pagination-small pagination-centered"> -->
<!-- 		<ul> -->
<%-- 			<c:forEach var="page" items="${ pagination.pageList }"> --%>
<%-- 				<li class='${ page.cssClass }'><a data-page="${ page.number }">${ page.label }</a></li> --%>
<%-- 			</c:forEach> --%>
<!-- 		</ul> -->
<!-- 	</div> -->
</form>

	<p>
		<a href="writeForm?loginId=${user.loginId}">글작성</a>
	</p>
<%@ include file="/WEB-INF/views/view/footer.jsp"%>
</div>
</body>
</html>