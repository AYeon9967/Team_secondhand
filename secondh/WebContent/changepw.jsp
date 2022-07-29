<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resourse/css/findpwresult.css">
<title>비밀번호 재설정 하기</title>
</head>
<body>

<script src="js/jquery-3.6.0.min.js"></script>
<script src="resourse/js/changepwfunction.js"></script> <!-- 다시입력 확인 로직 -->

<%@ include file="header.jsp" %>

<div class="controller">
<form action="changepw.do" onsubmit="return changeCheck();" method="post" name="changepassword">
	<table>
		<tr>
			<td colspan="2" align="center"><h1><br>비밀번호 변경</h1></td>
		</tr>
		<tr>
			<td colspan="2"><input type="hidden" name="previouspw" value="${ findpwresult }"></td>
		</tr>
		<tr>
			<td>비밀번호 재설정<br></td>
			<td><input type="password" name="userpwchange" placeholder="재설정할 비밀번호를 입력해주세요" required></td>
		</tr>
		<tr>
			<td>비밀번호 확인<br></td>
			<td><input type="password" name="chuserpwchange" placeholder="재설정할 비밀번호를 다시 입력해주세요" required></td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" id="sbutton" value="비밀번호 변경하기"></td>
		</tr>
	</table>
	
</form>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>