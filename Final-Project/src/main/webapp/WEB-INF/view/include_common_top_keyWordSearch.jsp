<%@page import="com.itflix.dto.User_Info"%>
<%@page
	import="ch.qos.logback.core.recovery.ResilientSyslogOutputStream"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<%
User_Info login_user = (User_Info) session.getAttribute("login_user");
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
	function key_word_search() {
		document.f.action = "key_word_search_action";
		document.f.method = 'POST';
		document.f.submit();
	}
</script>
<form action="key_word_search_action" method="POST" name="f">
	<div class="top-search">
		<input class="form-control" name="searchText" type="text"
			placeholder="찾으시는 영화가 있나요? 검색해보세요!">
	</div>
</form>




