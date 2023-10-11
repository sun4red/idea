<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method = "post" name = "loginform" action = "logincheck.jsp">
		<table border="1">
			<caption>로그인</caption>
			<tr>
				<th>이름</th>
				<td><input type="text" id="name" name="name"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="text" id="pw" name="name"></td>
			</tr>
			<tr>
			<td colspan = "2" align = "center">
			<input type = "submit" value ="로그인">
			</td>
			</tr>
		</table>
	</form>
</body>
</html>