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
		<script type="text/javascript">
			alert("아이디와 계정을 정확히 입력해주세요");
			history.go(-1);
		</script>
	<%
	} else {
		session.setAttribute("user", bean);
		response.sendRedirect("login.jsp");
	}
	%>

</body>
</html>