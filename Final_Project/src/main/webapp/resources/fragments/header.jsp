<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css" type="text/css">
    
<header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                                <li>Free Shipping for all Order of $99</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                        
                        <!-- SNS ?????? ?????? => ??? ?????? ???????????? ?????? ?????? ?????? -->
<!--                             <div class="header__top__right__social"> -->
<!--                                 <a href="#"><i class="fa fa-facebook"></i></a> -->
<!--                                 <a href="#"><i class="fa fa-twitter"></i></a> -->
<!--                                 <a href="#"><i class="fa fa-linkedin"></i></a> -->
<!--                                 <a href="#"><i class="fa fa-pinterest-p"></i></a> -->
<!--                             </div> -->
                            
                            <!-- ?????? ?????? -->
<!--                             <div class="header__top__right__language"> -->
<%--                                 <img src="${pageContext.request.contextPath }/resources/img/language.png" alt=""> --%>
<!--                                 <div>English</div> -->
<!--                                 <span class="arrow_carrot-down"></span> -->
<!--                                 <ul> -->
<!--                                     <li><a href="#">Spanis</a></li> -->
<!--                                     <li><a href="#">English</a></li> -->
<!--                                 </ul> -->
<!--                             </div> -->
						<!-- ???????????? ?????? ???, ????????? / ?????? ???, ????????? & ???????????? -->
						<c:if test="${empty sessionScope.memId}">
                            <div class="header__top__right__auth">
                                <a href="${pageContext.request.contextPath }/member/login"><i class="fa fa-user"></i> Login</a>
                            </div>
                        </c:if>
                        
                        <c:if test="${! empty sessionScope.memId}">
                        	<div class="header__top__right__auth">
                                <i class="fa fa-user"></i> ${sessionScope.memId }??? ????????????????????????.</a>
                            </div>
                            <div class="header__top__right__auth">
                                <a href="${pageContext.request.contextPath }/member/logout"><i class="fa fa-user"></i> Logout</a>
                            </div>
                        </c:if>
                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="${pageContext.request.contextPath }/resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="./index.html">Home</a></li>
                            <li><a href="./shop-grid.html">Shop</a>
                            	<ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./shoping-cart.html">Shopping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Pages</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./shoping-cart.html">Shopping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="./blog.html">Blog</a></li>
                            <li><a href="./contact.html">Contact</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <!-- ?????? -->
                        <!-- <div class="header__cart__price">item: <span>$150.00</span></div> -->
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
</head>
<body>
  <!-- Js Plugins -->
  	<script src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
    <script src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value ="/resources/js/jquery.nice-select.min.js"/>"></script>
    <script src="<c:url value ="/resources/js/jquery-ui.min.js"/>"></script>
    <script src="<c:url value ="/resources/js/jquery.slicknav.js"/>"></script>
    <script src="<c:url value ="/resources/js/mixitup.min.js"/>"></script>
    <script src="<c:url value ="/resources/js/owl.carousel.min.js"/>"></script>
    <script src="<c:url value ="/resources/js/main.js"/>"></script>
</body>
</html>