<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title><spring:message code="user.insert.title"/></title>
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
	<h2><spring:message code="user.insert.title"/></h2>
	<form:form commandName="user">
		<form:errors element="div" class="error-color"/>
		���̵� : <form:input path="id"/>
		<form:errors path="id" class="error-color"/><br>
		��й�ȣ : <form:password path="passwd"/>
		<form:errors path="passwd" class="error-color"/><br>
		�̸� : <form:input path="name"/>
		<form:errors path="name" class="error-color"/><br>
		<input type="submit" value="����">
	</form:form>
</div>
</body>
</html>