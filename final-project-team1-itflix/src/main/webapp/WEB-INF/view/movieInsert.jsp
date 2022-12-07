<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>신규 영화 생성</title>
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
<style type="text/css">
.mv-user-review-item .m_name {
	background: #233a50;
	width: 30%;
	resize: none;
	color: #ffffff;
	border: none;
}

.mv-user-review-item .m_actor {
	background: #233a50;
	width: 30%;
	resize: none;
	color: #ffffff;
	border: none;
}

.mv-user-review-item .m_date {
	background: #233a50;
	width: 30%;
	resize: none;
	color: #ffffff;
	border: none;
}

.mv-user-review-item .m_info {
	background: #233a50;
	width: 100%;
	height: 100px;
	resize: none;
	color: #ffffff;
	border: none;
}

.mv-user-review-item .cg_no {
	background: #233a50;
	width: 30%;
	resize: none;
	color: #ffffff;
	border: none;
}

.input_file_button {
	padding: 1 px 0px;
	background-color: #000000;
	border-radius: 4px;
	color: white;
	cursor: pointer
}

.movieInsert {
	background-color: #dd003f;
	color: #ffffff;
	padding: 11px 25px;
	border-radius: 20px;
}
</style>
<script type="text/javascript">
	function insert() {
		if (document.movieinfo.m_name.value == "") {
			alert("제목을 작성해주세요.");
			return false;
		}
		if (document.movieinfo.cg_no.value == "") {
			alert("카테고리를 설정해주세요.");
			return false;
		}
		if (document.movieinfo.m_actor.value == "") {
			alert("출연진을 작성해주세요.");
			return false;
		}
		if (document.movieinfo.m_date.value == "") {
			alert("개봉일을 작성해주세요.");
			return false;
		}
		if (document.movieinfo.m_info.value == "") {
			alert("줄거리 작성해주세요.");
			return false;
		}
		if (document.movieinfo.m_image.value == "") {
			alert("사진을 추가해주세요.");
			return false;
		}
		if (document.movieinfo.m_url.value == "") {
			alert("URL을 작성해주세요.");
			return false;
		}
		document.movieinfo.action = "movieInsert_action";
		document.movieinfo.method = "POST";
		document.movieinfo.submit();
	}
</script>

</head>

<body>
	<!-- BEGIN | Header -->
	<jsp:include page="include_common_top.jsp" />
	<!-- END | Header -->
	<div class="hero mv-single-hero">
		<div class="container">
			<div class="row">
				<div class="col-md-12"></div>
			</div>
		</div>
	</div>
	<div class="page-single movie-single movie_single">
		<div class="container">
			<div class="row ipad-width2">
				<div class="col-md-2 col-sm-4 col-xs-4"></div>
				<div class="col-md-7 col-sm-4 col-xs-3">
					<div class="movie-single-ct main-content">

						<!-- ↓↓↓영화 타이틀 제목↓↓↓  -->
						<h1 class="bd-hd">신규 영화 생성</h1>
						<!-- ↑↑↑영화 타이틀 제목↑↑↑  -->
						<div class="movie-tabs">
							<div class="tabs">
								<div class="tab-content">
									<div id="overview" class="tab active">
										<div class="row">
											<div class="col-md-8 col-sm-12 col-xs-12">

												<form name="movieinfo" method="post" enctype="multipart/form-data" onsubmit="return false">
													<div class="title-hd-sm"></div>
													<div class="mv-user-review-item">
														<!-- ↓↓↓영화 이름(m_name)↓↓↓ -->
														<h3>제목</h3>
														<input type="text" name="m_name" class="m_name"
															placeholder="영화 제목을 입력해주세요."><br>
														<!-- ↓↓↓영화 카테고리(cg_no)↓↓↓ -->
														<div class="">
															<h3>카테고리</h3>
															<select name="cg_no" class="cg_no">
																<option value="" selected="selected">선택</option>
																<option value="1">액션</option>
																<option value="2">코미디</option>
																<option value="3">로맨스</option>
																<option value="4">공포</option>
																<option value="5">SF/판타지</option>
																<option value="6">드라마</option>
															</select>
														</div>
														<br>
														<!-- ↓↓↓영화 감독및 배우(m_actor)↓↓↓ -->
														<h3>출연진</h3>
														<input type="text" name="m_actor" class="m_actor"
															placeholder="출연진을 작성해주세요.">
														<!-- ↓↓↓영화 개봉일(m_date)↓↓↓ -->
														<p class="time" style="text-align-last: left;">
														<h3>개봉일</h3>
														</p>
														<input type="text" name="m_date" class="m_date"
															placeholder="yyyy/MM/dd"><br>
														<!-- ↓↓↓영화 정보(m_info)↓↓↓ -->
														<h3>줄거리</h3>
														<textarea rows="5" cols="40" name="m_info" class="m_info"
															placeholder="줄거리를 넣어주세요"></textarea>
														<!-- <input type="text" name=m_info class="m_info"
															placeholder="줄거리를 넣어주세요"> -->
														<br>
														<!-- ↓↓↓영화 이미지(m_image)↓↓↓ -->
														<h3>사진</h3>
														<label class="input_file_button" for="m_image"> <input
															type="file" multiple="multiple"  name=m_image
															class="m_image" value="">
														</label><br> <br>
														<!-- ↓↓↓영화 url(m_url)↓↓↓ -->
														<h3>URL</h3>
														<input type="url" name=m_url class="m_url"
															placeholder="영상정보를 넣어주세요"><br> <br>
													</div>
													<c:if test="${login_user.u_email == 'admin@gmail.com' }">
														<input type="submit" name="movieInsert"
															class="movieInsert" value="신규영화 생성" onclick="insert()">
													</c:if>
												</form>
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