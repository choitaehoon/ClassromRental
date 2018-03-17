<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//Dth HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>

<style>
	tr:hover { background-color: #ffffdd; }
</style>
<link
   href="http://nethna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
   rel="stylesheet">
</head>
<body>
<h1>승인해주세요</h1>
<table class="table table-hover">
<thead>
	<tr>
		<th>ID</th>
		<th>이름</th>
		<th>강의실</th>
		<th>빌린 날짜</th>
		<th>시작 시간</th>
		<th>종료 시간</th>
		<th>승인 현황</th>
	</tr>
	<c:forEach items="${date}" var="date">
	<tr>
		<th>${user.loginId}</th>
		<th>${user.name}</th>
		<th>${date.facilityCode}</th>
		<th>${date.idDate}</th>
		<th>${date.currentTime}</th>
		<th>${date.endTime}</th>
		<c:choose>
			<c:when test="${user.grade eq 0 || date.approval eq 0}">
			<th>불가</th>
			</c:when>
			
			<c:when test="${user.grade eq 1 && date.approval eq 1}">
			<th>대기</th>
			</c:when>
			
			<c:otherwise>
			<th>승인</th>
			</c:otherwise>
			
		</c:choose>
	</tr>
</c:forEach>
</thead>
</table>

<!-- <table width="500" cellpadding="0" cellspacing="0" border="1"> -->
<!--       <form action="showstaff" method="post"> -->
<!--          <tr> -->
<!--             <th > 이름 </th> -->
<%--             <th> <input type="text" name="name" size = "50" value="${staffshowboard.name}"> </th> --%>
<!--          </tr> -->
<!--          <tr> -->
<!--             <th> 사유 </th> -->
<%--             <th> <input type="text" name="approval" size = "50" value="${staffshowboard.approval}" > </th> --%>
<!--          </tr> -->
<!--          <tr > -->
<!--             <th colspan="2"> <input type="submit" value="입력"> &nbsp;&nbsp; -->
<!--          </tr> -->
<!--       </form> -->
<!-- </table> -->

<%@ include file="/WEB-INF/views/view/footer.jsp"%>
</body>



</html>