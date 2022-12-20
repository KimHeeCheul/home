function boardMain() {
	window.location.href='board_main';
}

function boardInsert() {
	window.location.href='board_insert_form';
}

function boardCreate() {
	if (document.f.b_no.value == "") {
		alert("번호를 입력하십시요.");
		document.f.b_no.focus();
		return;
	}
	if (document.f.b_title.value == "") {
		alert("제목을 입력하십시요.");
		document.f.b_title.focus();
		return;
	}
	if (document.f.b_write.value == "") {
		alert("글쓴이를 입력하십시요.");
		document.f.b_write.focus();
		return;
	}
	if (document.f.b_content.value == "") {
		alert("내용을 입력하십시요.");
		document.f.b_content.focus();
		return;
	}
	document.f.action = "board_insert_action";
	document.f.method='POST';
	document.f.submit();
}
function boardUpdate(){
	window.location.href='board_update';
}

function boardUpdateAction() {
	document.f.method='POST';
	document.f.action = "board_update_action";
	document.f.submit();
}

function boardDelete(){
	if (window.confirm("정말 삭제하시겠습니까?")) {
	document.f.method='POST';
	document.f.action = "board_delete_action";
	document.f.submit();
	}
}
