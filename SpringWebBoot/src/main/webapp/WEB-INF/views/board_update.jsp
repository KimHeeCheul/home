<%@page import="com.board.Board"%>
<%@page import="com.board.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
<form name="f" method="post" action="board_update_action?b_no=${board.b_no }">
		<tr>
			<td>번　호</td>
			<td><input placeholder="번　호" name="b_no" value="${board.getB_no }">
			</td><br>
			<td>제　목</td>
			<td><input placeholder="글제목" value="${board.getB_title }" name="b_title">
			</td><br>
			<td>글쓴이</td>
			<td><input placeholder="글쓴이" value="${board.getB_write }" name="b_write">
			</td><br>
			<td>내　용</td>
			<td><input placeholder="글내용" value="${board.getB_content }" name="b_content"/>
			</td><br>
		</tr>
		<tr>
	<table>
			<td>
				<input type="button" value="수정" onClick="boardUpdateAction();">
				<input type="button" value="목록" onClick="boardMain();">
			</td>
		</tr>
	</table>
</form>

</ol>
</body>
</html>