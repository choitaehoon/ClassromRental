<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title><spring:message code="user.detail.title" arguments="${user.id}"/></title>
<style type="text/css">
	div{
		width:600px;
		margin:0 auto;
	}
</style>
</head>
<body>
<div>
	<h2><spring:message code="member.detail.title" arguments="${user.id}"/></h2>
	<p>
		���̵� : ${user.id}<br>
		��й�ȣ : ${user.passwd}<br>
		�̸� : ${user.name}<br>
		���Գ�¥ : ${user.reg_date}<br>
		<a href="list.do">��Ϻ���</a>
		<a href="update.do?id=${user.id}">����</a>
		<a href="delete.do?id=${user.id}">����</a>
	</p>
</div>
</body>
</html>