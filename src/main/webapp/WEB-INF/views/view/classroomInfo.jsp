<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-timepicker/1.8.1/jquery.timepicker.min.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-timepicker/1.8.1/jquery.timepicker.min.css"></script> -->

<script>
	$(function(){
		$("#datepicker").datepicker({
	        monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        dayNames : ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesShort : ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesMin : ['일', '월', '화', '수', '목', '금', '토'],
	        
	        dateFormat: 'yy-mm-dd',
	        inline:true,
	        lang:'ru',
	        
			changeMonth : true,
			changeYear : true,
			nextText: 'next',
			prevText: 'prev', 
			minDate: 0
		}); //end datepicker
	}); //end
	
	$(function(){
		$('#onselectExample1').timepicker({'timeFormat':'H:i:s'});
		$('#onselectExample2').timepicker({'timeFormat':'H:i:s'});
		
		$('#onselectExample1').on('changeTime', function() {
		});
		
		$('#onselectExample2').on('changeTime', function() {
		});
		
	});
	
	
</script>

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

#wapper 
{
	position: absolute;
	top:180px;
	right:250px;
}
</style>

<script type="text/javascript">
$(document).ready(function(){
	$('#check').on('click',function(){
		$.ajax({
			type: 'POST',
			url: './dateInfo',
			data: {
				"idDate": $('#datepicker').val(),
				"currentTime" : $('#onselectExample1').val(),
				"endTime": $('#onselectExample2').val(),
				"facilityCode": $('#selectByclassroom').val()
			},
			success:function(data){
				if(data == 0)
					alert("강의실 빌릴 수 있습니다");
				else
					alert("강의실 빌릴 수 없습니다");
			}
		}) //end ajax
		
		.then(function(){
			$.ajax({
				type: 'POST',
				url: './roomInfo',
				dataType : 'json',
				data: {
						"idDate": $('#datepicker').val(),
					"currentTime" : $('#onselectExample1').val(),
						"endTime": $('#onselectExample2').val(),
						"facilityCode": $('#selectByclassroom').val()
				},
				success:function(data){
					var text = JSON.stringify(data);
					if(text.length == 2) //비어있다면
						alert("이날 강의실이 비어있습니다");
					else
						alert(text+"빌려져 있습니다");
				}
			}) //end ajax
		}); //end then
	}); //end on
}); //end ready


</script>
</head>
<body>
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
			<td><a href="seungyeon?loginId=${user.loginId}">선택</a></td>
		</tr>
		<tr>
			<td>2.일만관</td>
			<td><a href="ilmangwan?loginId=${user.loginId}">선택</a></td>
		</tr>
		<tr>
			<td>3.월당관</td>
			<td><a href="woldanggwan?loginId=${user.loginId}">선택</a></td>
		</tr>
		<tr>
			<td>4.열람관</td>
			<td><a href="yeollamgwan?loginId=${user.loginId}">선택</a></td>
		</tr><!--없음 -->
		<tr>
			<td>6.이천환관</td>
			<td><a href="icheoneunuch?loginId=${user.loginId}">선택</a></td>
		</tr>
		<tr>
			<td>7.새천년관</td>
			<td><a href="millenniumcenter?loginId=${user.loginId}">선택</a></td>
		</tr>
		<tr>
			<td>9.성미가엘성당</td>
			<td><a href="saintMichael?loginId=${user.loginId}">선택</a></td>
		</tr>
		<tr>
			<td>11.미가엘관</td>
			<td><a href="Migaelgwan?loginId=${user.loginId}">선택</a></td>
		</tr>
		<tr>
			<td>20.운동장</td>
			<td><a href="schoolyard?loginId=${user.loginId}">선택</a></td>
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
<!-- 				<td><a -->
<%-- 					href="seung?facilityCode=${seung.facilityCode}&loginId=${user.loginId}">선택</a></td> --%>
				<%-- 				<td><a href="seung?facilityCode=${seung.facilityCode}&loginId=${user.loginId}">선택</a></td>			 --%>
			</tr>
		</c:forEach>
		<c:forEach items="${ilmangwan}" var="ilmang">
			<tr>
				<td>${ilmang.facilityCode}</td>
				<td>${ilmang.facilityName2}</td>
				<td>${ilmang.person2}</td>
				<td>${ilmang.way2}</td>
