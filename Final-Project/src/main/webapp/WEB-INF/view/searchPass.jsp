<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>비밀번호 찾기</title>
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
	function useSearchId() {
		document.userSearchId.action = "main";
		document.userSearchId.submit;
	}
</script>
<body>
	<!-- BEGIN | Header -->
	<jsp:include page="include_common_top.jsp"/>
	<!-- END | Header -->
	<!--중앙 헤드 시작  -->
	<div class="hero user-hero">
		<div class="container">
			<div class="row">
				<div class="col-md-12" >
					<div class="hero-ct" >
						<h1>아이디 /비밀번호 찾기</h1>
						<ul class="breadcumb">
							<li class="active"><a href="main">Home</a></li>
							<li><span class="ion-ios-arrow-right"></span>Profile</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--중앙 헤드 끝-->
	<!--찾기 메뉴보드판 시작 -->
	<div class="page-single">
		<div class="container">
				<div class="col-md-9 col-sm-12 col-xs-12">
					<div class="form-style-1 user-pro" action="">
						<!--중앙 아이디 찾기  -->
						<form  name="userSearchId">
							<h4>  비밀번호 찾기</h4>
								<div class="row">
									<div class="col-md-6 form-it">
										<label>${user_Info.u_name}의 비밀번호</label>
										<input type="hidden"  name="u_name2" value="${user_Info.u_name}">
										<input type="text"  name="u_pass" value="${user_Info.u_pass}">
									</div>
								</div>
								<!--찾기 버튼 시작  -->
								<div class="row">
									<div class="col-md-2">
									<a class="loginLink" style="float:left; background-color:#dd003f; color:#ffffff; padding:5px 15px; border-radius:10px; cursor:pointer">로그인</a>
									</div>
								</div><br><br>
								<!--찾기 버튼 끝  -->
						</form>
					</div>
				</div>
		</div>
	</div>
	<!--찾기 메뉴보드판 시작 -->
	<!-- footer section-->
	<jsp:include page="include_common_bottom.jsp"></jsp:include>
	<!-- end of footer section-->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/plugins2.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>