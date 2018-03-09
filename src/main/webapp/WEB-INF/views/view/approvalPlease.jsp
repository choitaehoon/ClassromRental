<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/view/signUpAfter.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
   href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
   rel="stylesheet">
</head>
<body>
<h1>승인해주세요</h1>
<table class="table table-bordered">
	<tr>
		<td>ID</td>
		<td>이름</td>
		<td>강의실</td>
		<td>빌린 날짜</td>
		<td>시작 시간</td>
		<td>종료 시간</td>
		<td>승인 현황</td>
	</tr>
	<c:forEach items="${date}" var="date">
	<tr>
		<td>${user.loginId}</td>
		<td>${user.name}</td>
		<td>${date.facilityCode}</td>
		<td>${date.idDate}</td>
		<td>${date.currentTime}</td>
		<td>${date.endTime}</td>
		<c:choose>
			<c:when test="${user.grade eq 0}">
			<td>불가</td>
			</c:when>
			
			<c:when test="${user.grade eq 1}">
			<td>대기</td>
			</c:when>
			
			<c:otherwise>
			<td>승인</td>
			</c:otherwise>
		</c:choose>
	</tr>
</c:forEach>
</table>

<!-- <table width="500" cellpadding="0" cellspacing="0" border="1"> -->
<!--       <form action="showstaff" method="post"> -->
<!--          <tr> -->
<!--             <td > 이름 </td> -->
<%--             <td> <input type="text" name="name" size = "50" value="${staffshowboard.name}"> </td> --%>
<!--          </tr> -->
<!--          <tr> -->
<!--             <td> 사유 </td> -->
<%--             <td> <input type="text" name="approval" size = "50" value="${staffshowboard.approval}" > </td> --%>
<!--          </tr> -->
<!--          <tr > -->
<!--             <td colspan="2"> <input type="submit" value="입력"> &nbsp;&nbsp; -->
<!--          </tr> -->
<!--       </form> -->
<!-- </table> -->

<%@ include file="/WEB-INF/views/view/footer.jsp"%>
</body>



</html>