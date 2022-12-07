<%@page import="com.itflix.dto.Subscription"%>
<%@page import="com.itflix.dto.User_Info"%>
<%@page
	import="ch.qos.logback.core.recovery.ResilientSyslogOutputStream"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<%
User_Info login_user = (User_Info) session.getAttribute("login_user");
Subscription subscription = (Subscription) session.getAttribute("subscription");
%>
<style type="text/css">
input#search {
	background: url(images/uploads/topsearch.png);
	background-repeat: no-repeat;
	background-position: 0px center;
	width: 45px;
	height: 45x;
	align-items: center;
}
</style>

<script type="text/javascript">
	function keywordCheck() {
		var str_keyword = window.searchform.keyword.value;
		if (!str_keyword || str_keyword === "") {
			window.alert("검색어를 입력하세요.");
			window.searchform.keyword.focus();
			return false;
		}
		window.searchform.submit();
	}
	
	<!-- login(로그인) -->
	console.log('1.'+$);
	$(function(){
	    $(document).on('submit','#login_form',function(e){
			
			$.ajax({
			    method:'POST',
			    url:'rest_user_login_action',
			    data:$('#login_form').serialize(),
			    success:function(jsonResult){
					console.log(jsonResult);
					if(jsonResult.code==1){
						//성공
						location.href='main';
						<!-- history.back(); -->

					}else if(jsonResult.code==2){
						alert(jsonResult.msg);
						 $('#u_pass').select().focus();
					}else if(jsonResult.code==3){
					    alert(jsonResult.msg);
					    $('#u_email').select().focus();
					}else if(jsonResult.code==4){
					    alert(jsonResult.msg);
					}
			    },
			    error:function(){
					alert('error!!!');
			    }
			});
			e.preventDefault();
	    });
	});
	
	<!-- SignUpCheck(회원가입 체크) -->
    function pwCheck() {
              document.createUser.action="CreateUser_action";
              document.createUser.method="POST";
              document.createUser.submit();
      }
	
</script>


