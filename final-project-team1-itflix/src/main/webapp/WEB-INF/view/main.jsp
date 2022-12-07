<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>메인ITFLIX</title>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript" src="http://www.youtube.com/player_api"></script>

<script type="text/javascript">
	players = new Array();

	function onYouTubeIframeAPIReady() {
		var temp = $("iframe.yt_players");
		for (var i = 0; i < temp.length; i++) {
			var t = new YT.Player($(temp[i]).attr('id'), {
				events : {
					'onStateChange' : onPlayerStateChange
				}
			});
			players.push(t);
		}
	}
	onYouTubeIframeAPIReady();

	function onPlayerStateChange(event) {
		if (event.data == YT.PlayerState.PLAYING) {
			var temp = event.target.getVideoUrl();
			var tempPlayers = $("iframe.yt_players");
			for (var i = 0; i < players.length; i++) {
				if (players[i].getVideoUrl() != temp)
					players[i].stopVideo();
			}
		}
	}
</script>

<script type="text/javascript">
	$(function() {
		$('iframe[src*="//www.youtube.com/watch?"]')
				.each(
						function(i) {
							this.contentWindow
									.postMessage(
											'{"event":"command","func":"pauseVideo","args":""}',
											'*');
						});
	});
</script>
</head>
<body>

	<!-- BEGIN | Header -->
	<jsp:include page="include_common_top.jsp" />
	<!-- END | Header -->

	<!--메인 영화 리스트   -->
	<form name="f" method="Post">
		<div class="slider movie-items">
			<div class="container">
				<div class="row">
					<div class="slick-multiItemSlider">
						<c:forEach items="${movieList}" var="movie">
							<div class="movie-item">
								<div class="mv-img">
									<a href=""><img
										src="images/${movie.category.cg_name}/${movie.m_name}_1.jpg"
										alt="" width="285" height="437"></a>
								</div>
								<div class="hvr-inner">
									<a href="moviesingle?m_no=${movie.m_no}">더보기 <i
										class="ion-android-arrow-dropright"></i></a>
								</div>
								<div class="title-in">
									<div class="cate">
										<span class="blue"><a href="#">${movie.category.cg_name}</a></span>
									</div>
									<h6>
										<a href="moviesingle?m_no=${movie.m_no}">${movie.m_name}</a>
									</h6>
									<p>
										<i class="ion-android-star"></i> <span>
											${movie.review.r_grade} </span>/5
									</p>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</form>
	<!--메인 영화 리스트   -->

	<!--테마별 영화 리스트  -->
	<div class="movie-items">
		<div class="container">
			<div class="row ipad-width">
				<div class="col-md-8">
					<!--조회수 별 영화 리스트  -->
					<!--조회수 별 카테고리   -->
					<div class="title-hd">
						<h2>영화 순위</h2>
						<a href="moviegridfw" class="viewall">전체보기 <i
							class="ion-ios-arrow-right"></i></a>
					</div>
					<div class="tabs">
						<ul class="tab-links">
							<li class="active"><a href="#tab1">#조회수가 많은</a></li>
							<li><a href="#tab2">#최근 개봉한</a></li>
							<li><a href="#tab3">#평점이 높은</a></li>
						</ul>
						<!--조회수 별 카테고리   -->
						<!--조회수가 많은 영화 탭  -->
						<div class="tab-content">
							<div id="tab1" class="tab active">
								<div class="row">
									<div class="slick-multiItem">

										<c:forEach items="${movieCountList}" var="movie">
											<div class="slide-it">
												<div class="movie-item">
													<div class="mv-img">
														<img
															src="images/${movie.category.cg_name}/${movie.m_name }_1.jpg"
															alt="" width="185" height="284">
													</div>
													<div class="hvr-inner">
														<a href="moviesingle?m_no=${movie.m_no}">더보기 <i
															class="ion-android-arrow-dropright"></i></a>
													</div>
													<div class="title-in">
														<h6>
															<a href="#">${movie.m_name}</a>
														</h6>
														<p>
															<i class="ion-android-star"></i><span>
																${movie.review.r_grade}</span>/5
														</p>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							<!--최신 영화 탭  -->
							<div id="tab2" class="tab">
								<div class="row">
									<div class="slick-multiItem">

										<c:forEach items="${movieCountNewDate}" var="movie">
											<div class="slide-it">
												<div class="movie-item">
													<div class="mv-img">
														<img
															src="images/${movie.category.cg_name}/${movie.m_name }_1.jpg"
															alt="" width="185" height="284">
													</div>
													<div class="hvr-inner">
														<a href="moviesingle?m_no=${movie.m_no}">더보기 <i
															class="ion-android-arrow-dropright"></i></a>
													</div>
													<div class="title-in">
														<h6>
															<a href="#">${movie.m_name}</a>
														</h6>
														<p>
															<i class="ion-android-star"></i><span>
																${movie.review.r_grade}</span>/5
														</p>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							<!--평점높은 영화 탭  -->
							<div id="tab3" class="tab">
								<div class="row">
									<div class="slick-multiItem">

										<c:forEach items="${movieGradeList}" var="movie">
											<div class="slide-it">
												<div class="movie-item">
													<div class="mv-img">
														<img
															src="images/${movie.category.cg_name}/${movie.m_name }_1.jpg"
															alt="" width="185" height="284">
													</div>
													<div class="hvr-inner">
														<a href="moviesingle?m_no=${movie.m_no}">더보기 <i
															class="ion-android-arrow-dropright"></i></a>
													</div>
													<div class="title-in">
														<h6>
															<a href="#">${movie.m_name}</a>
														</h6>
														<p>
															<i class="ion-android-star"></i><span>
																${movie.review.r_grade}</span>/5
														</p>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--조회수 별 카테고리   -->

					<!--카테고리별 영화 리스트  -->
					<div class="title-hd">
						<h2>장르별 영화리스트</h2>
						<a href="moviegridfw" class="viewall">전체보기 <i
							class="ion-ios-arrow-right"></i></a>
					</div>
					<div class="tabs">
						<!--카테고리별 카테고리  -->
						<ul class="tab-links-2">
							<li class="active"><a href="#tab21">#액션</a></li>
							<li><a href="#tab22">#코미디</a></li>
							<li><a href="#tab23">#로맨스</a></li>
							<li><a href="#tab24">#공포/미스터리</a></li>
							<li><a href="#tab25">#SF/판타지</a></li>
							<li><a href="#tab26">#드라마</a></li>
						</ul>
						<!--카테고리별 카테고리  -->
						<div class="tab-content">
							<!--tab21탭  -->
							<div id="tab21" class="tab active">
								<div class="row">
									<div class="slick-multiItem">
										<c:forEach items="${movieActionList}" var="movie">
											<div class="slide-it">
												<div class="movie-item">
													<div class="mv-img">
														<img
															src="images/${movie.category.cg_name }/${movie.m_name }_1.jpg"
															alt="" width="185" height="284">
													</div>
													<div class="hvr-inner">
														<a href="moviesingle?m_no=${movie.m_no }">더보기 <i
															class="ion-android-arrow-dropright"></i></a>
													</div>
													<div class="title-in">
														<h6>
															<a>${movie.m_name}</a>
														</h6>
														<p>
															<i class="ion-android-star"></i><span>${movie.review.r_grade}</span>/5
														</p>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							<!--tab21탭  -->
							<!--tab22탭  -->
							<div id="tab22" class="tab">
								<div class="row">
									<div class="slick-multiItem">

										<c:forEach items="${movieComedyList}" var="movie">
											<div class="slide-it">
												<div class="movie-item">
													<div class="mv-img">
														<img
															src="images/${movie.category.cg_name }/${movie.m_name }_1.jpg"
															alt="" width="185" height="284">
													</div>
													<div class="hvr-inner">
														<a href="moviesingle?m_no=${movie.m_no }">더보기 <i
															class="ion-android-arrow-dropright"></i></a>
													</div>
													<div class="title-in">
														<h6>
															<a>${movie.m_name}</a>
														</h6>
														<p>
															<i class="ion-android-star"></i><span>${movie.review.r_grade}</span>/5
														</p>
													</div>
												</div>
											</div>
										</c:forEach>

									</div>
								</div>
							</div>
							<!--tab22탭  -->
							<!--tab23탭  -->
							<div id="tab23" class="tab">
								<div class="row">
									<div class="slick-multiItem">
										<c:forEach items="${movieRomanceList}" var="movie">
											<div class="slide-it">
												<div class="movie-item">
													<div class="mv-img">
														<img
															src="images/${movie.category.cg_name }/${movie.m_name }_1.jpg"
															alt="" width="185" height="284">
													</div>
													<div class="hvr-inner">
														<a href="moviesingle?m_no=${movie.m_no }">더보기 <i
															class="ion-android-arrow-dropright"></i></a>
													</div>
													<div class="title-in">
														<h6>
															<a>${movie.m_name}</a>
														</h6>
														<p>
															<i class="ion-android-star"></i><span>${movie.review.r_grade}</span>/5
														</p>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							<!--tab23탭  -->
							<!--tab24탭  -->
							<div id="tab24" class="tab">
								<div class="row">
									<div class="slick-multiItem">
										<c:forEach items="${movieHorrorList}" var="movie">
											<div class="slide-it">
												<div class="movie-item">
													<div class="mv-img">
														<img
															src="images/${movie.category.cg_name }/${movie.m_name }_1.jpg"
															alt="" width="185" height="284">
													</div>
													<div class="hvr-inner">
														<a href="moviesingle?m_no=${movie.m_no }">더보기 <i
															class="ion-android-arrow-dropright"></i></a>
													</div>
													<div class="title-in">
														<h6>
															<a>${movie.m_name}</a>
														</h6>
														<p>
															<i class="ion-android-star"></i><span>${movie.review.r_grade}</span>/5
														</p>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							<!--tab24탭  -->
							<!--tab25탭  -->
							<div id="tab25" class="tab">
								<div class="row">
									<div class="slick-multiItem">
										<c:forEach items="${movieSFList}" var="movie">
											<div class="slide-it">
												<div class="movie-item">
													<div class="mv-img">
														<img
															src="images/${movie.category.cg_name }/${movie.m_name }_1.jpg"
															alt="" width="185" height="284">
													</div>
													<div class="hvr-inner">
														<a href="moviesingle?m_no=${movie.m_no }">더보기 <i
															class="ion-android-arrow-dropright"></i></a>
													</div>
													<div class="title-in">
														<h6>
															<a>${movie.m_name}</a>
														</h6>
														<p>
															<i class="ion-android-star"></i><span>${movie.review.r_grade}</span>/5
														</p>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							<!--tab25탭  -->
							<!--tab26탭  -->
							<div id="tab26" class="tab">
								<div class="row">
									<div class="slick-multiItem">
										<c:forEach items="${movieDramaList}" var="movie">
											<div class="slide-it">
												<div class="movie-item">
													<div class="mv-img">
														<img
															src="images/${movie.category.cg_name }/${movie.m_name }_1.jpg"
															alt="" width="185" height="284">
													</div>
													<div class="hvr-inner">
														<a href="moviesingle?m_no=${movie.m_no }">더보기 <i
															class="ion-android-arrow-dropright"></i></a>
													</div>
													<div class="title-in">
														<h6>
															<a>${movie.m_name}</a>
														</h6>
														<p>
															<i class="ion-android-star"></i><span>${movie.review.r_grade}</span>/5
														</p>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							<!--tab26탭  -->

						</div>
					</div>
					<!--카테고리별 영화리스트 종료  -->
				</div>
			</div>
		</div>
	</div>
	<!--영화 리스트 종료  -->



	<!--트레일러 영상 및 트레일러 사진  -->
	<div class="trailers">
		<div class="container">
			<div class="row ipad-width">
				<div class="col-md-12">
					<div class="title-hd">
						<h2>예고편</h2>
						<a href="moviegridfw" class="viewall">전체보기 <i
							class="ion-ios-arrow-right"></i></a>
					</div>
					<div class="videos">

						<div class="slider-for-2 video-ft">
							<c:forEach items="${movieCountList}" var="movie">
								<div>
									<iframe class="ytplayer" src="" data-src="${movie.m_url}"></iframe>
								</div>
							</c:forEach>
						</div>
						<!--영상 url  -->

						<!--영상 트레일러 사진  -->
						<div class="slider-nav-2 thumb-ft">
							<c:forEach items="${movieCountList}" var="movie">
								<div class="item">
									<div class="trailer-img">
										<img
											src="images/${movie.category.cg_name }/${movie.m_name}_2.jpg"
											alt="photo by Barn Images" width="4096" height="2737">
									</div>
									<div class="trailer-infor">
										<h4 class="desc">${movie.m_name }</h4>
										<p style="font-size: 13px; color: #0DEEC9">
											<fmt:formatDate value="${movie.m_date}" pattern="yyyy/MM/dd" />
										</p>
									</div>
								</div>
							</c:forEach>
						</div>
						<!--영상 트레일러 사진  -->

					</div>
				</div>
			</div>
		</div>
	</div>

	<!--최신 공지사항 1개-->
	<div class="latestnew">
		<div class="container">
			<div class="row ipad-width">
				<div class="col-md-8">
					<div class="title-hd">
						<h2>최신 공지사항</h2>
						<a href="noticeList" class="viewall">전체보기 <i
							class="ion-ios-arrow-right"></i></a>
					</div>
					<div class="tabs">
						<div class="tab-content">
							<div id="tab31" class="tab active">
								<div class="row">
									<div class="blog-item-style-1">
										<img src="images/mylogo.png" alt="" width="170" height="250">
										<div class="blog-it-infor">
											<h3>
												<a href="noticeDetail?n_no=${notice.n_no }">
													${notice.n_title}</a>
											</h3>
											<span class="time"><fmt:formatDate
													value="${notice.n_date}" pattern="yyyy/MM/dd" /></span>
											<p>${notice.n_content}</p>
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
	<!--end of latest new v1 section-->
	<!-- footer section-->
	<jsp:include page="include_common_bottom.jsp"></jsp:include>
	<!-- end of footer section-->

	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/plugins2.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>