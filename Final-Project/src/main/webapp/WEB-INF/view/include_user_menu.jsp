<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<script type="text/javascript">
	function removeUser(){
		document.userBar.action="removeUser";
		document.userBar.method="POST";
		document.userBar.submit;
	}
</script>
<div class="page-single">
	<div class="container">
		<div class="row ipad-width">
			<div class="col-md-3 col-sm-12 col-xs-12">
				<div></div>
				<div class="user-information">
					<div class="user-img">
						<a href="#"><img src="images/uploads/user-img.png" alt=""><br>
					<a class="redbtn">${login_user.u_email}</a></a>
					</div>
					<div class="user-fav">
						<!-- 
						<p>상세페이지</p>
					 -->
					  
						<p>&nbsp;&nbsp;&nbsp;반가워요!<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${login_user.u_name} 님&nbsp;<img src ="images/emotion.png" width="30px" height="30px"></p>
					
						<form name="userBar">
						
						
						<br>
						<!--admin(관리자) UI  -->
						<c:if test="${login_email=='admin@gmail.com'}">
							<ul>
							<li><a href="userprofile">프로필</a></li>
							<li><a href="movieInsert">영화 추가 <br></a>
							<li><a href="moviegridfw">영화 리스트 <br></a>
							<li><a href="noticeWrite">공지사항 추가 </a></li>
							<li><a href="noticeList">공지사항 리스트 </a></li>
						</ul>	
						</c:if>
						<!--유저 UI  -->						
						<c:if test="${login_email !='admin@gmail.com'}">
						<ul>
							<li><a href="userprofile">프로필</a></li>
							<li><a href="userfavoritegrid?u_email=${login_user.u_email}">나중에 볼 영화</a></li>
							<li><a href="userrate?u_email=${login_user.u_email }">나의 리뷰<br> <br></a>
							<li><a href="landing">구독권 결제<br> <br></a></li>
							<li><a href="removeUser" onclick="return confirm('정말 탈퇴하시겠습니까?');">회원 탈퇴</a></li>
						</ul>
						</c:if>
						</form>
					</div>
				</div>
			</div>
			