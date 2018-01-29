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
	function sub()
	{
		$("input[name=q1]").attr("readonly",true);
		$("input[name=t1]").attr("disabled",true);
	}
</script>

</head>
<body>
<!--설문지 정보.jsp -->
	<form action="classroomInfo">
		<strong>설문지 조사</strong><br/>
		1.파손된 물건이 없습니까? &nbsp; 
			예<input type="radio" name="q1"> 
			아니오<input type="radio" name="q1"><br/>
			<input type="text" id="t1" name="text1" style="width:500px; height:20px;"><br/>
		2.문을 제대로 닫고 갔습니까?  &nbsp; 예<input type="radio" name="q2"> 아니오<input type="radio" name="q2"><br/>
			<input type="text" name="text2" style="width:500px; height:20px;"><br/>
		3.물건을 제자리에 놓았습니까?  &nbsp; 예<input type="radio" name="q3"> 아니오<input type="radio" name="q3"><br/>
			<input type="text" name="text3" style="width:500px; height:20px;"><br/>
		4.의자,책상 등 잘 정리하고 갔습니까?  &nbsp; 예<input type="radio" name="q4"> 아니오<input type="radio" name="q4"><br/>
			<input type="text" name="text4" style="width:500px; height:20px;"><br/>
		5.온,냉방시설을 제대로 끄고 갔습니까?  &nbsp; 예<input type="radio" name="q5"> 아니오<input type="radio" name="q5"><br/>
			<input type="text" name="text5" style="width:500px; height:20px;"><br/><br/>
		<input type="submit" value="완료">
	</form>
	
</body>
</html>