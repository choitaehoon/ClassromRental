<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html>
<html>

<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script>
		function sub(borrower,idDate,currentTime,endTime,facilityCode)
		{
			var borrow = borrower;
			var date = idDate;
			var current = currentTime;
			var end = endTime;
			var facility = facilityCode;
			
			document.questionnaireInfo2.borrower.value = borrow;
			document.questionnaireInfo2.idDate.value = date;
			document.questionnaireInfo2.currentTime.value = current;
			document.questionnaireInfo2.endTime.value = end;
			document.questionnaireInfo2.facilityCode.value = facility;
			
			questionnaireInfo2.submit();
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
						<th>강의실</th>
						<th>시작 시간</th>
						<th>종료 시간</th>
					</tr>
				</thead>
				<c:forEach items="${swap}" var="swa">
					<tr>
						<th>${swa.borrower}</th>
						<th>${swa.idDate}</th>
						<th>${swa.facilityCode}</th>
						<th>${swa.currentTime}</th>
						<th>${swa.endTime}</th>
						<th><input type="button" value="설문지 조사" 
						class="btn btn-link btn-sm"
						onclick="sub('${swa.borrower}','${swa.idDate}','${swa.currentTime}',
						'${swa.endTime}','${swa.facilityCode}');">
						</th>
					</tr>
				</c:forEach>
			</table>
		</div>
		
		<form action="questionnaireInfo2" name="questionnaireInfo2"> 
			<input type="hidden" name="borrower" value="">
			<input type="hidden" name="idDate" value="">
			<input type="hidden" name="currentTime" value="">
			<input type="hidden" name="endTime" value="">
			<input type="hidden" name="facilityCode" value="">
			<input type="hidden" name="loginId" value="${user.loginId}">
		</form>
		
<!-- 	</div> -->
<!-- </div> -->
</body>

</html>