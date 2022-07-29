
function joinCheck(){
	var join = document.join;
	var pw = join.userpw.value;
	var pwch = join.userpwcheck.value;
	
	if(pw == pwch){
		return true;
	} else {
		alert("비밀번호 확인이 일치하지 않습니다");
		join.userpwcheck.focus();
		return false;
	}
}

function idCheck() {
	var join = document.join;
	var id = join.userid.value;
	
	if(!id){
		alert("아이디를 입력해주세요");
		join.userid.focus();
		return false;
	} else {
		window.open("idcheck.jsp?id=" + id , "idCheck", "width=500, height=500");
	}
}

function idCheckdone() { 
	var idCheckForm = document.idCheckForm;
	var id = idCheckForm.id.value;
	
	opener.document.join.userid.value = id;
	window.close();
}
