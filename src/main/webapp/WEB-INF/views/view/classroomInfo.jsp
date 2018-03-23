<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-timepicker/1.8.1/jquery.timepicker.min.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-timepicker/1.8.1/jquery.timepicker.min.css"></script> -->

<script>
	$(function() {
		$("#datepicker").datepicker(
				{
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ],
					dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],

					dateFormat : 'yy-mm-dd',
					inline : true,
					lang : 'ru',

					changeMonth : true,
					changeYear : true,
					nextText : 'next',
					prevText : 'prev',
					minDate : 0
				}); //end datepicker
	}); //end

</script>

<style>
/* #center { */
/* 	position: absolute; */
/* 	top: 37.9%; */
/* 	left: 30%; */
/* 	width: 300px; */
/* 	height: 200px; */
/* 	margin-top: -150px; */
/* 	margin-left: -100px; */
/* } */
#wapper {
	position: absolute;
	top: 180px;
	right: 250px;
}

#a {
	position: absolute;
	/*  		margin:120px; */
	right: 180px;
	top: 17%;
}

#b {
	position: absolute;
	/*  		margin:120px; */
	right: 750px;
	top: 32%;
}

#c {
	position: absolute;
	/*  		margin:120px; */
	right: 410px;
	top: 70%;
}
</style>

<script type="text/javascript">
	$(document).ready(function() {
		$('#check').on('click', function() {
			$.ajax({
				type : 'POST',
				url : './dateInfo',
				data : {
					"idDate" : $('#datepicker').val(),
					"currentTime" : $('#currentTime').val(),
					"endTime" : $('#endTime').val(),
					"facilityCode" : $('#selectByclassroom').val()
				},
				success : function(data) {
					if (data == 0)
						alert("강의실 빌릴 수 있습니다");
					else
						alert("강의실 빌릴 수 없습니다");
				}
			}) //end ajax

			.then(function() {
				$.ajax({
					type : 'POST',
					url : './roomInfo',
					dataType : 'json',
					data : {
						"idDate" : $('#datepicker').val(),
						"currentTime" : $('#currentTime').val(),
						"endTime" : $('#endTime').val(),
						"facilityCode" : $('#selectByclassroom').val()
					},
					success : function(data) {
						var text = JSON.stringify(data);
						if (text.length == 2) //비어있다면
							alert("이날 강의실이 비어있습니다");
						else
							alert(text + "빌려져 있습니다");
					}
				}) //end ajax
			}); //end then
		}); //end on
	}); //end ready

	$(function() {
		$("#tabs").tabs();
	});
