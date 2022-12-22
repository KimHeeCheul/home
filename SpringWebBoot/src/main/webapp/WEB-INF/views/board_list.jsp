<%@page import="com.board.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<Board> boardList = (List<Board>) request.getAttribute("boardList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>board_list.jsp</h3><hr/>
	<ol>
		<%
		for (int i = 0; i < boardList.size(); i++) {
			Board board = boardList.get(i);
		%>
		<li><a href='board_detail?b_no=<%=board.getB_no()%>'><%=board.getB_title()%>&nbsp;<%=board.getB_content()%></a></li>
		<%
		}
		%>
	</ol>

</body>
</html>