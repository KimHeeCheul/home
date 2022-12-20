<%@page import="com.board.Board"%>
<%@page import="com.board.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* 	Integer no = null;
try{
	no = Integer.valueOf(request.getParameter("no"));
}catch(Exception e){
	
}
BoardService boardService = new BoardService();
		 */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<script src="board.js"></script>
</head>
<body>
<h3>board_update.jsp</h3><hr>
<ol>
<form name="f" method="post">
	<tr>
		<td>번　호</td>
		<td><input type="text" value="${board.b_no }" name="b_no">
		</td><br>
		<td>제　목</td>
		<td><input type="text" value="${board.b_title }" name="b_title">
		</td><br>
		<td>글쓴이</td>
		<td><input type="text" value="${board.b_write }" name="b_write">
		</td><br>
		<td>내　용</td>
		<td><input type="text" value="${board.b_content }" name="b_content">
		</td><br>
		<td>날　짜</td>
		<td><input type="text" value="${board.b_date }" name="b_date">
		</td><br>
	</tr>
</form>
<table>
	<tr>
		<td>
			<input type="button" value="수정" onClick="boardUpdateAction();">
			<input type="button" value="목록" onClick="boardMain();">
		</td>
	</tr>
</table>

</ol>
</body>
</html>