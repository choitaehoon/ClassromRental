<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html >
<html>
<head>

</head>

<body>
	<div class="container">
	<hr/>
		<h1>설문지 조사</h1>
		<br/>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>빌려준 사람</th>
					<th>빌린 사람</th>
					<th>강의실</th>
					<th>파손된 물건이 있나?</th>
					<th>문 제대로 닫았나?</th>
					<th>물건 제자리에 놨나?</th>
					<th>의자,책상 정리 정돈 잘했나?</th>
					<th>온,냉방시설 껐나?</th>
					<th></th>
				</tr>
			</thead>
			<c:forEach items="${survey}" var="sur">
			<tr>
				<th>${sur.loginId}</th>
				<th>${sur.borrower}</th>
				<th>${sur.facilityCode}</th>
				<th>${sur.question1}</th>
				<th>${sur.question2}</th>
				<th>${sur.question3}</th>
				<th>${sur.question4}</th>
				<th>${sur.question5}</th>
			</tr>
			</c:forEach>
			
		</table>
	</div>
</body>

</html>