<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resourse/css/bootstrap.css">
<link rel="stylesheet" href="resourse/css/findpwresult.css">
<title>비밀번호 찾기 결과</title>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="controller">
	<table>
		<tr>
			<td colspan="2" align="center"><h1><br>비밀번호 찾기 결과</h1></td>
		</tr>
		<tr>
			<td><p id="result">${findpwresult }</p></td>
		</tr>
		<tr>
			<td><a href="main.jsp"><input id="sbutton" type="button" value="홈으로"></a></td>
		</tr>
		<tr>
			<td><a href="join.jsp"><input id="sbutton" type="button" value="회원가입하기"></a></td>
		</tr>
	</table>
</div>


</body>
</html>