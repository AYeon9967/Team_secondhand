<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

</head>
	<style>
		ul {
  			list-style: none;
		}
		a {
  			text-decoration: none;
  			font-size: 5px;
			color: black;
		}
		nav {
  			float: right;
  			width: 230px;
  			height: 50px; 
		}
		#topMenu {  
  			height: 60px;
  			
		}
		#topMenu > li {
  			float: left; 
  			position: relative;  
		}
		#topMenu > li > a{
  			display: block;
  			font-size: 2px;
  			font-weight: 600;
  			padding: 10px 15px;
  			color: black;
  			margin-top:-15%;
		}
		header{
			display : flex;
			Justify-content: space-around;
			margin:1% -1% -1% 6%;
		}
		.searching {
			display:flex;
			margin-top:3%;
			margin-bottom:4.2%;
			border: solid 5px;
			border-color:#1c7c7c;
			border-radius:10px;
		}
		#searching-box{
			border:none;
			width:500px;
			height:40px;
		} 
		#button1{
			width:45px;
			height:45px;
			border:none;
			background-color: white;
		}
		.icon{
			display:flex;
			margin-top:3%;
		}
	</style>
<body>

<script>
function nolog() {
	alert("로그인 이후 글쓰기가 가능합니다");
}
</script>

<div class="navbar-header">
	<header class="header-area">
		<div class="logo">
			<a href="main.jsp"> <img src="resourse/photo/logo3.jpg"  style="max-width:130px; height:auto;"> </a>
		</div>
		
		<div class="searching">
			<form action="goodssearch.do" method="post">
				<input id="searching-box" type="text" placeholder="검색어 입력">
				<button id="button1" type="submit"><img src="resourse/photo/searching.png" style="width:35px; height:35px"></button>
			</form>
		</div>

		<div class="icon">
		<% 
			String sessionID = (String)session.getAttribute("sessionID");
			if(sessionID == null) { %>
				<a href="login.jsp" onclick="nolog()"><img src="resourse/photo/uproad2.png" style="width:40px; height:40px;"></a>
			<% } else { %>
				<a href="upload.jsp"><img src="resourse/photo/uproad2.png" style="width:40px; height:40px;"></a>
			<% } %>
			<a href="chat.jsp"><img src="resourse/photo/chat.png" style="width:40px; height:40px"></a>
			<img src="resourse/photo/category.png" style="width:40px; height:40px">
		</div>
<% 
if(sessionID == null) { %>
	<nav>
	<ul id="topMenu">
			<li><a href="login.jsp">로그인</a></li>
			<li><a href="join.jsp">회원가입</a></li>
	</ul>
	</nav>
<% } else { %>
	<nav>
		<ul id="topMenu">
			<li> <a href="mypage.do"><%= sessionID %> 님 접속중</a> </li>
			<li> <a href="logout.do">로그아웃</a> </li>
		</ul>
	</nav>
<% } %>
	</header>
	

</div>
<hr>

</body>
</html>