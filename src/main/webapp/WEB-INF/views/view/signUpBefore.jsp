<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/js/bootstrap.min.js">
	
</script>
<style type="text/css">
div {
	width: 600px;
	margin: 0 auto;
}
</style>
<!-- ajax 사용 -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('#checkbtn').on('click', function(){
        $.ajax({
            type: 'POST',
            url: './checkSignup',
            data: {
                "loginId" : $('#ggg').val()
            },
            success: function(data){
            	if($.trim(data) == 0)
            		alert("사용 할 수 있습니다.");
                else
                	alert("사용 할 수 없습니다");
            }
        });    //end ajax    
    });    //end on    
}); //end ready
</script>

</head>
<body>
	<!-- 회원가입하는 창 -->
	<h1>회원가입</h1>
	<div>
		<form action="signUpAfter" method=post>
			<label>아이디 : </label> <input type="text" name="loginId" id="ggg" value="${user.loginId}" >
			<button type="button"  id="checkbtn">ID 중복 체크</button>
			<br />
			
			<label>비밀번호 :</label> <input type="password" name="password"><br />

			<label>이름: </label> <input type="text" name="name"><br /> <label>이메일:
			</label> <input type="text" name="email"><br /> <label>사용자 유형</label>
			<select name="userType">
				<option value="관리자">관리자</option>
				<option value="교수">교수</option>
				<option value="학생">학생</option>
			</select> <br /> <label>학과</label> <select name="departmentId">
				<option value="0">없음</option>
				<option value="1">소프트웨어공학과</option>
				<option value="2">컴퓨터공학과</option>
				<option value="3">정보통신공학과</option>
				<option value="4">글로컬IT학과</option>
			</select> <br /> <input type="submit" class="btn btn-primary" value="전송">
		</form>

		<c:if test="${ not empty error }">
			<div class="alert alert-error">${ error }</div>
		</c:if>
	</div>
<%@ include file="/WEB-INF/views/view/footer.jsp"%>
</body>
</html>