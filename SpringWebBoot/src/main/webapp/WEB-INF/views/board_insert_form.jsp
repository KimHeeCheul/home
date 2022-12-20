<%@page import="com.board.BoardService"%>
<%@page import="com.board.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
<script src="board.js"></script>
</head>
<body>
<h3>board_insert.jsp</h3><hr/>
<ol>
<form name="f" method="post">
	<tr>
		<td>번　호</td>
		<td><input type="text" placeholder="숫자" name="b_no">
		</td><br>
		<td>제　목</td>
		<td><input type="text" placeholder="제목" name="b_title">
		</td><br>
		<td>글쓴이</td>
		<td><input type="text" placeholder="글쓴이" name="b_write">
		</td><br>
		<td>내　용</td>
		<td><input type="text" placeholder="내용" name="b_content">
		</td><br>
		<td>날　짜</td>
		<td><input type="text" placeholder="날짜" name="b_date">
		</td><br>
	</tr>
</form>
<table>
	<tr>
		<td>
			<input type="button" value="쓰기" onClick="boardCreate();">
			<input type="button" value="목록" onClick="boardMain();">
		</td>
	</tr>
</table>

</ol>
</body>
</html>