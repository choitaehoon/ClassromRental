<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html>
<html>
<head>

<style>
#center {
	position: absolute;
	top: 37.9%;
	left: 30%;
	width: 300px;
	height: 200px;
	margin-top: -150px;
	margin-left: -100px;
}
</style>
</head>
<!-- subMenu 
			<ul class="submenu">
				<li><a
					href="http://unikys.tistory.com/category/Programming%20Lecture/%EC%86%8D%EA%B9%8A%EC%9D%80%20%EC%9E%90%EB%B0%94%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8%20%EA%B0%95%EC%A2%8C"
					class="submenuLink longLink">안녕하세요</a></li>
				<li><a
					href="http://unikys.tistory.com/category/Programming%20Lecture/%EB%B0%91%EB%B0%94%EB%8B%A5%EB%B6%80%ED%84%B0%20%ED%99%88%ED%8E%98%EC%9D%B4%EC%A7%80%20%EB%A7%8C%EB%93%A4%EA%B8%B0"
					class="submenuLink longLink">소통해요</a></li>
				<li><a
					href="http://unikys.tistory.com/category/Programming%20Lecture/Android%28%EC%95%88%EB%93%9C%EB%A1%9C%EC%9D%B4%EB%93%9C%29%20%EC%95%B1%20%EA%B0%9C%EB%B0%9C"
					class="submenuLink longLink">안드로이드 앱 개발</a></li>
					
			</ul></li>-->
<!--  subMenu
			<ul class="submenu">
				<li><a
					href="http://unikys.tistory.com/tag/%EC%9E%90%EB%B0%94%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8"
					class="submenuLink">자바스크립트</a></li>
				<li><a href="http://unikys.tistory.com/tag/%EA%B0%95%EC%A2%8C"
					class="submenuLink">강좌</a></li>
				<li><a href="http://unikys.tistory.com/tag/K100D"
					class="submenuLink">K100D</a></li>
			</ul></li>
			 -->

<div id="dvd">
	<!-- 강의실 정보.jsp -->
	<table>
		<tr>
			<td>건물</td>
			<td></td>
		</tr>
		<tr>
			<td>1.승연관</td>
			<td><a href="seungyeon">선택</a></td>
		</tr>
		<tr>
			<td>2.일만관</td>
			<td><a href="ilmangwan">선택</a></td>
		</tr>
		<tr>
			<td>3.월당관</td>
			<td><a href="woldanggwan">선택</a></td>
		</tr>
		<tr>
			<td>4.열람관</td>
			<td><a href="yeollamgwan">선택</a></td>
		</tr>
		<tr>
			<td>6.이천환관</td>
			<td><a href="icheoneunuch">선택</a></td>
		</tr>
		<tr>
			<td>7.새천년관</td>
			<td><a href="millenniumcenter">선택</a></td>
		</tr>
		<tr>
			<td>9.성미가엘성당</td>
			<td><a href="saintMichael">선택</a></td>
		</tr>
		<tr>
			<td>11.미가엘관</td>
			<td><a href="Migaelgwan">선택</a></td>
		</tr>
		<tr>
			<td>20.운동장</td>
			<td><a href="schoolyard">선택</a></td>
		</tr>
	</table>
</div>


<div id="center">
	<!-- 강의실 정보.jsp -->
	<!-- 객체가 넘어온걸 확인하면 코드를 줄일 수  있을거같은데 그건 다 구현하고 생각하기 -->
	<table>
		<tr>
			<td>시설코드</td>
			<td>시설명</td>
			<td>인원</td>
			<td>방식</td>
			<td></td>
		</tr>
		<c:forEach items="${seungyeon}" var="seung">
			<tr>
				<td>${seung.facilityCode}</td>
				<td>${seung.facilityName}</td>
				<td>${seung.person}</td>
				<td>${seung.way}</td>
				<td><a href="seung?facilityCode=${seung.facilityCode}">선택</a></td>
			</tr>
			</c:forEach>
		<c:forEach items="${ilmangwan}" var="ilmang">
			<tr>
				<td>${ilmang.facilityCode2}</td>
				<td>${ilmang.facilityName2}</td>
				<td>${ilmang.person2}</td>
				<td>${ilmang.way2}</td>
				<td><a href="">선택</a></td>
			</tr>
			</c:forEach>
		<c:forEach items="${woldang}" var="woldang">
			<tr>
				<td>${woldang.facilityCode3}</td>
				<td>${woldang.facilityName3}</td>
				<td>${woldang.person3}</td>
				<td>${woldang.way3}</td>
				<td><a href="">선택</a></td>
			</tr>
			</c:forEach>
		<c:forEach items="${message}" var="mes">
			<tr>
				<td>${mes}</td>
			</tr>
			</c:forEach>
		<c:forEach items="${icheon}" var="in">
			<tr>
				<td>${in.facilityCode4}</td>
				<td>${in.facilityName4}</td>
				<td>${in.person4}</td>
				<td>${in.way4}</td>
				<td><a href="">선택</a></td>
			</tr>
			</c:forEach>
		<c:forEach items="${mill}" var="mil">
			<tr>
				<td>${mil.facilityCode5}</td>
				<td>${mil.facilityName5}</td>
				<td>${mil.person5}</td>
				<td>${mil.way5}</td>
				<td><a href="">선택</a></td>
			</tr>
			</c:forEach>
		<c:forEach items="${saint}" var="sain">
			<tr>
				<td>${sain.facilityCode6}</td>
				<td>${sain.facilityName6}</td>
				<td>${sain.person6}</td>
				<td>${sain.way6}</td>
				<td><a href="">선택</a></td>
			</tr>
			</c:forEach>
		<c:forEach items="${migael}" var="mig">
			<tr>
				<td>${mig.facilityCode7}</td>
				<td>${mig.facilityName7}</td>
				<td>${mig.person7}</td>
				<td>${mig.way7}</td>
				<td><a href="">선택</a></td>
			</tr>
			</c:forEach>
		<c:forEach items="${mes}" var="mes">
			<tr>
				<td>${mes}</td>
			</tr>
			</c:forEach>
		<c:forEach items="${mmm}" var="me">
			<tr>
				<td>들어오나 확인</td>
				<td>${me.dataInfo}</td>
			</tr>
			</c:forEach>
	</table>
</div>

</body>
</html>