<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method = "post" name = "loginform" action = "logincheck.jsp">
		<table border="1">
			<caption>�α���</caption>
			<tr>
				<th>�̸�</th>
				<td><input type="text" id="name" name="name"></td>
			</tr>
			<tr>
				<th>��й�ȣ</th>
				<td><input type="text" id="pw" name="name"></td>
			</tr>
			<tr>
			<td colspan = "2" align = "center">
			<input type = "submit" value ="�α���">
			</td>
			</tr>
		</table>
	</form>
</body>
</html>