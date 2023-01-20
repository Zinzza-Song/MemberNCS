<%@page import="bean.MemberBean"%>
<%@page import="member.MemberMgr"%>
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
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	MemberMgr m = MemberMgr.getInstance();
	MemberBean bean = m.login(id, pwd);
	out.print(bean.getId());
	if(bean.getId() == null) {
		out.print("아이디없음");
	%>
		<!-- 아이디 없을 때 처리 -->
	<%
	} else {
		session.setAttribute("user", bean);
		response.sendRedirect("login.jsp");
	}
	%>

</body>
</html>