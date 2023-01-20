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
	<%
	for(int i=0;i<az.size();i++){
		ZipBean bean=az.get(i);%>
		<tr heigth="40">
		<td width="100" align="center"><%=bean.getArea2() %></td>
			<td width="150" align="center"><%=bean.getArea3() %></td><br>
			</tr>
	<% }
	%>
</body>
</html>