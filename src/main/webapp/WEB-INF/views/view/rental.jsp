<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html >
<html>
<head>
<style>
/* 	tr:hover { background-color: #ffffdd; } */
</style>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script>
		function subscribe(number)
		{
			var num = number;
			document.application.number.value=num;
			application.submit();
		}
		
		$(function() {
			$("div.pagination a").click(function() {
				$("input[name=pg]").val($(this).attr("data-page"));
				$("#subs").submit();
			});
		});
	</script>
</head>
<body>
	<div class="container">
	<hr/>
	<h1>강의실 나눔</h1>
	<form id="subs">
	<input type="hidden" name="pg" value="1" />
	<input type="hidden" name="loginId" value="${user.loginId}">
	<table class="table table-hover">
	<thead>
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>내용</th>
			<th>신청자</th>
			  <c:if test="${user.userType != '관리자'}">
			<th>신청하기</th>
			</c:if>
		</tr>
	</thead>
		<c:forEach items="${swap}" var="swap">
		<tr>
			<th>${swap.number}</th>
			<th>${swap.loginId}</th>
			<th>${swap.title}</th>
			<th>${swap.textarea}</th>
			<c:choose>
				<c:when test="${swap.borrower eq null}">
					<th></th>
				</c:when>
				
				<c:when test="${swap.borrower != null}">
					<th>${swap.borrower}</th>
				</c:when>
			</c:choose>
			
			<c:if test="${user.userType != '관리자'}">
			<c:choose>
				<c:when test="${swap.request eq 1 && swap.borrower == null}">
					<th>
						<a href="javascript:subscribe(${swap.number});">신청하기</a>
					</th>
				</c:when>
				
				<c:when test="${swap.request eq 0 || (swap.borrower != null && swap.request == 1 )}">
					<th>마감</th>
				</c:when>
			</c:choose>
			</c:if>
			
		</tr>
		</c:forEach>
	</table>
	</form>
			<div class="pagination pagination-small pagination-centered">
				<ul>
					<c:forEach var="page" items="${ pagination.pageList }">
						<li class='${ page.cssClass }'><a
							data-page="${ page.number }">${ page.label }</a></li>
					</c:forEach>
				</ul>
			</div>
	
	<form action="application" name="application">
		<input type="hidden" name="number" value="">
		<input type="hidden" name="loginId" value="${user.loginId}">
	</form>
	
	<p>
		<c:if test="${user.userType != '관리자'}">
		<input type="button" class="btn btn-primary" value="글작성"
		onclick="location.href='http://localhost:8081/controller/view/writeClassroom?loginId=${user.loginId}'">
		</c:if>
	</p>
	</div>
</body>

</html>