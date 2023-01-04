<%@page import="com.itflix.dto.User_Info"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String login_email = (String) session.getAttribute("login_email");
%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>공지사항</title>
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
	function searchNotice() {
		if (document.Notice.keyword.value == "") {
			alert("키워드를 입력해주세요.");
			return false;
		}
		document.Notice.action = "searchNotice";
		document.Notice.method = "POST";
		document.Notice.submit;
	}

	function noticeCreate() {
		location.href = "noticeWrite";
	}
</script>
<body>
	<!-- BEGIN | Header -->
	<jsp:include page="include_common_top.jsp" />
	<!-- END | Header -->
	<!--중앙 타이틀 화면 -->
	<div class="hero common-hero">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="hero-ct">
						<h1>공지사항</h1>
						<ul class="breadcumb">
							<li class="active"><a href="main">Home</a></li>
							<li><span class="ion-ios-arrow-right"></span>notice</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--중앙 타이틀 화면 -->
	<!-- 메인 공지사항 리스트  -->
	<div class="page-single">
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-sm-12 col-xs-12">
					<!--분류 보드바 -->
					<div class="topbar-filter">
						<p>
							총 <span>${noticeTotal}</span> 개
						</p>

					</div>
					<!--분류 보드바 -->
					<!--공지사항 리스트   -->
					<form name="f" method="Post">
						<c:forEach items="${noticeList}" var="notice">
							<div class="blog-item-style-1 blog-item-style-3">
								<img src="images//mylogo.png">
								<div class="blog-it-infor">
									<h3>
										<a href="noticeDetail?n_no=${notice.n_no}" class="notice">${notice.n_title }</a>
									</h3>
									<span class="time"><fmt:formatDate
											value="${notice.n_date}" pattern="yyyy/MM/dd" /></span>
									<p>${notice.n_content}</p>
								</div>
							</div>
						</c:forEach>
					</form>
					<!--공지사항 리스트   -->
					<!-- button -->
					<c:if test="${login_email == 'admin@gmail.com' && login_email != null}">
						<table>
							<tr>
								<td align="left"><input type="button" value="공지 쓰기" style="background:#dd003f; color: #ffffff; font-size: 17px; border-radius: 8px;"
									onclick="noticeCreate();" /></td>
							</tr>
						</table>
					</c:if>
				</div>
				<!--분류 우측 보드바  -->
				<div class="col-md-3 col-sm-12 col-xs-12">
					<div class="sidebar">
						<form name="Notice">
							<div class="sb-search sb-it">
								<h4 class="sb-title">공지 검색</h4>
										<input type="text" name="keyword" placeholder="검색어를 입력하세요" style="background-color: #233a50; background:url">
							<!--  -->			
							<input type="submit" value="" style="background:transparent; color: #ffffff; " onclick="searchNotice()" >
								<!-- 	<input type="text" name="keyword" placeholder="Enter keywords" onkeyup="searchNotice()"> -->
								
							</div>
						</form>
					</div>
				</div>
				<!--분류 우측 보드바  -->
			</div>
		</div>
	</div>
	<!-- 메인 공지사항 리스트  -->


	<!-- footer section-->
	<jsp:include page="include_common_bottom.jsp"></jsp:include>
	<!-- end of footer section-->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/plugins2.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>