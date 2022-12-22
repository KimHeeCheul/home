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
<input type="hidden"/>
<tr>
	<td>
		<ol>
			<%
			for(int i=0; i<boardList.size() ; i++){
				Board board = boardList.get(i);
			%>
			
			<li><a href='board_detail?b_no=<%=board.getB_no() %>'><%=boardList.get(i) %></a></li>
					
			<%
			}
			%>
		</ol>
	</td>
</tr>
</form>
<input type="button" value="게시판추가" onClick="boardInsert();">
</body>
</html>