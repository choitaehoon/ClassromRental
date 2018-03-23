<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
   Author: W3layouts
   Author URL: http://w3layouts.com
   License: Creative Commons Attribution 3.0 Unported
   License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="zxx">

<head>
    <title>Login</title>
    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Switch Login Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta-Tags -->
    <!-- Index-Page-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" media="all">
    <!-- //Custom-Stylesheet-Links -->
    <!--fonts -->
    <link href="/${pageContext.request.contextPath}/resources/fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400,500,600,700,800" rel="stylesheet">
    <!-- //fonts -->
    <!-- Font-Awesome-File-Links -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.css" type="text/css" media="all">
</head>

<body>
    <h1 class="title-agile text-center">너와 나의 연결 고리</h1>
    <div class="content-w3ls">
        <div class="content-top-agile">
            <h2>sign in</h2>
        </div>
        <div class="content-bottom">
            <form action="loginAfter" method="post">
                <div class="field-group">
                    <span class="fa fa-user" aria-hidden="true"></span>
                    <div class="wthree-field">
                        <input name="loginId" type="text" value="" placeholder="username" required>
                    </div>
                </div>
                <div class="field-group">
                    <span class="fa fa-lock" aria-hidden="true"></span>
                    <div class="wthree-field">
                        <input name="password" type="password" placeholder="password" required>
                    </div>
                </div>
                <ul class="list-login">
                    <li class="switch-agileits">
                        <label class="switch">
                            <input type="checkbox" onclick="location.href='http://localhost:8081/controller/view/signUpBefore'">
                            <span class="slider round"></span>
                            Member Registration
                        </label>
                    </li>
                   <li>
                        <a href="#" class="text-right"></a>
                    </li>
                    <li class="clearfix"></li>
                </ul>
                <div class="wthree-field">
                    <input type="submit" value="sign in" />
                </div>
            </form>
                  <c:if test="${ not empty error }">
         <div class="alert alert-error">${ error }</div>
      </c:if>
        </div>
    </div>
    <div class="copyright text-center">
       <%@ include file="/WEB-INF/views/view/footer.jsp"%>
    </div>
</body>
</html>