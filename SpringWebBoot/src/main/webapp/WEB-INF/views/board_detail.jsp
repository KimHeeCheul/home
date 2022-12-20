<%@page import="com.board.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--
request.getAttribute("board");
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>board_detail.jsp</h3>
	<hr />

	<ol>
		<li>${board.getNo()}</li>
		<li>${board.getTitle()}</li>
		<li>${board.getWrite()}</li>
		<li>${board.getContent()}</li>
	</ol>
	
	<ol>
		<li>${board.no}</li>
		<li>${board.title}</li>
		<li>${board.write}</li>
		<li>${board.content}</li>
	</ol>
</body>
</html>