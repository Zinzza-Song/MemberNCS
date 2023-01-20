<%@page import="bean.ZipBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="member.MemberMgr"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script type="text/javascript" src="./script.js" defer></script>
<body>
<center>
	<%
	request.setCharacterEncoding("utf-8");
	String zip=request.getParameter("zip");
	
	MemberMgr mm=MemberMgr.getInstance();
	ArrayList<ZipBean> az=mm.serchZip(zip);
	
	%>
	<h2>검색된 내용</h2>
	
	<table width="700" border="1" bordercolor="skyblue">	
		<tr heigth="40">
			<td width="100" align="center">우편번호</td>
			<td width="150" align="center">시/도</td>
			<td width="100" align="center">구</td>
			<td width="150" align="center">도로명</td>
			<td width="100" align="center">선택</td>						
		</tr>
		
	<%
	for(int i=0;i<az.size();i++){
		ZipBean bean=az.get(i);%>		
		<tr heigth="40">
			<td width="100" align="center" ><span id="zipcode"><%=bean.getZipcode() %></span></td>			
			<td width="100" align="center" ><%=bean.getArea1() %></td>
			<td width="100" align="center" ><%=bean.getArea2() %></td>
			<td width="200" align="center" ><%=bean.getArea3() %></td>
			<td width="100" align="center"><input type="button" value="선택" onclick="setaddr()"></td>
			<!-- <a href="member.jsp?zipcode=<%=bean.getZipcode() %>&address=<%=bean.getArea1()+" "+bean.getArea2()+" "+bean.getArea3() %>">선택</a> -->
		</tr>			
	<% }
	%>
	</table>
	</center>
</body>
</html>