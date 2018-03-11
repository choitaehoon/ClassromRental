<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
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
</style>
</head>

<body>
	<h1>목록 보기</h1>
	<form method="get"> <input type="hidden" name="pg" value="1" />
	<table class="table table-striped">
		<tr>
			<td id="color1">번호</td>
			<td id="color1">작성자</td>
			<td id="color1">내용</td>
			<td id="color1">삭제</td>
			<td id="color1">수정</td>
		<tr>
			<c:forEach items="${board}" var="dto">
				<tr>
					<td>${dto.number}</td>
					<td>${dto.id}</td>
					<td>${dto.context}</td>
					<td><a href="delete?id=${dto.id}">X</a></td>
					<td><a href="update?id=${dto.id}">누르기</a></td>
				<tr>
			</c:forEach>
	</table>

	<div class="pagination pagination-small pagination-centered">
		<ul>
			<c:forEach var="page" items="${ pagination.pageList }">
				<li class='${ page.cssClass }'><a data-page="${ page.number }">${ page.label }</a></li>
			</c:forEach>
		</ul>
	</div>
</form>

	<p>
		<a href="writeForm?loginId=${user.loginId}">글작성</a>
	</p>
<%@ include file="/WEB-INF/views/view/footer.jsp"%>
</body>

</html>