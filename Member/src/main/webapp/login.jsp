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
		id: <input type="text" name="id"> <br> pw: <input
			type="password" name="pwd"> <br> <input type="submit"
			value="login">
	</form>
	<%
	} else {
		%>
		<%=bean.getId() %> 님로그인성공 
		<input type="button" value="로그아웃" onclick="location.href='logout.jsp'">
	<%
	}
	%>

</body>
</html>