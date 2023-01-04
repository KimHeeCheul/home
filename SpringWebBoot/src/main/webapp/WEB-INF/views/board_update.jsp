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

<script type="text/javascript">
$.ajax{
	type:"POST",
	data:formData,
	url:"board_update",
	dataType:"text"
	
	success:function(updateCount){
		if(updateCount=="1"){
			alert("저장완료");
			location="board_main";
		}else{
			alert("업데이트 실패");
		}
	}
}
</script>

<body>
<h3>board_update.jsp</h3><hr>
<ol>
<form name="f" method="post" id="frm" action="board_update_action?b_no=${board.b_no}">
	<input type="hidden" name="board" value="${board}">
	<table>
	<tr>
		<th width="20%"><label for="b_no">번　호</label>
		<td width="80%"><input type="text" placeholder="번　호" name="b_no" id="b_no" value="${board.b_no }"><br></td>
		</th>
	</tr>
	<tr>
		<th width="20%"><label for="b_title">제　목</label>
		<td width="80%"><input type="text" placeholder="글제목" name="b_title" id="b_title" value="${board.b_title }"><br></td>
		</th>
	</tr>
	<tr>
		<th width="20%"><label for="b_write">글쓴이</label>
		<td width="80%"><input type="text" placeholder="글쓴이" name="b_write" id="b_write" value="${board.b_write }"><br></td>
		</th>
	</tr>
	<tr>		
		<th width="20%"><label for="b_content">내　용</label>
		<td width="80%"><input type="text" placeholder="글내용" name="b_content" id="b_content" value="${board.b_content }"><br></td>
		</th>
	</tr>
	<tr>		
		<th width="20%"><label for="b_date">날　짜</label>
		<td width="80%"><input type="text" placeholder="날　짜" name="b_date" id="b_date" value="${board.b_date }"><br></td>
		</th>
	</tr>
	</table>
	<table>
		<tr>
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