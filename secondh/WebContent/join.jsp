<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="theme-color" content="#ffffff">
<link rel="stylesheet" href="resourse/css/bootstrap.css">
<link rel="stylesheet" href="resourse/css/join.css">
<title>회원가입</title>
</head>

<body>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="resourse/js/joinfunction.js"></script> <!-- 비밀번호 확인 등의 로직 -->

<%@ include file="header.jsp" %>

<div class="controller">
<form action="join.do" onsubmit="return joinCheck();" method="post" name="join">
	<table>
		<tr>
			<td colspan="2" align="center"><h1><br>회원가입</h1></td>
		</tr>
		<tr>
			<td width="150px">아이디<br></td>
			<td><input type="text" name="userid" placeholder="8-16자 이내 아이디 입력" autofocus required></td>
			<td colspan="2" align="right">
			<input type="button" id="idcheckbutton" onclick="idCheck()" value="아이디 중복 확인">
			<!-- <input type="hidden" id="idcheck" value="-1"> -->
			</td>
		</tr>
		<tr>
			<td>비밀번호<br></td>
			<td><input type="password" name="userpw" placeholder="영문, 숫자, 특수문자 혼합" required></td>
		</tr>
		<tr>
			<td>비밀번호 확인<br></td>
			<td><input type="password" name="userpwcheck" placeholder="비밀번호 확인" required></td>
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
			<td>닉네임<br></td>
			<td><input type="text" name="nickname" required></td>
		</tr>
		<tr>
			<td>은행명<br></td>
			<td>
				<select name="bank">
        			<option value="">-은행선택-</option>
	        		<option value="기업은행">기업은행</option>
    	    		<option value="국민은행">국민은행</option>
        			<option value="농협은행">농협은행</option>
        			<option value="우리은행">우리은행</option>
        			<option value="신한은행">신한은행</option>
        			<option value="하나은행">하나은행</option>
        			<option value="SC은행">SC은행</option>
        			<option value="우체국">우체국</option>
        			<option value="카카오뱅크">카카오뱅크</option>
        			<option value="신협">신협</option>
        			<option value="부산은행">부산은행</option>
        			<option value="수협">수협</option>
        			<option value="전북은행">전북은행</option>
        			<option value="새마을금고">새마을금고</option>
      			</select>
			</td>
		</tr>
		<tr>
			<td>계좌번호<br></td>
			<td><input type="text" name="account" required></td>
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
			<td>주소<br></td>
			<td><input type="text" name="address" required></td>
		</tr>
		<tr>
			<td>생년월일<br></td>
			<td>
				<select name="year">
	        		<option value="">년</option>
	        		<option value="1977">1977</option>
	        		<option value="1978">1978</option>
	        		<option value="1979">1979</option>
	        		<option value="1980">1980</option>
	        		<option value="1981">1981</option>
	        		<option value="1982">1982</option>
	        		<option value="1983">1983</option>
	        		<option value="1984">1984</option>
	        		<option value="1985">1985</option>
	        		<option value="1986">1986</option>
	        		<option value="1987">1987</option>
	        		<option value="1988">1988</option>
	        		<option value="1989">1989</option>
	        		<option value="1990">1990</option>
	        		<option value="1991">1991</option>
	        		<option value="1992">1992</option>
	        		<option value="1993">1993</option>
	        		<option value="1994">1994</option>
	        		<option value="1995">1995</option>
	        		<option value="1996">1996</option>
	        		<option value="1997">1997</option>
	        		<option value="1998">1998</option>
	        		<option value="1999">1999</option>
	        		<option value="2000">2000</option>
	        		<option value="2001">2001</option>
	        		<option value="2002">2002</option>
	        		<option value="2003">2003</option>
	        		<option value="2004">2004</option>
	        		<option value="2005">2005</option>
	        		<option value="2006">2006</option>
	        		<option value="2007">2007</option>
	      		</select>
	      		<select name="month">
	        		<option value="">월</option>
	        		<option value="1">1</option>
	        		<option value="2">2</option>
	        		<option value="3">3</option>
	        		<option value="4">4</option>
	        		<option value="5">5</option>
	        		<option value="6">6</option>
	        		<option value="7">7</option>
	        		<option value="8">8</option>
	        		<option value="9">9</option>
	        		<option value="10">10</option>
	        		<option value="11">11</option>
	        		<option value="12">12</option>
	      		</select>
	      		<select name="day">
	        		<option value="">일</option>
	        		<option value="1">1</option>
	        		<option value="2">2</option>
	        		<option value="3">3</option>
	        		<option value="4">4</option>
	        		<option value="5">5</option>
	        		<option value="6">6</option>
	        		<option value="7">7</option>
	        		<option value="8">8</option>
	        		<option value="9">9</option>
	        		<option value="10">10</option>
	        		<option value="11">11</option>
	        		<option value="12">12</option>
	        		<option value="13">13</option>
	        		<option value="14">14</option>
	        		<option value="15">15</option>
	        		<option value="16">16</option>
	        		<option value="17">17</option>
	        		<option value="18">18</option>
	        		<option value="19">19</option>
	        		<option value="20">20</option>
	        		<option value="21">21</option>
	        		<option value="22">22</option>
	        		<option value="23">23</option>
	        		<option value="24">24</option>
	        		<option value="25">25</option>
	        		<option value="26">26</option>
	        		<option value="27">27</option>
	        		<option value="28">28</option>
	        		<option value="29">29</option>
	        		<option value="30">30</option>
	        		<option value="31">31</option>
	      		</select>
			</td>
		</tr>
		<tr>
			<td colspan="3" align="right">
				<input type="submit" id="sbutton" value="가입하기">
			</td>
		</tr>
	</table>
	
</form>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>