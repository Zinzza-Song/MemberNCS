<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./script.css">
<script type="text/javascript" src="./script.js" defer></script>
</head>
<body>
	<div class="container">
<center>

<h2>회원가입</h2><br>
	<form action="memberProc.jsp" method="get" name="f">
	<table>
	<tr height="50">
	<td width="200" align="center">아이디</td>
	<td width="300"><input type="text" name="id" size="30"><input type="button" value="중복확인" onclick="document.location.href=goUrl()"></td>
	</tr>
	<tr height="50">
	<td width="200" align="center">비밀번호</td>
	<td width="300"><input type="password" name="pwd" size="30"></td>
	</tr>
	<tr height="50">
	<td width="200" align="center">비밀번호 확인</td>
	<td width="300"><input type="password" name="pwd2" size="30"></td>
	</tr>
	<tr height="50">
	<td width="200" align="center">이름</td>
	<td width="300"><input type="text" name="name" size="10"></td>
	</tr>
	<tr height="50">
	<td width="200" align="center">성별</td>
	<td width="300"><input type="radio" name="gender" value="M">남자 <input type="radio" name="gender" value="F">여자</td>
	</tr>
	<tr height="50">
	<td width="200" align="center">이메일</td>
	<td width="300"><input type="email" name="email" size="30"></td>
	</tr>
	<tr height="50">
	<td width="200" align="center">생년월일</td>
	<td width="300"><input type="text" name="birth" size="17" placeholder="ex)920107"></td>
	</tr>
	<tr height="50">
	<td width="200" align="center">우편번호</td>
	<td width="300"><input type="text" name="zipcode" id="zipcode" size="10"> <input type="button" value="찾기" onclick="window.open('zip.jsp','serch','width=700,height=300')"></td>
	</tr>
	<tr height="50">
	<td width="200" align="center">주소</td>
	<td width="300"><input type="text" name="address" id="address" size="40"></td>
	</tr>
	<tr height="50">
	<td width="200" align="center">취미</td>
	<td width="300"><input type="checkbox" name="hobby" value="영화감상">영화감상<input type="checkbox" name="hobby" value="독서">독서<input type="checkbox" name="hobby" value="공부">공부</td>
	</tr>
	<tr height="50">
	<td width="200" align="center">직업</td>
	<td width="300"><select name="job"><option>개발자</option><option>학생</option></select> </td>
	</tr>
	</table>
	<input type="submit" value="가입">      <input type="reset" value="재작성">
	</form>
</center>
</div>
</body>
</html>