<!-- 				<td><a href="">선택</a></td> -->
			</tr>
		</c:forEach>
		<c:forEach items="${woldang}" var="woldang">
			<tr>
				<td>${woldang.facilityCode}</td>
				<td>${woldang.facilityName3}</td>
				<td>${woldang.person3}</td>
				<td>${woldang.way3}</td>
<!-- 				<td><a href="">선택</a></td> -->
			</tr>
		</c:forEach>
		<c:forEach items="${message}" var="mes">
			<tr>
				<td>${mes}</td>
			</tr>
		</c:forEach>
		<c:forEach items="${icheon}" var="in">
			<tr>
				<td>${in.facilityCode}</td>
				<td>${in.facilityName4}</td>
				<td>${in.person4}</td>
				<td>${in.way4}</td>
<!-- 				<td><a href="">선택</a></td> -->
			</tr>
		</c:forEach>
		<c:forEach items="${mill}" var="mil">
			<tr>
				<td>${mil.facilityCode}</td>
				<td>${mil.facilityName5}</td>
				<td>${mil.person5}</td>
				<td>${mil.way5}</td>
<!-- 				<td><a href="">선택</a></td> -->
			</tr>
		</c:forEach>
		<c:forEach items="${saint}" var="sain">
			<tr>
				<td>${sain.facilityCode}</td>
				<td>${sain.facilityName6}</td>
				<td>${sain.person6}</td>
				<td>${sain.way6}</td>
<!-- 				<td><a href="">선택</a></td> -->
			</tr>
		</c:forEach>
		<c:forEach items="${migael}" var="mig">
			<tr>
				<td>${mig.facilityCode}</td>
				<td>${mig.facilityName7}</td>
				<td>${mig.person7}</td>
				<td>${mig.way7}</td>
<!-- 				<td><a href="">선택</a></td> -->
			</tr>
		</c:forEach>
		<c:forEach items="${mes}" var="mes">
			<tr>
				<td>${mes}</td>
			</tr>
		</c:forEach>
	</table>
</div>

<div id="wapper">

날짜선택 <br/>
<form action="rentClass" method=post>
<input type="text" name="idDate" id="datepicker" placeholder="날짜 선택">
<input type="text" name="currentTime" id="onselectExample1" placeholder="시간 선택">
to
<input type="text" name="endTime" id="onselectExample2" placeholder="시간 선택"><br/>
강의실 선택<br/>
<input type="text" name="facilityCode" id="selectByclassroom" placeholder="강의실 선택"><br/>
사유
<br/>
<textarea rows="4" cols="50">

</textarea><br/>
<input type="hidden" name="id" value="${user.id}">
<input type="hidden" name="loginId" value="${user.loginId}">
<input type="hidden" name="approval" value="1">
<button type="button" id="check" class="btn btn-primary">조회하기</button>
<button type="submit" id="zzz" class="btn btn-primary">승인요청하기</button>
</form>

</div>
<!--  일단 날짜 선택이 데이터 보낸거 확인 후 작업 하기
<!-- 대여사유<br/> -->
<!-- <textarea name="textarea" rows="5" cols="10" ></textarea><br/> -->
<!-- 인원을적어주세요<br/> -->
<!-- <textarea name="textarea" rows="2" cols="10" ></textarea> -->
<!-- 신청자전화번호 -->
<!-- <input type="text"> -->
<%@ include file="/WEB-INF/views/view/footer.jsp"%>

</body>
</html>