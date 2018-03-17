<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html>
<html>

<head>

</head>

<body>
	<hr/>
	<div class="container">
		 <div class="row justify-content-md-center">
			<div class="col-md-auto">
				<h1>빌려준 목록</h1><br/>
				<table class="table table-hover">
	 			 <thead>
					<tr>
						<th>빌린 사람</th>
						<th>날짜</th>
						<th>시작 시간</th>
						<th>종료 시간</th>
					</tr>
				</thead>
				<thead>
				<c:forEach items="${swap}" var="swap">
					<tr>
						<th>${swap.borrower}</th>
						<th>${swap.idDate}</th>
						<th>${swap.currentTime}</th>
						<th>${swap.endTime}</th>
						<th>설문지 작성하기</th>
					</tr>
				</c:forEach>
				</thead>
			</table>
		</div>
	</div>
</div>
</body>

</html>