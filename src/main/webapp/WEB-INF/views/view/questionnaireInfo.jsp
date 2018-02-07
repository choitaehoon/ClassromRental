<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
form 
{
	text-align:center;
}
 </style>


<script src="https://code.jquery.com/jquery-1.12.4.min.js">
</script>
<script type="text/javascript">
<!--
	function sub()
	{
		$("input[name=q1]").attr("readonly",true);
		$("input[name=t1]").attr("disabled",true);
	}
-->
</script>
</head>
<body>
	<!--설문지 정보.jsp -->
	<!--1. onClick을 자바스크립트로 변경하기 -->
	<form action="transmit" method="post">
		<strong>설문지 조사</strong><br /> 
		1.파손된 물건이 있습니까? &nbsp; 예
			<input type="radio" name="q1" onClick="question1.disabled=false"> 
			아니오<input type="radio" name="q1" onClick="question1.disabled=true"><br />
					<input type="text" name="question1" style="width: 500px; height: 20px;"><br />
					
		2.문을 제대로 닫고 갔습니까?
		&nbsp; 예
			<input type="radio" name="q2" onClick="question2.disabled=true">
			 아니오<input type="radio" name="q2" onClick="question2.disabled=false"><br />
					<input type="text" name="question2" style="width: 500px; height: 20px;"><br />
					
		3.물건을 제자리에 놓았습니까?
		&nbsp; 예
			<input type="radio" name="q3" onClick="question3.disabled=true"> 
			아니오<input type="radio" name="q3" onClick="question3.disabled=false"><br />
					 <input type="text" name="question3" style="width: 500px; height: 20px;"><br />
					 
		4.의자,책상 등 잘 정리하고 갔습니까? &nbsp; 예
			<input type="radio" name="q4" onClick="question4.disabled=true"> 
			아니오<input type="radio" name="q4" onClick="question4.disabled=false"><br /> 
				<input type="text" name="question4" style="width: 500px; height: 20px;"><br />
				
		5.온,냉방시설을 제대로 끄고 갔습니까? &nbsp; 예
		<input type="radio" name="q5" onClick="question5.disabled=true"> 
			아니오<input type="radio" name="q5" onClick="question5.disabled=false"><br /> 
			<input type="text" name="question5" style="width: 500px; height: 20px;"><br />
		<br /> <input type="submit" value="전송">
	</form>
</body>
</html>