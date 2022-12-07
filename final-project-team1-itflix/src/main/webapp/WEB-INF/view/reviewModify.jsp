<%@page import="com.itflix.dto.User_Info"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--현재 날짜 구현   -->
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
Date nowTime = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yy년 MM월 dd일");
User_Info login_user = (User_Info) session.getAttribute("login_user");
%>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>리뷰 수정페이지</title>
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
<link href="css/star.css" rel="stylesheet" />
</head>
<script type="text/javascript">

function reviewModify_action() {
	document.myform.action ="reviewModify_action";
	document.myform.method='POST';
	document.myform.submit();
}

</script>
<body>
	<!-- BEGIN | Header -->
	<jsp:include page="include_common_top.jsp" />
	<!-- END | Header -->
	<div class="hero mv-single-hero">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
				</div>
			</div>
		</div>
	</div>
	<div class="page-single movie-single movie_single">
		<div class="container">
			<div class="row ipad-width2">
				<div class="col-md-2 col-sm-4 col-xs-4">
					<!-- ↓↓↓이미지↓↓↓ -->
					<div class="slide-it">
						<div class="movie-item">
							<div class="mv-img">
								<div class="movie-img sticky-sb">
									<img
										src="images/${movie.category.cg_name}/${movie.m_name}_1.jpg"
										alt="" width="30" height="30">

									<div class="hvr-inner">
										<a href="moviesingle?m_no=${movie.m_no}">Read more <i
											class="ion-android-arrow-dropright"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ↑↑↑이미지↑↑↑ -->
				</div>
				<div class="col-md-7 col-sm-4 col-xs-3">
					<div class="movie-single-ct main-content">
						<!-- ↓↓↓영화 타이틀 제목↓↓↓  -->
						<h1 class="bd-hd">${movie.m_name }Review 수정</h1>
						<!-- ↑↑↑영화 타이틀 제목↑↑↑  -->
						<div class="movie-tabs">
							<div class="tabs">
								<div class="tab-content">
									<div id="overview" class="tab active">
										<div class="row">
											<div class="col-md-8 col-sm-12 col-xs-12">
												<!-- 상단 -->
												<div class="title-hd-sm">
													<h4>User reviews</h4>
													<p>글쓴이 : ${login_user.u_name }</p>
												</div>
												<!-- movie user review -->
												<div class="mv-user-review-item">
													<p class="time" style="text-align-last: right;">
														날짜 :<%= sf.format(nowTime) %>
													</p>
													<!--별점 구현   -->
													<form class="mb-3" name="myform" id="myform" method="post">
														<input name="u_email" value="${login_user.u_email }"
															type="hidden"> <input name="r_date"
															value="<%= sf.format(nowTime) %>" type="hidden">
														<input name="m_no" value="${movie.m_no}" type="hidden">
														<input name="r_no" value="${review.r_no}" type="hidden">
														<fieldset>
															<span class="text-bold">별점을 선택해주세요</span> <input
																type="radio" name="reviewStar" value="5" id="r_grade1"><label
																for="r_grade1">★</label> <input type="radio"
																name="reviewStar" value="4" id="r_grade2"><label
																for="r_grade2">★</label> <input type="radio"
																name="reviewStar" value="3" id="r_grade3"><label
																for="r_grade3">★</label> <input type="radio"
																name="reviewStar" value="2" id="r_grade4"><label
																for="r_grade4">★</label> <input type="radio"
																name="reviewStar" value="1" id="r_grade5"><label
																for="r_grade5">★</label>
														</fieldset>
														<!--리뷰 타이틀 부분   -->
														<div>
															<textarea class="col-auto form-control" type="text"
																name="r_title"
																style="width: 100%; height: 5em; border: none; resize: none;">
																  ${review.r_title }</textarea>
														</div>
														<br>
														<!--리뷰 내용  -->
														<div>
															<textarea class="col-auto form-control" type="text"
																name="r_content"
																style="width: 100%; height: 30em; border: none; resize: none;">${review.r_content }</textarea>
														</div>
														<div class="landing-hero">
															<div class="row">
																<a class="redbtn" style="cursor: pointer;"
																	onclick="reviewModify_action();"> 영화<br>
																	${movie.m_name }에 <br> 리뷰 수정
																</a>

															</div>
														</div>
													</form>
													<!--아래 밑줄  -->
													<div class="title-hd-sm"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer section-->
	<jsp:include page="include_common_bottom.jsp"></jsp:include>
	<!-- end of footer section-->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/plugins2.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>