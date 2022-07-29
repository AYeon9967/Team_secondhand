<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="secondh.vo.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="resourse/css/bootstrap.css">
<link rel="stylesheet" href="resourse/css/mypage.css">
<title>마이페이지</title>
</head>
<body>
<%@ include file="header.jsp" %>

<%
	User user = (User)request.getAttribute("userinfo"); // user.get-() 로 회원 정보 불러올 수 있습니다.
%>

<!--
do를 통해 controller에서 정보를 불러와서 마이페이지 화면에 뿌려주는 형식으로 구현해서
마이페이지 단독 호출시 35, 36라인에서 에러가 발생합니다.
CSS작업 시 단독으로 페이지 빌드 하실 땐 주석처리 하고 작업하시면 됩니다!
-->

<br><h1 style="text-align:center">마이페이지</h1><br>
<div class="mypage">
	<div class="myinfo">
		<h5>나의 정보</h5><br>
		<img src="resourse/photo/profile.jpg"  style="max-width:150px; height:auto;"><br><br>
		<input id="profile" type="file" name="profileimg">
	</div>
	<div>
	<nav class="myinfo2">
		<ul>
			<li>이름: <%=user.getName() %></li>
			<li>페이머니: <%=user.getPaymoney() %></li> 
			<li><a href="gouserupdate.do">회원 정보 수정</a></li>
			<li><a href="#">페이머니 출금 </a> &nbsp; &nbsp;<a href="#"> 페이머니 충전</a> </li>
		</ul>
		<!-- <a style="color:#1c7c7c;" href="#"> 는 CSS에 ul li a{color:#1c7c7c}로 추가하였습니다. -->
	</nav>
	</div>
</div>
<hr>
<div align="left" class="mypage2">
	<nav class="myitem">
		<ul>
			<li>내 게시물</li>
		</ul>
	
	</nav>

</div>

<%@ include file="footer.jsp" %>
</body>
</html>