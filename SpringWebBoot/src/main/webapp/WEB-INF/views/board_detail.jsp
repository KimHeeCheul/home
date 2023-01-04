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
	<table width="500" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<th>${board.b_no}</th>
		<th>${board.b_title}</th>
		<th>${board.b_write}</th>
		<th>${board.b_content}</th>
	</tr>
	</table>
	<br>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<th>${board.getB_no()}</th>
		<th>${board.getB_title()}</th>
		<th>${board.getB_write()}</th>
		<th>${board.getB_content()}</th>
	</tr>
	</table>
	<a href='board_delete_action?b_no=${board.b_no }'>Get방식 삭제</a>
		<form role="form" action="board_delete_action?b_no=${board.b_no }" method="post">
			<input type="hidden" name="b_no" value="${board.b_no }">
			<input type="submit" value="삭제" onClick="boardDelete();">
			<input type="button" value="수정" onClick="boardUpdate();">
			<input type="button" value="목록" onClick="boardMain();">
		</form>
	</form>
</body>
</html>