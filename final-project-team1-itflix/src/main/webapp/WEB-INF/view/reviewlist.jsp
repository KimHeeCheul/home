<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<!--[if IE 7]><html class="ie ie7 no-js" lang="en-US"><![endif]-->
<!--[if IE 8]><html class="ie ie8 no-js" lang="en-US"><![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>리뷰 리스트</title>
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


	<!-- BEGIN | Header -->
	<jsp:include page="include_common_top.jsp" />
	<!-- END | Header -->


	<div class="hero mv-single-hero">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!-- <h1>movie listing - list</h1><ul class="breadcumb"><li class="active"><a href="#">Home</a></li><li><span class="ion-ios-arrow-right"></span>movie listing</li></ul>-->
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
										<a href="moviesingle?m_no=${movie.m_no }">더보기<i
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
						<h1 class="bd-hd">${movie.m_name }Review</h1>
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
													<h4>
														<c:if test="${login_user != null }">
															<a href="reviewWrite?m_no=${movie.m_no}" class="time"
																style="right: 500px">리뷰 작성</a>
														</c:if>
														<c:if test="${login_user == null }">
															<a onclick="alert('로그인을 해주세요');" style="cursor: pointer">리뷰
																작성</a>
														</c:if>
													</h4>
												</div>


												<!-- movie user review -->
												<c:forEach items="${reviewLatest }" var="review">
													<div class="mv-user-review-item">
														<h3>제목 : ${review.r_title }</h3>
														<!-- ↓↓↓평점↓↓↓ -->
														<div class="no-star">
															평점 : ${review.r_grade }
															<!--MovieSingle 페이지 별점 계산 -->
															<c:set var="reviewGrade" value="${review.r_grade}" />
															<!--평점이 없는경우  -->
															<c:if test="${reviewGrade==null }">
																<a style="font-size: 15pt; color: #0DEEC9">리뷰가 없어요!</a>
															</c:if>
															<!--평점 0점 이상 20점 미만일 경우  -->
															<c:if test="${reviewGrade ge 0 && reviewGrade lt 1}">
																<i class="ion-ios-star-outline"></i>
																<i class="ion-ios-star-outline"></i>
																<i class="ion-ios-star-outline"></i>
																<i class="ion-ios-star-outline"></i>
																<i class="ion-ios-star-outline"></i>
															</c:if>
															<!--평점 20점 이상 40점 미만일 경우  -->
															<c:if test="${reviewGrade ge 1 && reviewGrade lt 2}">
																<i class="ion-ios-star"></i>
																<i class="ion-ios-star-outline"></i>
																<i class="ion-ios-star-outline"></i>
																<i class="ion-ios-star-outline"></i>
																<i class="ion-ios-star-outline"></i>
															</c:if>
															<!--평점 40점 이상 60점 미만일 경우  -->
															<c:if test="${reviewGrade ge 2 && reviewGrade lt 3}">
																<i class="ion-ios-star"></i>
																<i class="ion-ios-star"></i>
																<i class="ion-ios-star-outline"></i>
																<i class="ion-ios-star-outline"></i>
																<i class="ion-ios-star-outline"></i>
															</c:if>
															<!--평점 60점 이상 80점 미만일 경우  -->
															<c:if test="${reviewGrade ge 3 && reviewGrade lt 4}">
																<i class="ion-ios-star"></i>
																<i class="ion-ios-star"></i>
																<i class="ion-ios-star"></i>
																<i class="ion-ios-star-outline"></i>
																<i class="ion-ios-star-outline"></i>
															</c:if>
															<!-- 평점 80점 이상인 경우 -->
															<c:if test="${reviewGrade ge 4 && reviewGrade lt 5}">
																<i class="ion-ios-star"></i>
																<i class="ion-ios-star"></i>
																<i class="ion-ios-star"></i>
																<i class="ion-ios-star"></i>
																<i class="ion-ios-star-outline"></i>
															</c:if>
															<c:if test="${reviewGrade eq 5}">
																<i class="ion-ios-star"></i>
																<i class="ion-ios-star"></i>
																<i class="ion-ios-star"></i>
																<i class="ion-ios-star"></i>
																<i class="ion-ios-star"></i>
															</c:if>
														</div>
														<!-- ↓↓↓날짜↓↓↓ -->
														<p class="time" style="text-align-last: right;">
															날짜 :
															<fmt:formatDate value="${review.r_date}"
																pattern="yyyy/MM/dd"></fmt:formatDate>
														</p>
														<!-- ↓↓↓내용↓↓↓ -->
														<p>내용 : ${review.r_content }</p>
														<hr>
														<!-- ↓↓↓유저 이메일↓↓↓ -->
														<p>글쓴이 : ${review.user_Info.u_email }</p>
														<div class="title-hd-sm"></div>
													</div>

												</c:forEach>

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