<%@page import="bean.MemberBean"%>
<%@page import="member.MemberMgr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복체크</title>
<script type="text/javascript" src="script.js"></script>
</head>
<body>
	<%
	String id = request.getParameter("id"); //입력받은 아이디
	MemberMgr mgr = MemberMgr.getInstance();
	int checkNum = mgr.idCheck(id);

	if (checkNum == 1) {
	%>
	<script type="text/javascript">
		alert("아이디가 중복됩니다.");
		history.go(-1);
	</script>
	<%
	}
	else {
		%>
		<script type="text/javascript">
			alert("아이디사용가능");
			history.go(-1);
		</script>
		<%
	}
	%>
</body>
</html>