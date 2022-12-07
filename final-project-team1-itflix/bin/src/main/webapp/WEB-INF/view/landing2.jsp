<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 7]><html class="ie ie7 no-js" lang="en-US"><![endif]-->
<!--[if IE 8]><html class="ie ie8 no-js" lang="en-US"><![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>Open Pediatrics</title>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<link rel="profile" href="#">

<!--Google Font-->
<link rel="stylesheet"
	href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
<!-- Mobile specific meta -->
<meta name=viewport content="width=device-width, initial-scale=10">
<meta name="format-detection" content="telephone-no">
<!--BootStrap bundle  -->
<link rel="stylesheet"
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js' />
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
<style type="text/css">


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
</head>
<script type="text/javascript">
	$(function() {
		$('[data-toggle="tooltip"]').tooltip()
	})
</script>


<body>
	<!--preloading-->
	<div id="preloader">
		<img class="logo" src="images/mylogo.png" width="119" height="58">
		<div id="status">
			<span></span><span></span>
		</div>
	</div>
	<!--end of preloading-->
	

	<div class="landing-hero">
		<a href="index.jsp"> <img src="images/mylogo.png" width="95" height="auto" alt="Logo">
		</a><hr><hr>
		<div class="col-lg-6 mx-auto">
				<div class="card ">
					<div class="card-header">
						<div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
							<!-- Credit card form tabs -->
							<ul role="tablist"
								class="nav bg-light nav-pills rounded nav-fill mb-3">
								<li class="nav-item"><a data-toggle="pill"
									href="#credit-card" class="nav-link active "> <i
										class="fas fa-credit-card mr-2"></i> Credit Card
								</a></li>
							</ul>
						</div>
						<!-- End -->
						<!-- Credit card form content -->
						<div class="tab-content">
							<!-- credit card info-->
							<div id="credit-card" class="tab-pane fade show active pt-3">
								<form role="form" onsubmit="event.preventDefault()">
									<div class="form-group">
										<label for="username">
											<h6>Card Owner</h6>
										</label> <input type="text" name="username"
											placeholder="Card Owner Name" required class="form-control ">
									</div>
									<div class="form-group">
										<label for="cardNumber">
											<h6>Card number</h6>
										</label>
										<div class="input-group">
											<input type="text" name="cardNumber"
												placeholder="Valid card number" class="form-control "
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
												<label><span class="hidden-xs">
														<h6>Expiration Date</h6>
												</span></label>
												<div class="input-group">
													<input type="number" placeholder="MM" name=""
														class="form-control" required> <input
														type="number" placeholder="YY" name=""
														class="form-control" required>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="form-group mb-4">
												<label data-toggle="tooltip"
													title="Three digit CV code on the back of your card">
													<h6>
														CVV <i class="fa fa-question-circle d-inline"></i>
													</h6>
												</label> <input type="text" required class="form-control">
											</div>
										</div>
									</div>
									<div class="card-footer">
										<button type="button"
											class="subscribe btn btn-primary btn-block shadow-sm">
											Confirm Payment</button>
									</div>
									<div class ="card-text">
											<p class="text-muted">Note: After clicking on the button, you
								will be directed to a secure gateway for payment. After
								completing the payment process, you will be redirected back to
								the website to view details of your order.</p>
									</div>
								</form>
							</div>
						</div>
						
						</div>
						
					</div>
				</div>
			</div><hr><hr>
		
	

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