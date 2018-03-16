<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script>
	function test()
	{
		var title = $('#title').val();
		var textarea = document.getElementById('context').value;
		var currentTime = document.getElementById('currentTime').value;
		var endTime = document.getElementById('endTime').value;
		var idDate = document.getElementById('datepicker').value;
		var facilityCode = $('#facilityCode').val();
		
		document.classroomRental.title.value=title;
		document.classroomRental.textarea.value=textarea;
		document.classroomRental.currentTime.value=currentTime;
		document.classroomRental.endTime.value=endTime;
		document.classroomRental.idDate.value=idDate;
		document.classroomRental.facilityCode.value=facilityCode;
		classroomRental.submit();
	}
	
	$(function(){
		$("#datepicker").datepicker({
	        monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        dayNames : ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesShort : ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesMin : ['일', '월', '화', '수', '목', '금', '토'],
	        
	        dateFormat: 'yy-mm-dd',
	        inline:true,
	        lang:'ru',
	        
			changeMonth : true,
			changeYear : true,
			nextText: 'next',
			prevText: 'prev', 
			minDate: 0
		}); //end datepicker
	}); //end
</script>

<style>
 	#a
 	{
 		position: absolute;
/*  		margin:120px; */
 		right:280px; 
 		top: 17%;
 	}
 	#submitId
 	{
 		position: absolute;
 		right:500px;
 		top: 100%;
 	}
 	#list
 	{
 		position: absolute;
 		right:360px;
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
			빌려주는날 &nbsp;&nbsp;
			<input type="text" name="idDate" id="datepicker" placeholder="날짜 선택">
				<select name="currentTime" id="currentTime">
					<option value="09:00:00">09:00:00</option>
					<option value="10:00:00">10:00:00</option>
					<option value="11:00:00">11:00:00</option>
					<option value="12:00:00">12:00:00</option>
					<option value="13:00:00">13:00:00</option>
					<option value="14:00:00">14:00:00</option>
					<option value="15:00:00">15:00:00</option>
					<option value="16:00:00">16:00:00</option>
					<option value="17:00:00">17:00:00</option>
					<option value="18:00:00">18:00:00</option>
					<option value="19:00:00">19:00:00</option>
					<option value="20:00:00">20:00:00</option>
					<option value="21:00:00">21:00:00</option>
					<option value="22:00:00">22:00:00</option>
				</select>
				to
				<select name="endTime" id="endTime">
					<option value="09:00:00">09:00:00</option>
					<option value="10:00:00">10:00:00</option>
					<option value="11:00:00">11:00:00</option>
					<option value="12:00:00">12:00:00</option>
					<option value="13:00:00">13:00:00</option>
					<option value="14:00:00">14:00:00</option>
					<option value="15:00:00">15:00:00</option>
					<option value="16:00:00">16:00:00</option>
					<option value="17:00:00">17:00:00</option>
					<option value="18:00:00">18:00:00</option>
					<option value="19:00:00">19:00:00</option>
					<option value="20:00:00">20:00:00</option>
					<option value="21:00:00">21:00:00</option>
					<option value="22:00:00">22:00:00</option>
				</select>
			<br/>
			강의실 &nbsp;&nbsp;<input type="text" id="facilityCode" placeholder="강의실">
			<input type="submit" id="submitId" class="btn btn-primary" value="저장" onclick="test();">
			<input type="button" id="list" class="btn btn-default" value="목록으로 가기">
	</div>
	
	<form action="writeSubmit" name="classroomRental">
		<input type="hidden" name="id" value="${user.id}">
		<input type="hidden" name="loginId" value="${user.loginId}">
		<input type="hidden" name="title" value="">
		<input type="hidden" name="textarea" value="">
		
		<input type="hidden" name="currentTime" value="">
		<input type="hidden" name="endTime" value="">
		<input type="hidden" name="idDate" value="">
		<input type="hidden" name="request" value="1">
		<input type="hidden" name="facilityCode" value="">
	</form>
</body>

</html>