<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<!--[if IE 7]><html class="ie ie7 no-js" lang="en-US"><![endif]-->
<!--[if IE 8]><html class="ie ie8 no-js" lang="en-US"><![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>카테고리별 영화 리스트</title>
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
<script type="text/javascript">
	function categoryChane() {
		var selectList = document.getElementById("cate1")
		console.log(selectList.options);
		console.log(selectList.selectedIndex);
		console.log(selectList.options[selectList.selectedIndex])
		const categoryData = selectList.options[selectList.selectedIndex].text;
		const categoryValue = selectList.options[selectList.selectedIndex].value
		const storageObj = {
			"name" : categoryData,
			"value" : categoryValue
		}

		window.localStorage.setItem("category", JSON.stringify(storageObj))

		if (categoryValue == "1") {
			location.href = "categoryMoviegrid?cg_no=1";
		}
		if (categoryValue == "2") {
			location.href = "categoryMoviegrid?cg_no=2";
		}
		if (categoryValue == "3") {
			location.href = "categoryMoviegrid?cg_no=3";
		}
		if (categoryValue == "4") {
			location.href = "categoryMoviegrid?cg_no=4";
		}
		if (categoryValue == "5") {
			location.href = "categoryMoviegrid?cg_no=5";
		}
		if (categoryValue === "6") {
			location.href = "categoryMoviegrid?cg_no=6";
		}

	}
</script>
<script type="text/javascript">
	function index() {
		let category = window.localStorage.getItem('category');
		let categoryObj = JSON.parse(category)
		console.log(categoryObj);
		let selectList = document.getElementById("cate1")

		selectList.options[categoryObj['value']].setAttribute("selected", true)
	}
</script>
<body onload='index()'>
	<!-- BEGIN | Header -->
	<jsp:include page="include_common_top.jsp" />
	<!-- END | Header -->

	<!--중앙 타이틀 화면 -->
	<div class="hero common-hero">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="hero-ct">
						<h1>장르별 영화 리스트</h1>
						<ul class="breadcumb">
							<li class="active"><a href="index.jsp">Home</a></li>
							<li><span class="ion-ios-arrow-right"></span>categories</li>

						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--중앙 타이틀 화면 -->
	<!-- 메인 공지사항 리스트  -->
	<div class="page-single">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<!--분류 보드바 -->
					<div class="topbar-filter fw">
						<p>
							총 <span>${categoryCount}</span> 개
						</p>
						<select id="cate1" name="cate1" onchange="categoryChane()">
							<option value="popularity">카테고리</option>
							<option value="1">액션</option>
							<option value="2">코미디</option>
							<option value="3">로맨스</option>
							<option value="4">공포 미스터리</option>
							<option value="5">SF 판타지</option>
							<option value="6">드라마</option>
						</select>
					</div>
					<!--분류 보드바 -->
					<div class="flex-wrap-movielist mv-grid-fw">
						<!--**************************반복 구간 부분********************************  -->
						<c:forEach items="${movieList}" var="movie">
							<div class="movie-item-style-2 movie-item-style-1">
								<img
									src="images/${movie.category.cg_name }/${movie.m_name }_1.jpg"
									alt="">
								<div class="hvr-inner">
									<a href="moviesingle?m_no=${movie.m_no }"> 더보기 <i
										class="ion-android-arrow-dropright"></i></a>
								</div>
								<div class="mv-item-infor">
									<h6>
										<a href="moviesingle?m_no=${movie.m_no }">${movie.m_name }</a>
									</h6>
									<p class="rate">
										<i class="ion-android-star"></i><span>
											${movie.review.r_grade }</span>/5
									</p>
								</div>
							</div>
						</c:forEach>
						<!--**************************반복 구간 부분********************************  -->
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