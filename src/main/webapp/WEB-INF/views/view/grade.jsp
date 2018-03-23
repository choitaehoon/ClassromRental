<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html >
<html>
<head>
<link href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
   rel="stylesheet">
   
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
   function subsub(login)
   {
      var con = document.getElementById('context').value;
      var log = login;
      
      document.help.context.value= con;
      document.help.loginId.value=log;
      help.submit();
   }
</script>

<style>
td { 
    border: 1px solid black;
 } 
tr:nth-child(1) {
/*     background-color: #aaaaaa;  */
   color: black;
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
#a{
   position: absolute;
   right: 600px;
   top: 18%;
}
</style>
</head>
<body>
<div id="abcd">${user.loginId}님환영합니다.
   <input type="button" class="btn btn-primary" value="로그아웃"
   onclick="location.href='http://localhost:8081/controller/view/login'">
   <input type="button" class="btn btn-primary" value="수정하기"
   onclick="location.href='http://localhost:8081/controller/view/membershipModification?loginId=${user.loginId}'">
   <c:if test="${user.userType eq '관리자'}">
      <input type="button" class="btn btn-success" value="승인요청목록"
         onclick="location.href='http://localhost:8081/controller/view/showStaff?loginId=${user.loginId}'">
    </c:if>
    <c:if test="${user.userType != '관리자'}">
   <input type="button" class="btn btn-success" value="승인요청"
         onclick="location.href='http://localhost:8081/controller/view/approvalPlease?loginId=${user.loginId}&id=${user.id}'">
         </c:if>
</div>
<form method="post">
   <div id="dva">
      <nav id="topMenu">
         <ul>
           <c:if test="${user.userType != '관리자'}">
            <li class="topMenuLi"><a class="menuLink"
               href="grade?loginId=${user.loginId}">내 등급 확인</a>
                           <li>|</li>
         </c:if>
         <c:if test="${user.userType != '관리자'}">
            <li class="topMenuLi"><a class="menuLink"
               href="questionnaireInfo1?loginId=${user.loginId}">설문지 작성하기</a></li>
            <li>|</li>
         </c:if>
         <c:if test="${user.userType != '관리자'}">
            <li class="topMenuLi"><a class="menuLink" 
               href="classroomInfo?loginId=${user.loginId}">강의실 대여 하기</a>
                           <li>|</li>
         </c:if>
         <c:if test="${user.userType == '관리자'}">
         <li class="topMenuLi"><a class="menuLink"
               href="surveyList?loginId=${user.loginId}">설문지 조사 확인</a>
               <li>|</li>
         </c:if>
         
         <c:if test="${user.userType == '관리자'}">
         <li class="topMenuLi"><a class="menuLink" 
               href="helpManager?loginId=${user.loginId}">등급 구제 목록</a>
                           <li>|</li>
         </c:if>
               
            <li class="topMenuLi">
            <a class="menuLink"
               href="rent?loginId=${user.loginId}">강의실 빌려주기</a></li>
            <li>|</li>
            <li class="topMenuLi"><a class="menuLink"
               href="list?loginId=${user.loginId}">자유 게시판</a></li>
         </ul>
      </nav>
   </div>

</form>
<div class="container">
   <hr/>
   <h1>내정보</h1>
   <label>이름</label>
   <input class="form-control" type="text" placeholder="${user.name}" readonly>
   
   <label>아이디</label>
   <input class="form-control" type="text" placeholder="${user.loginId}" readonly>
   
   <label>이메일</label>
   <input class="form-control" type="text" placeholder="${user.email}" readonly>
   
   <label>소속 학과</label>
   <c:if test="${user.departmentId == 1}">
   <input class="form-control" type="text" placeholder="소프트웨어공학과" readonly>
   </c:if>
   
   <c:if test="${user.departmentId == 2}">
   <input class="form-control" type="text" placeholder="컴퓨터공학과" readonly>
   </c:if>
   
   <c:if test="${user.departmentId == 3}">
   <input class="form-control" type="text" placeholder="정보통신공학과" readonly>
   </c:if>
   
   <c:if test="${user.departmentId == 4}">
   <input class="form-control" type="text" placeholder="글로컬IT학과 " readonly>
   </c:if>
   
   <label>등급</label>
   <c:if test="${user.grade == 0}">
   <input class="form-control" type="text" placeholder="정상" readonly>
   </c:if>
   
   <c:if test="${user.grade == 1}">
   <input class="form-control" type="text" placeholder="경고" readonly>
   </c:if>
   
   <c:if test="${user.grade == 2}">
   <input class="form-control" type="text" placeholder="위험" readonly>
   </c:if>
   
   <c:if test="${user.grade == 3}">
   <input class="form-control" type="text" placeholder="강등" readonly>
   </c:if>
</div>

<div id="a">
    <h1>등급 구제 신청</h1>
    <br/>
    <c:if test="${user.grade != 0}">
    <textarea rows="10" style="width:200%;" id="context" placeholder="구제이유를 구체적으로 적으세요(등급이 정상인경우는 제외)" ></textarea>
    </c:if>
    <c:if test="${user.grade == 0}">
    <textarea rows="10" style="width:200%;" id="context" placeholder="구제이유를 구체적으로 적으세요(등급이 정상인경우는 제외)" readonly></textarea>
    </c:if>
    <input type="button" class="btn btn-default" value="전송" onclick="subsub('${user.loginId}');">
   </div>
   
   <form action="gradeHelp" name="help">
      <input type="hidden" name="context" value="">
      <input type="hidden" name="loginId" value="">
   </form>
</body>

<%-- <%@ include file="/WEB-INF/views/view/footer.jsp"%> --%>
</html>