</script>
</head>
<body>


	<div id="a" class="container">
		<hr />
		<!-- 강의실 정보.jsp -->
		<h1>강의실 대여</h1>
		<br />
		<div id="tabs">
			<ul>
				<li><a href="#tabs-1">1.승연관</a></li>
				<li><a href="#tabs-2">2.일만관</a></li>
				<li><a href="#tabs-3">3.월당관</a></li>
				<li><a href="#tabs-4">4.열람관</a></li>
				<li><a href="#tabs-6">6.이천환관</a></li>
				<li><a href="#tabs-7">7.새천년관</a></li>
				<li><a href="#tabs-9">9.성미가엘관</a></li>
				<li><a href="#tabs-11">11.미가엘관</a></li>
				<li><a href="#tabs-20">20.운동장</a></li>
			</ul>

			<div id="tabs-1">
			강의실:1406 &nbsp;&nbsp;&nbsp;시설명:세미나실&nbsp;&nbsp;&nbsp;인원:15 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			강의실:1407 &nbsp;&nbsp;&nbsp;시설명:세미나실&nbsp;&nbsp;&nbsp;인원:15 <br/>
			강의실:1501 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:25 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			강의실:1502 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:30<br/> 
			강의실:1503 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:40 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			강의실:1504 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:38<br/>
			강의실:1505 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:40 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			강의실:1506 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:38<br/>
			강의실:1507 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:25&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			강의실:1508 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:25<br/> 
			</div>

			<div id="tabs-2">
			강의실:B103 &nbsp;&nbsp;&nbsp;시설명:휴게실&nbsp;&nbsp;&nbsp;인원:0 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			강의실:B104 &nbsp;&nbsp;&nbsp;시설명:소회의실&nbsp;&nbsp;&nbsp;인원:0 <br/>
			강의실:B105 &nbsp;&nbsp;&nbsp;시설명:학관까페&nbsp;&nbsp;&nbsp;인원:0 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			강의실:B2101 &nbsp;&nbsp;&nbsp;시설명:세미나2&nbsp;&nbsp;&nbsp;인원:0<br/> 
			강의실:B2102 &nbsp;&nbsp;&nbsp;시설명:세미나1&nbsp;&nbsp;&nbsp;인원:0 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			강의실:2401 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:100<br/>
			강의실:2402 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:100 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</div>

			<div id="tabs-3">
			강의실:3301&nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:70<br/>
			강의실:6500&nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:80<br/>
			</div>

			<div id="tabs-4">
			정보가 없습니다.
			</div>

			<div id="tabs-6">
			강의실:6110&nbsp;&nbsp;&nbsp;시설명:시청각실&nbsp;&nbsp;&nbsp;인원:143<br/>
			강의실:6500&nbsp;&nbsp;&nbsp;시설명:대강당&nbsp;&nbsp;&nbsp;인원:500<br/>
			</div>
			
			<div id="tabs-7">
			강의실:7104 &nbsp;&nbsp;&nbsp;시설명:컴실습실&nbsp;&nbsp;&nbsp;인원:40 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			강의실:7201 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:25 <br/>
			강의실:7202 &nbsp;&nbsp;&nbsp;시설명:어학실습실&nbsp;&nbsp;&nbsp;인원:40 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			강의실:7204 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:40<br/> 
			강의실:7205 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:40 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			강의실:7206 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:45<br/>
			강의실:7207 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:100 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			강의실:7208 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:75<br/>
			강의실:7301 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:30&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			강의실:7302 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:30<br/> 
			</div>
			
			<div id="tabs-9">
			강의실:9101&nbsp;&nbsp;&nbsp;시설명:피츠버그홀&nbsp;&nbsp;&nbsp;인원:250
			</div>
			
			<div id="tabs-11">
			강의실:M201 &nbsp;&nbsp;&nbsp;시설명:대학원강의실&nbsp;&nbsp;&nbsp;인원:14 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			강의실:M202 &nbsp;&nbsp;&nbsp;시설명:대학원강의실&nbsp;&nbsp;&nbsp;인원:14 <br/>
			강의실:M203 &nbsp;&nbsp;&nbsp;시설명:대학원강의실&nbsp;&nbsp;&nbsp;인원:14 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			강의실:M204 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:14<br/> 
			강의실:M205 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:110 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			강의실:M301 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:120<br/>
			강의실:M401 &nbsp;&nbsp;&nbsp;시설명:컴퓨터강의실(B.E.S.T. 시범강의실)&nbsp;&nbsp;&nbsp;인원:40 <br/>
			강의실:M402 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:50<br/>
			강의실:M403 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:38&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			강의실:M404 &nbsp;&nbsp;&nbsp;시설명:일반강의실&nbsp;&nbsp;&nbsp;인원:38<br/> 
			</div>
			
			<div id="tabs-20">
			현재 공사중이라서 사용할 수 없습니다
			</div>

		</div>

	</div>


	<div id="c">

		날짜선택 <br />
		<form action="rentClass" method=post>
			<input type="text" name="idDate" id="datepicker" placeholder="날짜 선택">
			<!-- <input type="text" name="currentTime" id="onselectExample1" placeholder="시간 선택"> -->
			<select name="currentTime" id="currentTime">
				<option value="09:00:00">09:00:00</option>
				<option value="10:00:00">10:00:00</option>
				<option value="11:00:00">11:00:00</option>
				<option value="12:00:00">12:00:00</option>
				<option value="13:00:00">13:00:00</option>
				<option value="14:00:00">14:00:00</option>
				<option value="15:00:00">15:00:00</option>
				<option value="16:00:00">16:00:00</option>
				<option value="17:00:00">17:00:00</option>
				<option value="18:00:00">18:00:00</option>
				<option value="19:00:00">19:00:00</option>
				<option value="20:00:00">20:00:00</option>
				<option value="21:00:00">21:00:00</option>
				<option value="22:00:00">22:00:00</option>
			</select> to
			<!-- <input type="text" name="endTime" id="onselectExample2" placeholder="시간 선택"><br/> -->
			<select name="endTime" id="endTime">
				<option value="09:00:00">09:00:00</option>
				<option value="10:00:00">10:00:00</option>
				<option value="11:00:00">11:00:00</option>
				<option value="12:00:00">12:00:00</option>
				<option value="13:00:00">13:00:00</option>
				<option value="14:00:00">14:00:00</option>
				<option value="15:00:00">15:00:00</option>
				<option value="16:00:00">16:00:00</option>
				<option value="17:00:00">17:00:00</option>
				<option value="18:00:00">18:00:00</option>
				<option value="19:00:00">19:00:00</option>
				<option value="20:00:00">20:00:00</option>
				<option value="21:00:00">21:00:00</option>
				<option value="22:00:00">22:00:00</option>
			</select> <br /> <input type="text" name="facilityCode"
				id="selectByclassroom" placeholder="강의실 선택"><br />
			<!-- 사유 -->
			<br />
			<!-- <!-- <textarea rows="4" cols="50"> -->

			<!-- <!-- </textarea><br/> -->
			<input type="hidden" name="id" value="${user.id}"> <input
				type="hidden" name="loginId" value="${user.loginId}"> <input
				type="hidden" name="rent" value="${user.loginId}"> <input
				type="hidden" name="approval" value="1">
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
	<%-- <%@ include file="/WEB-INF/views/view/footer.jsp"%> --%>

</body>
</html>