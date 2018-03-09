<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
<style>
td {
	border: 1px solid gray;
}

tr:nth-child(1) {
	background-color: #aaaaaa;
	color: white;
	font-weight: bold;
}

form {
	text-align: center;
}

#topMemu {
	height: 300px;
	width: 850px;
}

#topMenu ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
}

#topMenu ul li {
	color: white;
	background-color: #2d2d2d;
	float: left;
	line-height: 30px;
	vertical-align: middle;
	text-align: center;
	position: relative;
	left: 17%
}

.menuLink, .submenuLink {
	text-decoration: none;
	display: block;
	width: 150px;
	font-size: 12px;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum;
}

.menuLink {
	color: white;
}

.topMenuLi:hover .menuLink {
	color: red;
	background-color: #4d4d4d;
}

.longLink {
	width: 190px;
}

.submenuLink {
	color: #2d2d2d;
	background-color: white;
	border: solid 1px black;
	margin-right: -1px;
}

.submenu {
	position: absolute;
	height: 0px;
	overflow: hidden;
	transition: height .2s;
	-webkit-transition: height .2s;
	-moz-transition: height .2s;
	-o-transition: height .2s;
	width: 574px;
}

.submenu li {
	display: inline-block;
}

.topMenuLi:hover .submenu {
	height: 32px;
}

.submenuLink:hover {
	color: red;
	background-color: #dddddd;
}

#dvd {
	float: left;
	margin-right: 5px;
	width: 20%;
	height: 100px;
	text-align: center;
	padding-top: 70px;
	position: absolute;
}

#dva {
	margin-top: 5px;
	margin-bottom: 5px;
	width: 100%;
	height: 30px;
	border-top: 1px;
	padding: 5px;
	list-style: none;
}
#abcd
{
	text-align:center;
}
</style>

</head>
<body>
<div id="abcd">${user.loginId}님환영합니다.
	<input type="button" class="btn btn-primary" value="로그아웃"
	onclick="location.href='http://localhost:8080/controller/view/login'">
	<input type="button" class="btn btn-primary" value="수정하기"
	onclick="location.href='http://localhost:8080/controller/view/membershipModification?loginId=${user.loginId}'">
	<c:if test="${user.userType eq '관리자'}">
	   <input type="button" class="btn btn-success" value="승인요청목록"
         onclick="location.href='http://localhost:8080/controller/view/showStaff?loginId=${user.loginId}'">
    </c:if>
    <c:if test="${user.userType != '관리자'}">
   <input type="button" class="btn btn-success" value="승인요청"
         onclick="location.href='http://localhost:8080/controller/view/approvalPlease?loginId=${user.loginId}&id=${user.id}'">
         </c:if>
</div>
<form method="post">
	<div id="dva">
		<nav id="topMenu">
			<ul>
			  <c:if test="${user.userType != '관리자'}">
				<li class="topMenuLi"><a class="menuLink"
					href="grade?loginId=${user.loginId}">내 등급 확인</a>
									<li>|</li></c:if>
				<li class="topMenuLi"><a class="menuLink"
					href="questionnaireInfo?loginId=${user.loginId}">설문지 작성하기</a></li>
				<li>|</li>
				<li class="topMenuLi"><a class="menuLink" 
					href="classroomInfo?loginId=${user.loginId}">강의실 대여 하기</a>
									<li>|</li>
				<li class="topMenuLi"><a class="menuLink"
					href="rent?loginId=${user.loginId}">강의실 빌려주기</a></li>
				<li>|</li>
				<li class="topMenuLi"><a class="menuLink"
					href="list?loginId=${user.loginId}">자유 게시판</a></li>
			</ul>
		</nav>
	</div>
</form>
<%@ include file="/WEB-INF/views/view/footer.jsp"%>
</body>
</html>