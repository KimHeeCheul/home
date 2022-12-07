<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>내가 쓴 리뷰 리스트</title>
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
<script type="text/javascript">
	//나의 리뷰 삭제
	function userrate_review_delete_action(formId) {
		console.log(document.getElementById(formId));
		const deleteForm = document.getElementById(formId)
		deleteForm.action = "userrate_review_delete_action";
		deleteForm.method = "POST";
		deleteForm.submit();
	}
	//나의 리뷰 수정
	function reviewModify(formId) {
		console.log(document.getElementById(formId));
		const deleteForm = document.getElementById(formId)
		deleteForm.action = "reviewModify";
		deleteForm.method = "POST";
		deleteForm.submit();
	}
</script>
</head>
<body>
	<!-- BEGIN | Header -->
	<jsp:include page="include_common_top.jsp"/>
	<!-- END | Header -->
	<div class="hero user-hero">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="hero-ct">
						<h1>${login_user.u_name}님의 리뷰</h1>
						<ul class="breadcumb">
							<li class="active"><a href="main">Home</a></li>
							<li><span class="ion-ios-arrow-right"></span>Movie review</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Start | user leff menu bar-->
	<jsp:include page="include_user_menu.jsp" />
	<!-- End | user leff menu bar-->
				<div class="col-md-9 col-sm-12 col-xs-12">
					<div class="topbar-filter">
						<p>
							총 <span>${reviewCount}</span> 개
						</p>
					</div>
					<c:forEach items="${myReview}" var="review">
						<div class="movie-item-style-2 userrate">
							<form name="reviewD" id="reviewD_${review.r_no}" >
								<input type="hidden" name="r_no" value="${review.r_no}">
								<img src="images/${review.movie.category.cg_name }/${review.movie.m_name }_1.jpg" alt="">
								<div class="mv-item-infor" style="float: right;" >
									<h6>
										<a href="moviesingle?m_no=${review.movie.m_no }">${review.movie.m_name }
										<span style="font-size: 9pt; color:#0DEEC9"><fmt:formatDate	value="${review.movie.m_date}" pattern="yyyy/MM/dd" /></span></a>
										<input type="hidden" name="m_no" value="${review.movie.m_no }">
									</h6>
									<p class="time sm-text">나의 평점:</p>
										<p class="rate">
										<i class="ion-android-star"></i><span>${review.r_grade }</span>/5</p>
									<input name="u_email" value="${user_Info.u_email }" type="hidden">
									<p class="time sm-text" >나의 리뷰:</p>
									<h6>${review.r_title }</h6>
									<input type="hidden" name="r_title" value="${review.r_title }">
									<p class="time sm">작성일:
									<fmt:formatDate value="${review.r_date}" pattern="yyyy/MM/dd" />
									</p>
									<p> “${review.r_content}”</p>
									<input type="hidden" name="r_content" value="${review.r_content }">
								</div><br><br>
									<a class="btn" style="float:left; background-color:#dd003f; color:#ffffff; padding:5px 15px; border-radius:10px; cursor:pointer" 
										onclick="reviewModify('reviewD_${review.r_no}')">수정</a>
									<a class="btn" style="float:right; background-color:#dd003f; color:#ffffff; padding:5px 15px; border-radius:10px; cursor:pointer;"
									   onclick="userrate_review_delete_action('reviewD_${review.r_no}');">삭제</a>
							</form>
						</div>
					</c:forEach>
					
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