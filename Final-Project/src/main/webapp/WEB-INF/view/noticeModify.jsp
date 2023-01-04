<%@page import="com.itflix.dto.User_Info"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String login_email = (String) session.getAttribute("login_email");
%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>공지 쓰기 페이지</title>
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
	function noticeModify_action() {
		if(document.notice.n_title.value==""){
			alert("제목을 입력해주세요.");
			return false;
		}
		if(document.notice.n_content.value==""){
			alert("내용을 입력해주세요.");
			return false;
		}
		document.notice.action = "noticeModify_action";
		document.notice.method = 'POST';
		document.notice.submit();
	}
</script>
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
						<h1 class="bd-hd">공지 작성</h1>
						<div class="movie-tabs">
							<div class="tabs">
								<div class="tab-content">
									<div id="overview" class="tab active">
										<div class="row">
											<div class="col-md-8 col-sm-12 col-xs-12">
												<!-- 상단 -->
												<div class="title-hd-sm">
													<h4>공지 작성</h4>
												</div>

												<!--공지 타이틀 부분   -->
												<form class="mb-3" name="notice" id="notice" method="post"
													action="noticeWrite_action">
													<input type="hidden" name="n_no" value="${notice.n_no}">
													<div>
														<textarea class="col-auto form-control" type="text"
															name="n_title" placeholder="제목을 입력해주세요!" 
															style="width: 100%; height: 5em; border: none; resize: none;"> ${notice.n_title}
														</textarea>
													</div>
													<br>
													<!--공지 내용  -->
													<div>
														<textarea class="col-auto form-control" type="text"
															name="n_content" placeholder="내용을 입력해 주세요!!"
															style="width: 100%; height: 30em; border: none; resize: none;"> ${notice.n_content}
															</textarea>
													</div>
													<div class="landing-hero">
														<div class="row">

															<a class="redbtn" style="cursor: pointer;"
																onclick="noticeModify_action();"> 공지 수정 </a>

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