<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html >
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script>
	//양호
		function nice(borrower, facilityCode, currentTime, endTime)
		{
			var borro = borrower;
			var facility = facilityCode;
			var current = currentTime;
			var end = endTime;
			
			document.nice1.borrower.value = borro;
			document.nice1.facilityCode.value = facility;
			document.nice1.currentTime.value = current;
			document.nice1.endTime.value = end;
			
			nice1.submit();
		}
	//경고	
		function warning(borrower, facilityCode, currentTime, endTime)
		{
			var borro = borrower;
			var facility = facilityCode;
			var currentTime = currentTime;
			var end = endTime;
			
			document.warning1.borrower.value = borro;
			document.warning1.facilityCode.value = facility;
			document.warning1.currentTime.value = current;
			document.warning1.endTime.value = end;
			warning1.submit();
		}
	//강등
		function demotion(borrower, facilityCode, currentTime, endTime)
		{
			var borro = borrower;
			var facility = facilityCode;
			var currentTime = currentTime;
			var end = endTime;
			
			document.demotion1.borrower.value = borro;
			document.demotion1.facilityCode.value = facility;
			document.demotion1.currentTime.value = current;
			document.demotion1.endTime.value = end;
			demotion1.submit();
		}
	</script>
</head>

<body>
	<div class="container">
	<hr/>
		<h1>설문지 조사</h1>
		<h6 style="	width:500px;margin:0 auto;height:30px; ">평가 기준</h6>
		<h6 style="	width:500px;margin:0 auto;height:30px; ">0~2개 양호 / 3~4개 -경고 / 5개 -강등</h6>
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
					<th>양호</th>
					<th>경고</th>
					<th>강등</th>
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
				<th>
				<input type="button" value="양호" 
				class="btn btn-link btn-sm"
				onclick="nice('${sur.borrower}','${sur.facilityCode}',
				'${sur.currentTime}','${sur.endTime}');">
				</th>
				
				<th><input type="button" value="경고" class="btn btn-link btn-sm"
				onclick="warning('${sur.borrower}','${sur.facilityCode}',
				'${sur.currentTime}','${sur.endTime}');"
				></th>
				
				<th><input type="button" value="강등" class="btn btn-link btn-sm"
				onclick="demotion('${sur.borrower}','${sur.facilityCode}',
				'${sur.currentTime}','${sur.endTime}');"
				></th>
			</tr>
			</c:forEach>
			
		</table>
	</div>
	
	<form action="nice" name="nice1">
		<input type="hidden" name="loginId" value="${user.loginId}">
		<input type="hidden" name="borrower" value="">
		<input type="hidden" name="facilityCode" value="">
		<input type="hidden" name="currentTime" value="">
		<input type="hidden" name="endTime" value="">
	</form>
	
	<form action="warning" name="warning1">
		<input type="hidden" name="loginId" value="${user.loginId}">
		<input type="hidden" name="borrower" value="">
		<input type="hidden" name="facilityCode" value="">
		<input type="hidden" name="currentTime" value="">
		<input type="hidden" name="endTime" value="">
	</form>
	
	<form action="demotion" name="demotion1">
		<input type="hidden" name="loginId" value="${user.loginId}">
		<input type="hidden" name="borrower" value="">
		<input type="hidden" name="facilityCode" value="">
		<input type="hidden" name="currentTime" value="">
		<input type="hidden" name="endTime" value="">
	</form>
</body>

</html>