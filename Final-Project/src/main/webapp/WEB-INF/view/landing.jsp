<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>구독권 결제</title>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<link rel="profile" href="#">
<!--BootStrap bundle  -->
<link rel="stylesheet"
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js' />
<!--Google Font-->
<link rel="stylesheet"
	href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
<!-- Mobile specific meta -->
<meta name=viewport content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone-no">
<!--JQuery js  -->
<link rel="stylesheet"
	href='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js' />
<!-- CSS files -->
<link rel="stylesheet"
	href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' />
<link rel="stylesheet"
	href='https://use.fontawesome.com/releases/v5.8.1/css/all.css' />
<link rel="stylesheet" href="css/plugins.css">
<link rel="stylesheet" href="css/style.css">
<style>
 .center {
	      text-align:  center;
}
.rounded {
	border-radius: 1rem
}
.nav-pills .nav-link {
	color: #555
}
.nav-pills .nav-link.active {
	color: white
}
input[type="radio"] {
	margin-right: 5px
}
.bold {
	font-weight: bold
}
</style>
<script type="text/javascript">
 function subscriptPay(){
	 if(document.subscript.s_cardName.value==""){
		 alert("이름을 작성해주세요.");
		 return false;
	 }
	 if(document.subscript.s_cardNumber.value=="" ){
		 alert("카드번호를 작성해주세요.");
		 return false;
	 }
	 if(document.subscript.s_cardNumber.value < 19 ){
		 alert("카드번호가 잘못됐습니다.");
		 return false;
	 }	
	 if(document.subscript.s_cardMonth.value=="0"){
		 alert("카드날짜을 설정해주세요.");
		 return false;
	 }
	 if(document.subscript.s_cardYear.value=="0"){
		 alert("카드날짜를 설정해주세요.");
		 return false;
	 }
	 if(document.subscript.s_CVV.value==""){
		 alert("보안번호 3개를 작성해주세요.");
		 return false;
	 }
	 document.subscript.action="subscriptPay_action";
	 document.subscript.method="POST";
	 document.subscript.submit;
 }
</script>
</head>
	<!--결제 팝업-->
<body>
	<div class="login-wrapper" id="login-content">
		<div class="login-content">
			<div class="card ">
				<div class="card-header">
					<!--카드 메뉴바-->
					<div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
						<ul role="tablist"
							class="nav bg-light nav-pills rounded nav-fill mb-3">
							<li class="nav-item" ><a data-toggle="pill"
								href="#credit-card" class="nav-link active "> <i
									class="fas fa-credit-card mr-2"></i> 신용카드
							</a></li>
						</ul>
					</div>
					<!--카드 메뉴바 끝  -->
					
						<div class="tab-content">
							<!-- credit card info-->
							<div id="credit-card" class="tab-pane fade show active pt-3">
							
								<form role="form" name="subscript" >
									
									<div class="form-group">
										<label for="username">
											<h6>이름</h6>
										</label> <input type="text" name="s_cardName"
										value="${user_Info.u_name}" required class="form-control ">
									</div>
									<div class="form-group">
										<label for="cardNumber">
											<h6>카드 번호</h6>
										</label>
										<div class="input-group">
												<!-- pattern="[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4}" -->
												<!-- pattern="[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4}" -->
											<input type="text" name="s_cardNumber"
												placeholder="카드번호'-'미포함 16자리 " 
												pattern="^[0-9]{4}[0-9]{4}[0-9]{4}[0-9]{4}"
												class="form-control "
												required>
											<div class="input-group-append">
												<span class="input-group-text text-muted"> <i
													class="fab fa-cc-visa mx-1"></i> <i
													class="fab fa-cc-mastercard mx-1"></i> <i
													class="fab fa-cc-amex mx-1"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-8">
											<div class="form-group">
												<label>
													<span class="hidden-xs">
														<h6>유효기간</h6>
													</span>
												</label>
												<div class="input-group">
													
														<select name="s_cardMonth"  >
															<option value="0" >선택 </option>
															<option value="1">1월 </option>
															<option value="2">2월 </option>
															<option value="3">3월 </option>
															<option value="4">4월 </option>
															<option value="5">5월 </option>
															<option value="6">6월 </option>
															<option value="7">7월 </option>
															<option value="8">8월 </option>
															<option value="9">9월 </option>
															<option value="10">10월 </option>
															<option value="11">11월 </option>
															<option value="12">12월 </option>
														</select>	
														<select name="s_cardYear"  >
															<option value="0" selected="selected" >선택 </option>
															<option value="1">1일 </option>
															<option value="2">2일 </option>
															<option value="3">3일 </option>
															<option value="4">4일 </option>
															<option value="5">5일 </option>
															<option value="6">6일 </option>
															<option value="7">7일 </option>
															<option value="8">8일 </option>
															<option value="9">9일 </option>
															<option value="10">10일 </option>
															<option value="11">11일 </option>
															<option value="12">12일 </option>
															<option value="13">13일 </option>
															<option value="14">14일 </option>
															<option value="15">15일 </option>
															<option value="16">16일 </option>
															<option value="17">17일 </option>
															<option value="18">18일 </option>
															<option value="19">19일 </option>
															<option value="20">20일 </option>
															<option value="21">21일 </option>
															<option value="22">22일 </option>
															<option value="23">23일 </option>
															<option value="24">24일 </option>
															<option value="25">25일 </option>
															<option value="26">26일 </option>
															<option value="27">27일 </option>
															<option value="28">28일 </option>
															<option value="29">29일 </option>
															<option value="30">30일 </option>
															<option value="31">31일 </option>
														</select>	
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="form-group mb-4">
												<label data-toggle="tooltip" title="Three digit CV code on the back of your card">
													<h6>
														CVV<a style="font-size: 5pt">(숫자3개)</a> <i class="fa fa-question-circle d-inline"></i>
													</h6>
												</label> 
												<input type="text" name="s_CVV" required class="form-control">
											</div>
										</div>
									</div>
									<div class="card-footer"  style="text-align:center; background:transparent; border:none;" >
										<input type="submit" style="" onclick="subscriptPay()" value="결제하기">
										
										<!-- <button type="button" onclick="subscriptPay()"
											class="subscribe btn btn-primary btn-block shadow-sm">결제하기
										</button> -->
									</div>
									<div class ="card-text">
											<p class="text-muted"><!-- Note: 결제가 될거같이 생겼지만 결제는 안된다... 후.... --></p>
									</div>
								</form>
							</div>
						</div>
						</div>
					</div>
		</div>
	</div>
	<!--결제 팝업-->

	<div class="landing-hero">
		<a href="main"> <img src="images/mylogo.png" alt="Logo" width="200px" height="200px">
		</a>
		<div class="row landing-hero-text">
			<img src="images/landing.jpg" alt="Logo">
		</div>
			<div class="center">
				<li class="loginLink"><a class="redbtn" style="color:#ffffff; cursor: pointer;">결제하기</a></li>
			</div>
			<ul class="nav navbar-nav flex-child-menu menu-right">
			</ul>
	</div>

	<!-- footer v3 section-->
	<div class="ft-copyright-landing">
		<p>
			© 2017 Blockbuster. All Rights <a href="http://www.bootstrapmb.com/"
				title="bootstrapmb">Reserved</a>. Designed by haintheme.
		</p>
	</div>
	<!-- end of footer v3 section-->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/plugins2.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>