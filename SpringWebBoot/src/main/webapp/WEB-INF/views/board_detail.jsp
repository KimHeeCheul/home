<%@page import="com.board.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail</title>
<script src="board.js"></script>
</head>
<body>
	<h3>board_detail.jsp</h3><hr/>
	<form name="f" method="post">
	<ol>
		<li>${board.b_no}</li>
		<li>${board.b_title}</li>
		<li>${board.b_write}</li>
		<li>${board.b_content}</li>
	</ol>
	
	<ol>
		<li>${board.getB_no()}</li>
		<li>${board.getB_title()}</li>
		<li>${board.getB_write()}</li>
		<li>${board.getB_content()}</li>
	</ol>
	<a href='board_delete_action?b_no=${board.b_no }'>Get방식 삭제</a>
		<form role="form" action="board_delete_action?b_no=${board.b_no }" method="post">
			<input type="hidden" name="b_no" value="${board.b_no }">
			<input type="submit" value="삭제" onClick="boardDelete();">
		</form>
	<input type="button" value="수정" onClick="boardUpdate();">
	<input type="button" value="목록" onClick="boardMain();">
	</form>
</body>
</html>