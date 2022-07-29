<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="javax.sql.*,java.sql.*,javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복확인</title>
</head>
<body>

<script src="resourse/js/joinfunction.js"></script>

<%
String id = (String)request.getParameter("id");
int idchecking;
if(request.getAttribute("idcheck") == null){
	idchecking = -1;
} else {
	idchecking = (int)request.getAttribute("idcheck");
}
%>

<form name="idCheckForm" method="post" action="idcheck.do">
<input type="text" name="id" value="<%= id %>">
<input type="submit" value="아이디 중복 확인">
<%if(idchecking == 0) {	%>
	<br><font color="red"><%= id %></font>는 이미 사용중인 아이디 입니다.<br>
	다른 아이디를 입력하세요
<%} else if(idchecking == 1) {%>
	<br><font color="blue"><%= id %></font>는 사용하실 수 있는 ID입니다.
	<!-- <input type="hidden" name="idchecking" value="<%= idchecking %>"> -->
	<br><input type="button" onclick="idCheckdone()" value="ID 사용하기">
<%} else {%>
	<br>중복확인 버튼을 눌러주세요
<%} %>
</form>

<%@ include file="footer.jsp" %>
</body>
</html>