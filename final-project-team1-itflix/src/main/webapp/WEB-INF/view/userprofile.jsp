<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>프로필</title>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<link rel="profile" href="#">
<style type="text/css"></style>
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
	function userModify() {
		document.user.action = "userModify";
		document.user.method = "POST";
		document.user.submit();
	}
	

</script>
</head>
<body>
	<!-- BEGIN | Header -->
	<jsp:include page="include_common_top.jsp"/>
	<!-- END | Header -->
	<div class="hero user-hero">
		<div class="container">
				<div class="col-md-12">
					<div class="hero-ct">
						<h1>${login_user.u_name}님의 정보</h1><br>
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
					<div class="form-style-1 user-pro" >
						<form action="" name= "user" method="post">
							<h4>회원의 상세페이지</h4> 
							<div class="row">
								<div class="col-md-6 form-it">
									<label>이름</label>
									<input type="text" value="${user_Info.u_name }" name="u_name" 
									readonly style="background:#233a50;">
								</div>
								<div class="col-md-6 form-it">
									<label>이메일</label><input type="text"
										value = "${user_Info.u_email}"
										name="u_email"
										readonly style="background:#233a50;">
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 form-it">
									<label>비밀번호</label><input type="password"
										placeholder= "********"
										name="u_pass"
										readonly style="background:#233a50;">
								</div>
								<div class="col-md-6 form-it">
									<label>핸드폰 번호</label><input type="text"
										placeholder= "${user_Info.u_phone}" 	
										name="u_phone"
										readonly style="background:#233a50;">
								</div>
							<label style="align-self: auto; position: relative; left: 17px">구독권 종료일: 
									
									<c:if test="${subscription ==null }">
										<a href="landing" style="color: orange;">구독권을 결제 해주세요.<span style="color:gray">(click)</span></a>
									</c:if>
									<c:if test="${subscription !=null }">
									<fmt:formatDate value="${subscription.s_end }" pattern="yyyy/MM/dd"/>
									</c:if>
							 </label>
							</div>
							<div class="row">
								<div class="col-md-2">
									<input class="submit" type="submit" onclick= "userModify()" value="수정하기">
								</div>
							</div>
						</form>
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