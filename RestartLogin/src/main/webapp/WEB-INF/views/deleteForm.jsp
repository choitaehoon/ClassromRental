<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title><spring:message code="user.delete.title"/></title>
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
	<h2><spring:message code="user.delete.title"/></h2>
	<form action="deletePro.do">
		<input type="hidden" name="id" value="${param.id}">
		<input type="submit" value="삭제할까요?">
		<input type="button" value="취소" onclick="location.href='list.do'">
	</form>
</div>
</body>
</html>