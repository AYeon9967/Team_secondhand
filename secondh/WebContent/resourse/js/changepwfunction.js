function changeCheck(){
	var changepassword = document.changepassword;
	var userpwchange = changepassword.userpwchange.value;
	var chuserpwchange = changepassword.chuserpwchange.value;
	
	if(userpwchange == chuserpwchange){
		return true;
	} else {
		alert("비밀번호 확인이 일치하지 않습니다");
		changepassword.chuserpwchange.focus();
		return false;
	}
}