<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<!--[if IE 7]><html class="ie ie7 no-js" lang="en-US"><![endif]-->
<!--[if IE 8]><html class="ie ie8 no-js" lang="en-US"><![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>Open Pediatrics</title>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<link rel="profile" href="#">
<!--Google Font-->
<link rel="stylesheet"
	href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
<!-- Mobile specific meta -->
<meta name=viewport content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone-no">
<!-- CSS files -->
<link rel="stylesheet" href="css/plugins.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<!--preloading-->
	<div id="preloader">
		<img class="logo" src="images/logo1.png" alt="" width="119"
			height="58">
		<div id="status">
			<span></span><span></span>
		</div>
	</div>
	<!--end of preloading-->
	<!--login form popup-->
	<div class="login-wrapper" id="login-content">
		<div class="login-content">
			<a href="#" class="close">x</a>
			<h3>Login</h3>
			<form method="post" action="login.php">
				<div class="row">
					<label for="username">Username:<input type="text"
						name="username" id="username" placeholder="Hugh Jackman"
						pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" /></label>
				</div>
				<div class="row">
					<label for="password"> Password:<input type="password"
						name="password" id="password" placeholder="******"
						pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
						required="required" /></label>
				</div>
				<div class="row">
					<div class="remember">
						<div>
							<input type="checkbox" name="remember" value="Remember me"><span>Remember
								me</span>
						</div>
						<a href="#">Forget password ?</a>
					</div>
				</div>
				<div class="row">
					<button type="submit">Login</button>
				</div>
			</form>
			<div class="row">
				<p>Or via social</p>
				<div class="social-btn-2">
					<a class="fb" href="#"><i class="ion-social-facebook"></i>Facebook</a><a
						class="tw" href="#"><i class="ion-social-twitter"></i>twitter</a>
				</div>
			</div>
		</div>
	</div>
	<!--end of login form popup-->
	<!--signup form popup-->
	<div class="login-wrapper" id="signup-content">
		<div class="login-content">
			<a href="#" class="close">x</a>
			<h3>sign up</h3>
			<form method="post" action="signup.php">
				<div class="row">
					<label for="username-2">Username:<input type="text"
						name="username" id="username-2" placeholder="Hugh Jackman"
						pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" /></label>
				</div>
				<div class="row">
					<label for="email-2"> your email:<input type="password"
						name="email" id="email-2" placeholder=""
						pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
						required="required" /></label>
				</div>
				<div class="row">
					<label for="password-2"> Password:<input type="password"
						name="password" id="password-2" placeholder=""
						pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
						required="required" /></label>
				</div>
				<div class="row">
					<label for="repassword-2"> re-type Password:<input
						type="password" name="password" id="repassword-2" placeholder=""
						pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
						required="required" /></label>
				</div>
				<div class="row">
					<button type="submit">sign up</button>
				</div>
			</form>
		</div>
	</div>
	<!--end of signup form popup-->

	<!-- BEGIN | Header -->
	<jsp:include page="include_common_top.jsp" />
	<!-- END | Header -->

	<div class="hero common-hero">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="hero-ct">
						<h1>공지사항</h1>
						<ul class="breadcumb">
							<li class="active"><a href="main">Home</a></li>
							<li><span class="ion-ios-arrow-right"></span>공지사항</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- blog list section -->
	<div class="page-single">
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-sm-12 col-xs-12">
					<div class="topbar-filter">
						<p>
							Found <span>1,608 celebrities</span>in total
						</p>
						<label>Sort by:</label><select><option value="popularity">Popularity
								Descending</option>
							<option value="popularity">Popularity Ascending</option>
							<option value="rating">Rating Descending</option>
							<option value="rating">Rating Ascending</option>
							<option value="date">Release date Descending</option>
							<option value="date">Release date Ascending</option></select>
							
					</div>
					<div class="blog-item-style-1 blog-item-style-3">
						<img src="images/uploads/bloglist-it1.jpg" alt="">
						<div class="blog-it-infor">
							<h3>
								<a href="blogdetail">공지사항</a>
							</h3>
							<span class="time">날짜</span>
							<p>기사 내용</p>
						</div>
					</div>
					<c:forEach items="${noticeList}" var ="notice"> 
						<div class="blog-item-style-1 blog-item-style-3">
							<img src="images/uploads/bloglist-it2.jpg" alt="">
							<div class="blog-it-infor">
								<h3>
									<a href="blogdetail.html">${notice.n_title }</a>
								</h3>
								<span class="time">27 Mar 2017</span>
								<p>Magnolia Pictures has acquired U.S. and international
									rights to the comedic drama Lucky John Carroll Lynch’s
									directorial debut. Lynch is an in-demand character actor who ...</p>
							</div>
						</div>
					</c:forEach>
					
					<ul class="pagination">
						<li class="icon-prev"><a href="#"><i
								class="ion-ios-arrow-left"></i></a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">...</a></li>
						<li><a href="#">21</a></li>
						<li><a href="#">22</a></li>
						<li class="icon-next"><a href="#"><i
								class="ion-ios-arrow-right"></i></a></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-12 col-xs-12">
					<div class="sidebar">
						<div class="sb-search sb-it">
							<h4 class="sb-title">Search</h4>
							<input type="text" placeholder="Enter keywords">
						</div>
						<div class="sb-cate sb-it">
							<h4 class="sb-title">Categories</h4>
							<ul>
								<li><a href="#">Awards (50)</a></li>
								<li><a href="#">Box office (38)</a></li>
								<li><a href="#">Film reviews (72)</a></li>
								<li><a href="#">News (45)</a></li>
								<li><a href="#">Global (06)</a></li>
							</ul>
						</div>


					</div>
				</div>
			</div>
		</div>
	</div>
	<!--end of blog list section-->
	<!-- footer section-->
	<jsp:include page="include_common_bottom.jsp"></jsp:include>
	<!-- end of footer section-->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/plugins2.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>