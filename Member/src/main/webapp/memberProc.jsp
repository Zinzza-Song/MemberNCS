<%@page import="member.MemberMgr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="bean" class="bean.MemberBean">
	<jsp:setProperty property="*" name="bean"/>
</jsp:useBean>
<%
String[] str = request.getParameterValues("hobby");
String hobby = "";
for(String s : str)
	hobby += s;
bean.setHobby(hobby);

MemberMgr m = MemberMgr.getInstance();
m.insertMember(bean);
%>
<script type="text/javascript">
alert("회원가입되셨습니다.");
location.href="login.jsp";
</script>
</body>
</html>