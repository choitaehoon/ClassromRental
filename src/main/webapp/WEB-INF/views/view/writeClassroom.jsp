<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	function test()
	{
		var title = $('#title').val();
		var textarea = document.getElementById('context').value;
		
		document.classroomRental.title.value=title;
		document.classroomRental.textarea.value=textarea;
		classroomRental.submit();
	}
</script>
<style>
 	#a
 	{
 		position: absolute;
/*  		margin:120px; */
 		right:500px;
 		top: 17%;
 	}
 	#submitId
 	{
 		position: absolute;
 		right:280px;
 		top: 100%;
 	}
 	#list
 	{
 		position: absolute;
 		right:150px;
 		top: 100%;
 	}
</style>
</head>

<body>
	<hr/>
	<div id="a">
		<h1>글작성</h1><br/>
			<input type="text" style="width:500px;" id="title" placeholder="제목을 입력하세요"><br/>
			<textarea rows="10" style="width:97%;" id="context" name="sub" placeholder="내용을입력하세요"></textarea>
			<input type="text" style="width:200" placeholder="시작시간">
			<input type="text" style="width:200" placeholder="종료시간">
			<input type="submit" id="submitId" class="btn btn-primary" value="저장" onclick="test();">
			<input type="button" id="list" class="btn btn-default" value="목록으로 가기">
	</div>
	
	<form action="writeSubmit" name="classroomRental">
		<input type="hidden" name="id" value="${user.id}">
		<input type="hidden" name="loginId" value="${user.loginId}">
		<input type="hidden" name="title" value="">
		<input type="hidden" name="textarea" value="">
	</form>
</body>

</html>