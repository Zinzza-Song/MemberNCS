<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="script.js"></script>
</head>
<body>
	<div align="center">
		<h1>주소검색</h1>
		<form action="zipcheckProc.jsp" name="frm" method="get">			
			<table style="width: 80%">
				<tr>
					<th>찾을 주소</th>
					<td><input type="text" name="zip" size="20" placeholder="도로명 또는 구 입력"></td>
				</tr>
			</table>
			<br> <input type="submit" value=" 찾 기 "
				onclick="return zipserch()"> <br>
			<br>
		</form>
	</div>
</body>
</html>