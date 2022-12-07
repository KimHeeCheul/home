<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>아이디/비밀번호 찾기</title>
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
	function searchId() {
		if (document.userId.u_name1.value == "") {
			alert("이름을 입력해주세요.");
			return false;
		}
		if (document.userId.u_phone.value == "") {
			alert("번호를 입력해 주세요.");
			return false;
		}
		document.userId.action = "searchId";
		document.userId.method = "POST";
		document.userId.submit;
	}
	
	function searchPass() {
		if (document.password.u_email.value == "") {
			alert("아이디을 입력해주십시요!");
			return false;
		}
		if (document.password.u_name2.value == "") {
			alert("이름을 입력해주십시요!");
			return false;
		}
		document.password.action = "searchPass";
		document.password.method = "POST";
		document.password.submit;
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
					<div class="form-style-1 user-pro" >
						<!--중앙 아이디 찾기  -->
						<form action="" name="userId">
							<h4>아이디 찾기</h4>
								<div class="row">
									<div class="col-md-6 form-it">
										<label>이름</label>
										<input type="text" placeholder="이름" name="u_name1">
									</div>
									<div class="col-md-6 form-it">
										<label>연락처</label>
										<input type="text" placeholder="핸드폰" name="u_phone">
									</div>
								</div>
								<!--찾기 버튼 시작  -->
								<div class="row">
									<div class="col-md-2">
										<input class="submit" type="submit" value="아이디 찾기" onclick="searchId()">
									</div>
								</div><br><br>
								<!--찾기 버튼 끝  -->
						</form>
						<!--중앙 패스워드 찾기  -->
						<form action="" name="password">
							<h4>패스워드 찾기</h4>
								<div class="row">
									<div class="col-md-6 form-it">
										<label>아이디</label>
										<input type="text" placeholder="아이디" name="u_email">
									</div>
									<div class="col-md-6 form-it">
										<label>이름</label>
										<input type="text" placeholder="이름" name="u_name2">
									</div>
								</div>
							<div class="row">
								<div class="col-md-2">
									<input class="submit" type="submit" value="비밀번호 찾기" onclick="searchPass()">
								</div>
							</div>
						</form>
						<!--중앙 패스워드 찾기 끝  -->
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