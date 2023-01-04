<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:setProperty property="category" name="category"/>
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
<meta name=viewport content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone-no">
<!-- CSS files -->
<link rel="stylesheet" href="css/plugins.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<!--preloading-->
	<div id="preloader">
		<img class="logo" src="images/logo1.png" alt="" width="119"
			height="58">
		<div id="status">
			<span></span><span></span>
		</div>
	</div>
	<!--end of preloading-->
	<!--login form popup-->
	<div class="login-wrapper" id="login-content">
		<div class="login-content">
			<a href="#" class="close">x</a>
			<h3>Login</h3>
			<form method="post" action="login.php">
				<div class="row">
					<label for="username">Username:<input type="text"
						name="username" id="username" placeholder="Hugh Jackman"
						pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" /></label>
				</div>
				<div class="row">
					<label for="password"> Password:<input type="password"
						name="password" id="password" placeholder="******"
						pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
						required="required" /></label>
				</div>
				<div class="row">
					<div class="remember">
						<div>
							<input type="checkbox" name="remember" value="Remember me"><span>Remember
								me</span>
						</div>
						<a href="#">Forget password ?</a>
					</div>
				</div>
				<div class="row">
					<button type="submit">Login</button>
				</div>
			</form>
			<div class="row">
				<p>Or via social</p>
				<div class="social-btn-2">
					<a class="fb" href="#"><i class="ion-social-facebook"></i>Facebook</a><a
						class="tw" href="#"><i class="ion-social-twitter"></i>twitter</a>
				</div>
			</div>
		</div>
	</div>
	<!--end of login form popup-->
	<!--signup form popup-->
	<div class="login-wrapper" id="signup-content">
		<div class="login-content">
			<a href="#" class="close">x</a>
			<h3>sign up</h3>
			<form method="post" action="signup.php">
				<div class="row">
					<label for="username-2">Username:<input type="text"
						name="username" id="username-2" placeholder="Hugh Jackman"
						pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" /></label>
				</div>
				<div class="row">
					<label for="email-2"> your email:<input type="password"
						name="email" id="email-2" placeholder=""
						pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
						required="required" /></label>
				</div>
				<div class="row">
					<label for="password-2"> Password:<input type="password"
						name="password" id="password-2" placeholder=""
						pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
						required="required" /></label>
				</div>
				<div class="row">
					<label for="repassword-2"> re-type Password:<input
						type="password" name="password" id="repassword-2" placeholder=""
						pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
						required="required" /></label>
				</div>
				<div class="row">
					<button type="submit">sign up</button>
				</div>
			</form>
		</div>
	</div>
	<!--end of signup form popup-->
	
	<!-- BEGIN | Header -->
	<jsp:include page="include_common_top.jsp"/>
	<!-- END | Header -->

	<div class="hero common-hero">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="hero-ct">
						<h1>blog detail</h1>
						<ul class="breadcumb">
							<li class="active"><a href="#">Home</a></li>
							<li><span class="ion-ios-arrow-right"></span>blog listing</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- blog detail section-->
	<div class="page-single">
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-sm-12 col-xs-12">
					<div class="blog-detail-ct">
						<h1>New Character Posters For Pirates Of The Caribbean</h1>
						<span class="time">27 Mar 2017</span><img
							src="images/uploads/blog-detail.jpg" alt="">
						<p>Joss Whedon has a little bit of a history with superhero
							movies, and for creating layered female characters. After his
							documented frustrations with Wonder Woman, he's getting another
							chance at the DC Extended Universe and Warner Bros., closing in
							on a deal to write direct and produce a Batgirl movie.</p>
						<p>It's a somewhat surprising, but welcome move, given that
							Whedon has taken a long break to write something original, but
							has now pivoted to focus on developing the Batgirl project. First
							appearing in 1967 in Gardner Fox and Carmine Infantino's story
							run The Million Dollar Debut Of Batgirl, she's the superhero
							alias of Barbara Gordon, daughter of Gotham City Police
							Commissioner James Gordon. So we can likely expect J.K. Simmons'
							take on Gordon to appear along with other Bat-related characters.</p>
						<p>Based on Lissa Evans’ novel “Their Finest Hour and a Half”
							and directed by Lone Scherfig (“An Education”), the film is set
							in London during World War II when the British ministry was
							utilizing propaganda films to boost morale. Arterton plays Catrin
							Cole, a scriptwriter who is brought on to handle the women’s
							dialogue — commonly referred to as “the nausea.” The film,
							opening this week, features an outstanding ensemble, including
							Bill Nighy as a washed-up actor and Sam Claflin as Catrin’s
							fellow writer and sparring partner.</p>
						<div class="flex-it flex-ct">
							<p>
								Arterton is next set to play Vita Sackville-West in Vita and
								Virginia about her relationship with Virginia Woolf. She spoke
								to Variety about working with female directors, remarkable
								women, and why she shies away from the term “strong female
								character.” <br> I’m friends with the producer who I worked
								with on Byzantium and he sent it to me. I read the book as well,
								which is fantastic. You’re always looking for untold stories and
								many times they’re women’s stories. What surprised me is that it
								centers around a woman who’s really quite timid. I guess she’s
								allowed to be because all of the other characters.
							</p>
							<img src="images/uploads/blog-detail2.jpg" alt="">
						</div>
						<p>Man Down debuted simultaneously on digital platforms in the
							U.K., meaning it was never going to be a big earner in theaters.
							But no one expected only one ticket sale. As of Tuesday, the Reel
							Cinema in Burnley was still carrying Man Down, which also stars
							Gary Oldman, Jai Courtney and Kate Mara.</p>
						<p>In the film, LaBeouf stars as a war veteran suffering from
							PTSD following his return from Afghanistan. The indie project,
							reuniting the star with A Guide to Recognizing Your Saints
							director Dito Montile, made its world premiere at the 2016 Venice
							Film Festival before making making a stop at the Toronto
							International Film Festival.</p>
						<!-- share link -->
						<div class="flex-it share-tag">

							<div class="right-it">
								<h4>Tags</h4>
							</div>
						</div>
						<!-- comment items -->

						<!-- comment form -->
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- end of  blog detail section-->
	<!-- footer section-->
	<jsp:include page="include_common_bottom.jsp"></jsp:include>
	<!-- end of footer section-->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/plugins2.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>