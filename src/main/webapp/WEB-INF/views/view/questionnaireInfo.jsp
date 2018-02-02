<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
function sub(){
	 document.form.q1[0].disabled = true;
	 document.form.q1[1].disabled = true;
	//라디오 버튼이 배열로 들어간다는 것이 핵심
	 document.form.text1.disabled    = true;
	}
-->
</script>

</head>
<body>
<!--설문지 정보.jsp -->
<!--1. onClick을 자바스크립트로 변경하기 -->
	<form action="classroomInfo">
		<strong>설문지 조사</strong><br/>
		1.파손된 물건이 있습니까? &nbsp; 
			예<input type="radio" name="q1" onClick="text1.disabled=false"> 
			아니오<input type="radio" name="q1" onClick="text1.disabled=true"><br/>
			<input type="text" id="t1" name="text1" style="width:500px; height:20px;"><br/>
		2.문을 제대로 닫고 갔습니까?  &nbsp; 
			예<input type="radio" name="q2" onClick="text2.disabled=true"> 
			아니오<input type="radio" name="q2" onClick="text2.disabled=false"><br/>
			<input type="text" name="text2" style="width:500px; height:20px;"><br/>
		3.물건을 제자리에 놓았습니까?  &nbsp; 
			예<input type="radio" name="q3" onClick="text3.disabled=true"> 
			아니오<input type="radio" name="q3" onClick="text3.disabled=false"><br/>
			<input type="text" name="text3" style="width:500px; height:20px;"><br/>
		4.의자,책상 등 잘 정리하고 갔습니까?  &nbsp; 
			예<input type="radio" name="q4" onClick="text4.disabled=true"> 
			아니오<input type="radio" name="q4" onClick="text4.disabled=false"><br/>
			<input type="text" name="text4" style="width:500px; height:20px;"><br/>
		5.온,냉방시설을 제대로 끄고 갔습니까?  &nbsp; 
			예<input type="radio" name="q5" onClick="text5.disabled=true"> 
			아니오<input type="radio" name="q5" onClick="text5.disabled=false"><br/>
			<input type="text" name="text5" style="width:500px; height:20px;"><br/><br/>
		<input type="submit" value="완료">
	</form>
	
</body>
</html>