<header class="ht-header">
	<!--start of loading<로딩페이지 로고 사진 >-->
	<div id="preloader">
		<img class="logo" src="images/mylogo.png" alt="" width="119"
			height="58">
		<div id="status">
			<span></span><span></span>
		</div>
	</div>
	<!--end of loading<로딩페이지 로고 사진 >-->

	<!--login form popup-->
	<div class="login-wrapper" id="login-content">
		<div class="login-content">
			<a href="#" class="close">x</a>
			<h3>로그인</h3>
			<form method="post" action="rest_user_login_action" id="login_form"
				name="login_form">
				<div class="row">
					<label for="email">Email:<input type="text" name="u_email"
						id="u_email" placeholder="example@itflix.com"
						pattern="^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"
						required="required" value="" /> <!--  required="required" value="${User_info.u_email}" /> -->
					</label>
				</div>
				<div class="row">
					<label for="password"> Password:<input type="password"
						name="u_pass" id="u_pass" placeholder="영문자,숫자,특수문자 포함(최소8자리)"
						pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$"
						required="required" value="" /></label>
					<!--  required="required" value="${User_info.u_pass}" /></label>  -->
				</div>
				<div class="row">
					<div class="remember">
					<!-- 
						<div>
							<input type="checkbox" name="remember" value="Remember me"><span>Remember
								me</span>
						</div>
					 -->
						<a href="userSearch">Forget ID/Password ?</a>
					</div>
				</div>
				<div class="row">
					<button type="submit">확인</button>
				</div>
			</form>
			<!-- 
			<div class="row">
				<p>Or via social</p>
				<div class="social-btn-2">
					<a class="fb" href="#"><i class="ion-social-facebook"></i>Facebook</a><a
						class="tw" href="#"><i class="ion-social-twitter"></i>twitter</a>
				</div>
			</div>
			 -->
		</div>
	</div>
	<!--end of login form popup-->
	<!--signup form popup-->
	<div class="login-wrapper" id="signup-content">
		<div class="login-content">
			<a href="#" class="close">x</a>
			<h3>회원가입</h3>

			<form name="createUser" method="post" action="CreateUser_action">
				<div class="row">
					<label for="email">Email:<input type="text" name="u_email"
						id="u_email" placeholder="example@itflix.com"
						pattern="^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"
						required="required" /></label>
				</div>
				<div class="row">
					<label for=userName>Name:<input type="text" name="u_name"
						id="u_name" placeholder="홍길동" pattern="^[(가-힣)(a-zA-Z)]{2,}$"
						required="required" /></label>
				</div>
				<div class="row">
					<label for=phone>Phone:<input type="text" name="u_phone"
						id="u_phone" placeholder="010-0000-0000"
						pattern="^(?:\d{3}|\(\d{3}\))([-\/\.])\d{4}\1\d{4}$"
						required="required" /></label>
				</div>
				<div class="row">
					<label for="password"> Password:<input type="password"
						name="u_pass1" id="u_pass1" placeholder="영문자,숫자,특수문자 포함(최소8자리)"
						pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$"
						required="required" /></label>
				</div>
				<div class="row">
					<label for="repassword"> re-type Password:<input
						type="password" name="u_pass2" id="u_pass2"
						placeholder="비밀번호 재확인"
						pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$"
						required="required" /></label>
				</div>
				<div class="row">
					<button type="submit" onclick="pwCheck()">가입하기</button>
				</div>
			</form>
		</div>
	</div>
	<!--end of signup form popup-->

	<div class="container">
		<nav class="navbar navbar-default navbar-custom">

			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header logo">
				<div class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<div id="nav-icon1">
						<span></span><span></span><span></span>
					</div>
				</div>
				<a href="main"><img class="logo" src="images/mylogo.png" alt=""
					width="70" height="58"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse flex-parent"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav flex-child-menu menu-left">
					<li class="hidden"><a href="#page-top"></a></li>
					<li class="home"><a href="main">Home </a></li>
					<li class="dropdown first"><a href="moviegridfw"> movies</a></li>
					<li class="dropdown first"><a
						class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown"
						data-hover="dropdown"> Categories <i class="fa fa-angle-down"
							aria-hidden="true"></i>
					</a> <!--카테고리 dropdown 설정 부분 -->
						<ul class="dropdown-menu level1">
							<li><a href="categoryMoviegrid?cg_no=1">액션</a></li>
							<li class="it-last"><a href="categoryMoviegrid?cg_no=2">코미디</a></li>
							<li class="it-last"><a href="categoryMoviegrid?cg_no=3">로맨스</a></li>
							<li class="it-last"><a href="categoryMoviegrid?cg_no=4">공포/미스터리</a></li>
							<li class="it-last"><a href="categoryMoviegrid?cg_no=5">SF/판타지</a></li>
							<li class="it-last"><a href="categoryMoviegrid?cg_no=6">드라마</a></li>
						</ul></li>
					<li class="dropdown first"><a href="noticeList">Notice</a></li>

				</ul>
				<ul class="nav navbar-nav flex-child-menu menu-right">

					<%
					//비로그인시 top 메뉴
					if (login_user == null) {
					%>
					<li class="btn signupLink"><a href="#">회원가입</a></li>
					<li class="loginLink"><a href="">로그인</a></li>
					<%
					} else if (login_user != null && subscription == null) {
					//로그인시 top 메뉴
					%>
					<li class="btn"><a href="userprofile">마이페이지</a></li>
					<li><a href="user_logout_action">로그아웃</a></li>
					<%
					} else if (login_user != null && subscription != null) {
					%>
					<a><img src="images/subscript.png" style="height: 40px;"></a>&nbsp;&nbsp;&nbsp;
					<li class="btn"><a href="userprofile">마이페이지</a></li>
					<li><a href="user_logout_action">로그아웃</a></li>
					<%
					}
					%>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>
		<!-- top search form -->

		<!--include_common_top_keyWordSearch <검색 보드바   -->
		<jsp:include page="include_common_top_keyWordSearch.jsp" />
		<!--include_common_top_keyWordSearch <검색 보드바   -->
	</div>
</header>
