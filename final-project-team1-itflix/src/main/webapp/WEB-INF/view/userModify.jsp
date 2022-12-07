<%@page import="com.itflix.dto.User_Info"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
User_Info login_user = (User_Info) session.getAttribute("login_user");
%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>유저 수정페이지</title>
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
	// 마이페이지 password가 회원의 password와 일치하면 진행
	function update_action() {
		document.userUpdate.action = "update_action";
		document.userUpdate.method = 'POST';
		document.userUpdate.submit();
	}
</script>
</head>
<body>
	<!-- BEGIN | Header -->
	<jsp:include page="include_common_top.jsp" />
	<!-- END | Header -->
	<div class="hero user-hero">
		<div class="container">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1 align="center">회원의 상세페이지</h1>
					<ul class="breadcumb">
						<li class="active"><a href="main">Home</a></li>
						<li><span class="ion-ios-arrow-right"></span>Profile</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- Start | user leff menu bar-->
	<jsp:include page="include_user_menu.jsp" />
	<!-- End | user leff menu bar-->
	<div class="col-md-9 col-sm-12 col-xs-12">
		<div class="form-style-1 user-pro">
			<form name="userUpdate" method="POST" action="update_action">
				<h4>회원의 상세페이지</h4>
				<div class="row">
					<div class="col-md-6 form-it">
						<label>이름</label> <input type="text" name="u_name"
							value="${user_Info.u_name}"
							readonly style="background:#233a50;">
					</div>
					<div class="col-md-6 form-it">
						<label>이메일</label> <input type="text" name="u_email"
							value="${user_Info.u_email}"
							readonly style="background:#233a50;">
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 form-it">
						<label>예전 비밀번호</label> <input type="password" name="userPass"
							placeholder="비밀번호를 입력하세요">
					</div>
					<div class="col-md-6 form-it">
						<label>핸드폰 번호</label> <input type="text" name="u_phone"
							value="${user_Info.u_phone}" placeholder="010-0000-0000" pattern="^(?:\d{3}|\(\d{3}\))([-\/\.])\d{4}\1\d{4}$">
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 form-it">
						<label>새로운 비밀번호</label> <input type="password" name="userPass1" placeholder="영문자,숫자,특수문자 포함(최소8자리)"
						pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$">
					</div>
					<div class="col-md-6 form-it">
						<label>새로운 비밀번호 확인</label> <input type="password" name="userPass2" placeholder="영문자,숫자,특수문자 포함(최소8자리)"
						pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$">
					</div>
				</div>
				<div class="row">
					<div class="col-md-2">
						<input class="submit" type="submit" onclick="update_action()"
							value="수정하기">
					</div>
				</div>
			</form>

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