<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="secondh.vo.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<body>

<%@ include file="header.jsp" %>

<%
	User user = (User)request.getAttribute("userinfo");
	String Birth = user.getBirth(); // DB에는 년-월-일 형태로 합쳐져서 저장됨. 년월일 분리를 위한 작업
	String year = Birth.substring(0, 4);
	String month = Birth.substring(5, 7);
	String day = Birth.substring(8);
%>

<div class="controller">
<form action="userupdate.do" onsubmit="return joinCheck();" method="post" name="userupdate">
	<table>
		<tr>
			<td colspan="2" align="center"><h1><br>회원정보수정</h1></td>
		</tr>
		<tr>
			<td width="150px">아이디<br></td>
			<td><%=user.getUserid() %></td>
		</tr>
		<!--
		DB에 저장된 정보를 인풋박스 안으로 끌어와서 수정할 부분만 수정 후 회원정보수정 버튼을 누르면 정보수정이 가능하도록 해두었습니다.
		아이디, 성별의 경우는 변경이 불가능한 요소이고, 비밀번호 같은 경우 변경을 원할 때만 변경할 수 있도록 버튼을 따로 마련하는 것이 좋을 것 같지만
		일단 비밀번호 칸도 만들어두었습니다!
		 -->
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
			<td><input type="text" name="name" value="<%=user.getName() %>" required></td>
		</tr>
		<tr>
			<td>성별<br></td>
			<td><%=user.getGender() %></td>
		</tr>
		<tr>
			<td>닉네임<br></td>
			<td><input type="text" name="nickname" value="<%=user.getNickname() %>" required></td>
		</tr>
		<tr>
			<td>은행명<br></td>
			<td>
				<select name="bank">
        			<option value="<%=user.getBank() %>"><%=user.getBank() %></option>
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
			<td><input type="text" name="account" value="<%=user.getAccount() %>" required></td>
		</tr>
		<tr>
			<td>이메일<br></td>
			<td><input type="email" name="email" value="<%=user.getEmail() %>" required></td>
		</tr>
		<tr>
			<td>휴대전화<br></td>
			<td><input type="text" name="phone" value="<%=user.getPhone() %>" required></td>
		</tr>
		<tr>
			<td>주소<br></td>
			<td><input type="text" name="address" value="<%=user.getAddress() %>" required></td>
		</tr>
		<tr>
			<td>생년월일<br></td>
			<td>
				<select name="year">
	        		<option value="<%=year%>"><%=year%></option>
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
	        		<option value="<%=month%>"><%=month%></option>
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
	        		<option value="<%=day%>"><%=day%></option>
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
				<input type="submit" id="sbutton" value="회원정보수정">
			</td>
		</tr>
	</table>
	
</form>
</div>

<%@ include file="footer.jsp" %>


</body>
</html>