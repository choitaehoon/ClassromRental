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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script>
	$(function() {
		$("div.pagination a").click(function() {
			$("input[name=pg]").val($(this).attr("data-page"));
			$("form").submit();
		});
	});
</script>
<style>
 #color1 { 
 	color: black; 
 } 

 tr:hover { background-color: #ffffdd; } 
</style>
</head>

<body>
	<h1>목록 보기</h1>
	<form method="get"> 
	<table class="table table-hover">
	<thead>
		<tr>
			<th id="color1">번호</th>
			<th id="color1">작성자</th>
			<th id="color1">내용</th>
			<th id="color1">삭제</th>
			<th id="color1">수정</th>
		</tr>
		<tr>
			<c:forEach items="${board}" var="dto">
				<tr>
					<th>${dto.number}</th>
					<th>${dto.id}</th>
					<th>${dto.context}</th>
					<th><a href="delete?id=${dto.id}">X</a></th>
					<th><a href="update?id=${dto.id}">누르기</a></th>
				<tr>
			</c:forEach>
		</tr>
	</thead>
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
</body>

</html>