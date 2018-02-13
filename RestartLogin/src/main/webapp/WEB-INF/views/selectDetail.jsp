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
		아이디 : ${user.id}<br>
		비밀번호 : ${user.passwd}<br>
		이름 : ${user.name}<br>
		가입날짜 : ${user.reg_date}<br>
		<a href="list.do">목록보기</a>
		<a href="update.do?id=${user.id}">수정</a>
		<a href="delete.do?id=${user.id}">삭제</a>
	</p>
</div>
</body>
</html>