<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html >
<html>
<head>
	<script>
		function sub()
		{
			var contex = document.getElementById('context1').value;
			
			document.writeSub.context.value = contex;
			writeSub.submit();
		}
	</script>
</head>
<body>
<hr>
<div class="container">
	<h1>작성하기</h1>
	<form action="write" name="writeSub">
			<tr>
				<td> <input type="text" name="id" style="width:500px;" size = "50" placeholder="${user.loginId}"></td>
				<br/>
			</tr>
				<textarea rows="10" style="width:45%;"  id="context1" placeholder="내용입력하세요"></textarea>
				<input type="hidden" name="context" value="">
			<br/>				
			<tr>
				<td><input type="hidden" name="loginId" value="${user.loginId}"></td>
				<td colspan="2"> <input type="submit" class="btn btn-link btn-sm" onclick="sub();" value="입력"> &nbsp;&nbsp; <a href="list?loginId=${user.loginId}">목록보기</a></td>
			</tr>
	</form>
</div>
</body>

</html>