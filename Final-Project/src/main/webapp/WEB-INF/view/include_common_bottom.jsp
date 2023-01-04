<%@page import="com.itflix.dto.User_Info"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=YOUR_CLIENT_ID"></script>
<%
User_Info login_user = (User_Info) session.getAttribute("login_user");
%>
<footer class="ht-footer">
	<div class="container">
		<div class="flex-parent-ft">
			<div class="flex-child-ft item1">
				<a href="main"><img class="logo" src="images/mylogo.png" alt=""
					width="119" height="58"></a>
			</div>
			<div class="flex-child-ft item2">
				<h4>아이티윌/ITFLIX</h4>
				<ul>
					<p>
						서울특별시 강남구 테헤란로124<br> 4층 (역삼동, 삼원타워) /5강의실
					</p>
					<p>
						TEL: <a href="#">(02) 6255 8002</a>
					</p>
					<li><p>
							기관명: <a href="#">아이티윌(직업능력개발훈련시설) 대표자:조인형 TEL:02-6255-8002
								FAX:02-569-8069 </a>
						</p></li>
					<li><p>
							이메일: <a href="#">admin@itwill.co.kr</a>
						</p></li>
				</ul>
			</div>


			<div class="flex-child-ft item5">

				<p>
					지금 ITFLIX를 구독해보세요! <br>매주 볼거리가 가득! 함께해요!
				</p>

				<c:if test="${login_user != null }">
					<a href="landing" class="btn"> 구독하러가기 <i
						class="ion-ios-arrow-forward"></i></a>
				</c:if>
				<c:if test="${login_user == null }">
					<a onclick="alert('로그인이 필요합니다');" style="cursor: pointer"
						class="btn">구독하러가기 <i class="ion-ios-arrow-forward"></i></a>
				</c:if>

			</div>
		</div>
	</div>
	<div class="ft-copyright">
		<div class="ft-left">
			<p>
				© 2022 Blockbuster. All Rights Reserved Designed by leehari.
			</p>
		</div>
		<div class="backtotop">
			<p>
				<a href="#" id="back-to-top">Back to top <i
					class="ion-ios-arrow-thin-up"></i></a>
			</p>
		</div>
	</div>
</footer>