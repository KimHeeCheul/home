<%@page import="com.board.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<Board> boardList=(List<Board>)request.getAttribute("boardList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<script src="board.js"></script>
</head>
<body>
<H3>board_main.jsp</H3><hr>
<form name="f" method="post">
<input type="hidden" name="no" value="${board.no}" />
<%
for(int i=0; i<boardList.size() ; i++){
	Board board = boardList.get(i);
%>
<tr>
	<td><%=boardList.get(i) %>
		<input type="button" value="삭제" onClick="boardDelete();">
		<input type="button" value="수정" onClick="boardUpdate();">
	</td><br>
</tr>
<%
}
%>
</table>
</form>
<input type="button" value="게시판추가" onClick="boardInsert();">
</body>
</html>