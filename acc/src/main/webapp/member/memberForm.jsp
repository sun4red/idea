<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form>
		<table border = "1" method = "post" action = "sign.jsp">
			<caption>����� ���</caption>
			<tr>
				<td>�̸�</td>
				<td><input type="text" id="name" name="name"></td>
			</tr>
			<tr>
				<td>����� ��й�ȣ</td>
				<td><input type="text" id="pw" name="pw"></td>
			</tr>
			<tr>
				<td>��й�ȣ ��Ȯ��</td>
				<td><input type="text" id="repw" name="repw"></td>
			</tr>
			<tr>
			<td colspan = "2" align = "center"><input type = "submit" value = "���"></td>
			</tr>
		</table>
	</form>
</body>
</html>