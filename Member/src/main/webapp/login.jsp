<%@page import="bean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	MemberBean bean = (MemberBean) session.getAttribute("user");

	if (bean == null || bean.getId() == null) {
	%>
	<form action="loginProc.jsp">
	<table border="1" bordercolor="skyblue">
	
	<tr height="20" align="center">
	<td width="70">아이디</td><td width="150"><input type="text" name="id"></td>
	</tr> 
	
	<tr height="20" align="center">
	<td width="70">비밀번호</td><td width="150"><input type="password" name="pwd"></td>
	</tr>			
	
	<tr align="center"><td colspan="2"><input type="submit" value="로그인"><a href="member.jsp"><input type="button" value="회원가입"></a></td></tr>	
	
	</table>
	</form>
	
	<%
	} else {
		%>
		<div align="center">
		<table border="1" bordercolor="skyblue" width="300">
		<tr height="50" align="center"><td><%=bean.getId() %> 님 환영합니다</td></tr> 
		</table><br>
		<input type="button" value="로그아웃" onclick="location.href='logout.jsp'">
		</div>
	
	<%
	}
	%>

</body>
</html>