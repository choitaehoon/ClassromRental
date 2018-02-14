<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	div{
		width:600px;
		margin:0 auto;
	}
	.error-color{
		color:red;
	}
</style>
</head>
<body>
<div>
	<form action="signUpAfter">
		<div class="error-color"></div>
			아이디 : <input type="text" name="id"><br/>
			비밀번호 :<input type="password" name="passwd"><br/>
		<input type="submit" value="전송">
	</form>
</div>
</body>
</html>