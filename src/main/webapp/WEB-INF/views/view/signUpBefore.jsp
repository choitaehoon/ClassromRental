<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
<script src="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/js/bootstrap.min.js">
</script>
<style type="text/css">
	div{
		width:600px;
		margin:0 auto;
	}
</style>
</head>
<body>
<!-- 회원가입하는 창 -->
<h1>회원가입</h1>
<div>
	<form action="signUpAfter" method=post>
			<label>아이디 : </label>
			<input type="text" name="loginId"><br/>
			
			<label>비밀번호 :</label>
			<input type="password" name="password"><br/>
			
			<label>이름: </label>
			<input type="text" name="name"><br/>
			
			<label>이메일: </label>
			<input type="text" name="email"><br/>
			
			<label>사용자 유형</label> 
			<select name="userType">
			<option value="관리자">관리자</option>
			<option value="교수">교수</option>
			<option value="학생">학생</option> 
			</select>
			<br/>
			
			<label>학과</label>
			<select name="departmentId">
			<option value="1">소프트웨어공학과</option>
			<option value="2">컴퓨터공학과</option>
			<option value="3">정보통신공학과</option>
			<option value="4">글로컬IT학과</option>
			</select>
			<br/>
			 
		<input type="submit" class="btn btn-primary" value="전송">
	</form>
</div>
</body>
</html>