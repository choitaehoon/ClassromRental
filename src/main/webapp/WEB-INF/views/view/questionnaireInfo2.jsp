<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
form
{
	text-align:center;
}

#ddd
{
	width:1200px;
 	margin:0 auto;
 	height:30px; 
}

 </style>
</head>
<body>
<div id="ddd">
	<!--설문지 정보.jsp -->
	<!--1. onClick을 자바스크립트로 변경하기 -->
	<hr/>
	<h1>설문지 작성</h1><br/>
	<h4>빌린 사람</h4>
	<input class="form-control" type="text" placeholder="${swap.borrower}" readonly> <br/>
	<h4>강의실</h4>
	<input class="form-control" type="text" placeholder="${swap.facilityCode}" readonly> <br/>
	<h4>빌린 날짜</h4>
	<input class="form-control" type="text" placeholder="${swap.idDate}" readonly> <br/>
	<h4>시작 시간</h4>
	<input class="form-control" type="text" placeholder="${swap.currentTime}" readonly> <br/>
	<h4>종료 시간</h4>
	<input class="form-control" type="text" placeholder="${swap.endTime}" readonly> <br/>
</div>
<div id="eee">
	<form action="transmit" method="post">
	
	<h1>평가</h1><br/>
	<input type="hidden" name="loginId" value="${user.loginId}">
	<input type="hidden" name="facilityCode" value="${swap.facilityCode}">
	<input type="hidden" name="idDate" value="${swap.idDate}">
	<input type="hidden" name="currentTime" value="${swap.currentTime}">
	<input type="hidden" name="endTime" value="${swap.endTime}">
	<input type="hidden" name="confirm" value="1">
	<input type="hidden" name="borrower" value="${swap.borrower}">
	
		1.파손된 물건이 있습니까? &nbsp; 예
			<input type="radio" name="q1" onClick="question1.disabled=false"> 
			아니오<input type="radio" name="q1" onClick="question1.disabled=true"><br />
					<input type="text" name="question1" style="width: 500px; height: 20px;"><br />
		<br/>			
		2.문을 제대로 닫고 갔습니까?
		&nbsp; 예
			<input type="radio" name="q2" onClick="question2.disabled=true">
			 아니오<input type="radio" name="q2" onClick="question2.disabled=false"><br />
					<input type="text" name="question2" style="width: 500px; height: 20px;"><br />
		<br/>			
		3.물건을 제자리에 놓았습니까?
		&nbsp; 예
			<input type="radio" name="q3" onClick="question3.disabled=true"> 
			아니오<input type="radio" name="q3" onClick="question3.disabled=false"><br />
					 <input type="text" name="question3" style="width: 500px; height: 20px;"><br />
		<br/>			 
		4.의자,책상 등 잘 정리하고 갔습니까? &nbsp; 예
			<input type="radio" name="q4" onClick="question4.disabled=true"> 
			아니오<input type="radio" name="q4" onClick="question4.disabled=false"><br /> 
				<input type="text" name="question4" style="width: 500px; height: 20px;"><br />
		<br/>		
		5.온,냉방시설을 제대로 끄고 갔습니까? &nbsp; 예
		<input type="radio" name="q5" onClick="question5.disabled=true"> 
			아니오<input type="radio" name="q5" onClick="question5.disabled=false"><br /> 
			<input type="text" name="question5" style="width: 500px; height: 20px;"><br />
		<br /> <input type="submit" class="btn btn-primary" value="전송">
		</form>
</div>
<%-- <%@ include file="/WEB-INF/views/view/footer.jsp"%> --%>
</body>
</html>