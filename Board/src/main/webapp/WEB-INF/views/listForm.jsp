<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
	<style type="text/css">
		*{
			margin: 0auto;
			padding: 0auto;
			overflow: hidden;
		}
		td,h2{
			text-align:center;
		}
	</style>
</head>
<body>
	<h1>게시판 글목록</h1>
	
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<th>번호</th>	
			<th>제목</th>	
			<th>글쓴이</th>	
			<th>내용</th>	
			<th>날짜</th>
		</tr>	
		<tr>
			<th>1</th>	
			<th>오늘의 일기</th>	
			<th>김희철</th>	
			<th>오늘은 오늘이다</th>	
			<th>2022/12/26</th>
		</tr>
		<tr>
			<td colspan="5"><a href="writeForm">작성</a></td>
		</tr>	
	</table>
	
	
</body>
</html>