<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>
   <title>SignUpAfter</title>
   <!-- Meta-tags -->
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <meta name="keywords" content="Accounts Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
   <script type="application/x-javascript">
      addEventListener("load", function () {
         setTimeout(hideURLbar, 0);
      }, false);

      function hideURLbar() {
         window.scrollTo(0, 1);
      }
   </script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
   <!-- //Meta-tags -->
   <link href="${pageContext.request.contextPath}/resources/resources2/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /><!-- //Bootstrap Css -->
   <link href="${pageContext.request.contextPath}/resources/resources2/css/font-awesome.css" rel="stylesheet"><!-- //Font-awesome Css -->
   <link href="${pageContext.request.contextPath}/resources/resources2/css/style.css" rel="stylesheet" type="text/css" media="all" /><!-- //Required Css -->
   <!--fonts-->
   <link href="${pageContext.request.contextPath}/resources/resources2/fonts.googleapis.com/css?family=Raleway:300,400,500,600,800" rel="stylesheet">
   <link href="${pageContext.request.contextPath}/resources/resources2/fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
   <!--//fonts-->

</head>

<body>
   <!--Slider-->
<!--    <div class="slider"> -->
<!--     <div class="banner-dott1"> -->
      <!-- header -->
      <div class="header">
         <div class="container">
            <div class="w3l_header_left">
               <ul>
                  <li><p>강의실 상호 교환 시스템</p></li>
               </ul>
            </div>
            <div class="w3l_header_right">
               <div class="w3ls-social-icons">
                  <!-- <a class="facebook" href="#"><span class="fa fa-facebook"></span></a>
                  <a class="twitter" href="#"><span class="fa fa-twitter"></span></a>
                  <a class="pinterest" href="#"><span class="fa fa-pinterest-p"></span></a> -->
                  <a class="linkedin" href="http://localhost:8081/controller/view/login"><span class="fa fa-linkedin"></span></a>
               </div>
            </div>
            <div class="clearfix"> </div>
         </div>
      </div>

      <!-- //header -->
      <div class="header-bottom">
         <div class="container">
            <nav class="navbar navbar-default">
               <!-- Brand and toggle get grouped for better mobile display -->
               <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
               <span class="sr-only">Toggle navigation</span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
              </button>
                  <div class="logo">
                     <h1><a class="navbar-brand"  href="http://localhost:8081/controller/view/signUpAfter?loginId=${user.loginId}"><span>${user.loginId}님</span>환영합니다</a></h1>
                  </div>
               </div>
<from method="post">
               <!-- Collect the nav links, forms, and other content for toggling -->
               <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                  <nav class="cl-effect-1" id="cl-effect-1">
                     <ul class="nav navbar-nav">
                        <li class="active"><a href="http://localhost:8081/controller/view/signUpAfter?loginId=${user.loginId}" data-hover="Home">Home</a></li>
                        <li><a href="http://localhost:8081/controller/view/membershipModification?loginId=${user.loginId}" data-hover="정보 수정">정보 수정</a></li>
                        <c:if test="${user.userType != '관리자'}">
                        <li><a href="grade?loginId=${user.loginId}" data-hover="내 등급 확인" >내 등급 확인</a></li>
                        <li><a href="http://localhost:8081/controller/view/approvalPlease?loginId=${user.loginId}&id=${user.id}" data-hover="승인요청">승인요청</a></li>
                        <li><a href="questionnaireInfo1?loginId=${user.loginId}" data-hover="설문지 작성하기">설문지 작성하기</a></li>
                        <li><a href="rent?loginId=${user.loginId}" data-hover="강의실 빌려주기">강의실 빌려주기</a></li>
                        </c:if>
                        <c:if test="${user.userType == '관리자'}">
                        <li><a href="surveyList?loginId=${user.loginId}" data-hover="설문지 조사확인">설문지 조사확인</a></li>
                      	<li><a href="helpManager?loginId=${user.loginId}" data-hover="등급 구제 확인">등급 구제 확인</a></li>
                        </c:if>
                        <li><a href="list?loginId=${user.loginId}" data-hover="자유게시판">자유 게시판</a></li>
                     </ul>
                  </nav>
               </div>
               <!-- /.navbar-collapse -->
            </nav>
         </div>
      </div>
      
