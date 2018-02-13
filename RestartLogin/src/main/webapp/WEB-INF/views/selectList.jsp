<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title><spring:message code="user.list.title"/></title>
<style type="text/css">
	table{
		width:600px;
		margin:0 auto;
	}
</style>
</head>
<body>
	<h2 align="center"><spring:message code="user.list.title"/></h2>
	<table>
		<tr>
			<td align="right">
				<c:if test="${!empty userId}">
					${userId} 로그인 중(<a href="logout.do">로그아웃</a>)
				</c:if>
				<c:if test="${empty userId}">
					<a href="login.do">로그인하기</a>
				</c:if>
				<a href="insert.do">등록</a>
			</td>
		</tr>
	</table>
	<c:if test="${count == 0}">
		<div align="center">출력할 내용이 없습니다.</div>
	</c:if>
	<c:if test="${count > 0}">
		<table border="1">
			<tr>
				<th width="100">아이디</th>
				<th width="100">비밀번호</th>
				<th width="200">이름</th>
				<th width="200">가입일자</th>
			</tr>
			<c:forEach var="member" items="${list}">
				<tr>
					<td width="100"><a href="detail.do?id=${user.id}">${user.id}</a></td>
					<td width="100">${user.passwd}</td>
					<td width="200">${user.name}</td>
					<td width="200">${user.reg_date}</td>
				</tr>
			</c:forEach>
		</table>
		<table>
			<tr>
				<td align="center">${pagingHtml}</td>
			</tr>
		</table>
	</c:if>
</body>
</html>