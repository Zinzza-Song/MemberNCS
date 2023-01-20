<%@page import="bean.ZipBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="member.MemberMgr"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String zip=request.getParameter("zip");
	
	MemberMgr mm=MemberMgr.getInstance();
	ArrayList<ZipBean> az=mm.serchZip(zip);
	
	%>
	<h2>검색된 내용</h2>
	<c:forEach var="serchzip" items="${az }">
		${serchzip }
	</c:forEach>
</body>
</html>