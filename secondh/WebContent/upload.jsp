<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="theme-color" content="#ffffff">
<link rel="stylesheet" href="resourse/css/bootstrap.css">
<link rel="stylesheet" href="resourse/css/upload.css">

<title>MARKET</title>
</head>
<body>

<%
	//이미지 처리
	//String saveDirectory = pageContext.getServletContext().getRealPath("/upimg"); // 기존

	String saveDirectory = application.getRealPath("/storage"); //실제 물리적 경로
	
	File saveDir = new File(saveDirectory);
	if (!saveDir.exists()) saveDir.mkdirs();
	
	HttpSession s = request.getSession();
	s.setAttribute("saveDirectory", saveDirectory);
%>

<%@ include file="header.jsp" %>

<div class="table">
<br> <h1>상품 등록</h1>
    <form action="goodsupload.do" method="post" enctype="multipart/form-data">
    <table class="content">
    	<tr>
    		<td>
    			<select name="category">
        			<option value="">상품분류</option>
        			<option value="여성의류">여성의류</option>
        			<option value="남성의류">남성의류</option>
        			<option value="가방">가방</option>
        			<option value="시계">시계</option>
        			<option value="악세사리">악세사리</option>
        			<option value="가전제품">가전제품</option>
        			<option value="가구">가구</option>
        			<option value="티켓">티켓</option>
        			<option value="도서/음반">도서/음반</option>
        			<option value="굿즈">굿즈</option>
        			<option value="식품">식품</option>
        			<option value="유아">유아</option>
        			<option value="신발">신발</option>
        			<option value="기타">기타</option>
      		</select>
      		</td>
      	</tr>
        <tr>
            <td>상품명</td> 
            <td><input type="text" name="goodstitle"></td>
        </tr>
        <tr>
            <td>가격</td>
            <td><input type="text" name="goodsprice"></td>
        </tr>
        <!--<tr>
            <td>개수</td>
            <td><input type="text" name="number"></td>
        </tr>
        개수는 굳이 필요 없을 것 같아 일단 주석처리 해두었습니다. -->
        <tr>
            <td>상세설명</td>
            <td><textarea name="goodscontents"></textarea></td>
        </tr>
        <tr>
        	<td>사진 첨부</td>
        	<td><input type="file" name="goodsimg"></td>
        </tr>
        <tr>
        	<td colspan="2"><input id="button4" type="submit" value="글쓰기"></td>
        </tr>
    </table>
 </form>
 </div>

</body>
</html>