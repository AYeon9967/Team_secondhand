<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="theme-color" content="#ffffff">
<link rel="stylesheet" href="resourse/css/bootstrap.css">
<link rel="stylesheet" href="resourse/css/login.css">
<title>로그인</title>
</head>

<body>
<%@ include file="header.jsp" %>

<div class="controller">
	<form action="login.do" method="post" >
		<table>
			<tr>
				<td align="center"><h1>로그인</h1></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td><input type="text" name="userid" placeholder="아이디" required></td>
			</tr>
			<tr>
				<td><input type="password" name="userpw" placeholder="비밀번호" required></td>
			</tr>
			<tr>
				<td align="right">${loginerror }</td>
			</tr>
			<tr>
				<td align="center"><input id="sbutton" type="submit" value="로그인"></td>
			</tr>
		</table>
	</form>
	<div class="forgot">
	   	<a href="findid.jsp">아이디 찾기</a>
	   	&nbsp;|&nbsp;
	   	<a href="findpw.jsp">비밀번호 찾기</a>
	   	&nbsp;|&nbsp;
	   	<a href="join.jsp">회원가입</a>
	</div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>