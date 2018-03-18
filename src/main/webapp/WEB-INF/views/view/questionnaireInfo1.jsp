<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html>
<html>

<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script>
		function sub(borrower,idDate,currentTime,endTime)
		{
			var borrow = borrower;
			var date = idDate;
			var current = currentTime;
			var end = endTime;
			alert(borrow+" "+date+" "+current+" "+end);
		}
	</script>
</head>

<body>
	<hr/>
	<div class="container">
<!-- 		 <div class="row justify-content-md-center"> -->
<!-- 			<div class="col-md-auto"> -->
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
				<c:forEach items="${swap}" var="swa">
					<tr>
						<th>${swa.borrower}</th>
						<th>${swa.idDate}</th>
						<th>${swa.currentTime}</th>
						<th>${swa.endTime}</th>
						<th><input type="button" value="설문지 조사" 
						class="btn btn-link btn-sm"
						onclick="sub('${swa.borrower}','${swa.idDate}','${swa.currentTime}',
						'${swa.endTime}');">
						</th>
					</tr>
				</c:forEach>
			</table>
		</div>
<!-- 	</div> -->
<!-- </div> -->
</body>

</html>