</form>
<!-- --------------------------------------------------- -->
   <div class="tax">
      <div class="container">
         <h3 class="title-txt">너와 나의 연결고리 설명서</h3>
         <div class="col-md-6 col-sm-6 tax_left">
         <p>우리학교의 문제점은 시험기간만 되면 강의실을 독점한다!독점은 그 사람이 필요하기에 어쩔수 없는 부분이지만 조금이나마 공간 수용을 늘리기 위해 선택한 결정!</p>
         <p>
<div>- 너와 나의 연결고리의 핵심 기술인 학생들 상호간의 강의실 대여</div>
<div> </div>
<div><br>   1.) 강의실을 먼저 대여한 학생1이 자신이 쓰지 않는 시간을 게시물에 등록</div>
<div><br>   2.) 해당시간에 강의실을 빌리고 싶은 학생2가 해당 강의실과 해당 시간 확인 후 강의실 이용</div>
<div><br>   3.) 학생1이 학생2에 대해서 강의실 이용 상태 여부에 관해서 평가 설문지 작성 </div>
<div> </div></p>
            <div class="clearfix"></div>
         </div>
         <div class="col-md-6 col-sm-6 tax_right">
         
         </div>
         <div class="clearfix"> </div>
      </div>
   </div>
      </div>
   </div>
<!-- //footer -->

   <!-- js -->
   <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
   <!-- stats -->
   <script src="js/jquery.waypoints.min.js"></script>
   <script src="js/jquery.countup.js"></script>
      <script>
         $('.counter').countUp();
      </script>
<!-- //stats -->

   <!-- start-smoth-scrolling -->
   <script type="text/javascript" src="js/move-top.js"></script>
   <script type="text/javascript" src="js/easing.js"></script>
   <script type="text/javascript">
      jQuery(document).ready(function ($) {
         $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({
               scrollTop: $(this.hash).offset().top
            }, 1000);
         });
      });
   </script>
   <!-- start-smoth-scrolling -->
   <script src="js/responsiveslides.min.js"></script>
   <script>
      // You can also use "$(window).load(function() {"
      $(function () {
         // Slideshow 3
         $("#slider3").responsiveSlides({
            auto: true,
            pager: false,
            nav: true,
            speed: 500,
            namespace: "callbacks",
            before: function () {
               $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
               $('.events').append("<li>after event fired.</li>");
            }
         });

      });
   </script>
   <!-- smooth scrolling -->
   <script type="text/javascript">
      $(document).ready(function () {
         /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear' 
            };
         */
         $().UItoTop({
            easingType: 'easeOutQuart'
         });
      });
   </script>
   <a href="#home" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
   <!-- //smooth scrolling -->
     <!-- Flexslider-js for-testimonials -->
    <script src="js/jquery.flexisel.js"></script>
    <script>
        $(window).load(function () {
            $("#flexiselDemo1").flexisel({
                visibleItems: 1,
                animationSpeed: 1000,
                autoPlay: false,
                autoPlaySpeed: 3000,
                pauseOnHover: true,
                enableResponsiveBreakpoints: true,
                responsiveBreakpoints: {
                    portrait: {
                        changePoint: 480,
                        visibleItems: 1
                    },
                    landscape: {
                        changePoint: 640,
                        visibleItems: 1
                    },
                    tablet: {
                        changePoint: 768,
                        visibleItems: 1
                    }
                }
            });

        });
    </script>

   <script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- ------------------------------------ -->
<div class="agileinfo_copyright">
            <p>
            <div>152-716 서울시 구로구 연동로 320 / 지하철 1, 7호선 온수(성공회대입구)역 T.02-2610-4114</div>
            <div style="margin-top: 5px;">Copyright (c) Sung-Kong-HoeUnivisity. All rights reserved.</div></p>
         </div>
</body>
</html>