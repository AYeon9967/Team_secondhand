<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resourse/css/bootstrap.css">
<link rel="stylesheet" href="resourse/css/find.css">
<title>아이디 찾기</title>
</head>
<body>
<%@ include file="header.jsp" %>

<div class="controller">
<form action="findid.do" method="post">
	<table>
		<tr>
			<td colspan="2" align="center"><h1><br>아이디 찾기</h1></td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td>이름<br></td>
			<td><input type="text" name="name" required></td>
		</tr>
		<tr>
			<td>성별<br></td>
			<td>
			<label><input type="radio" name="gender" value="여성" style="width:25px;height:25px;border:1px;">여성</label>
			<label><input type="radio" name="gender" value="남성" style="width:25px;height:25px;border:1px;">남성</label>
			</td>
		</tr>
		<tr>
			<td>이메일<br></td>
			<td><input type="email" name="email" placeholder="email@gmail.com" required></td>
		</tr>
		<tr>
			<td>휴대전화<br></td>
			<td><input type="text" name="phone" placeholder="-를 제외하고 입력해주세요" required></td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" id="sbutton" value="아이디 찾기">
			</td>
		</tr>
	</table>
	
</form>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>