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
			<caption>사용자 등록</caption>
			<tr>
				<td>이름</td>
				<td><input type="text" id="name" name="name"></td>
			</tr>
			<tr>
				<td>사용할 비밀번호</td>
				<td><input type="text" id="pw" name="pw"></td>
			</tr>
			<tr>
				<td>비밀번호 재확인</td>
				<td><input type="text" id="repw" name="repw"></td>
			</tr>
			<tr>
			<td colspan = "2" align = "center"><input type = "submit" value = "등록"></td>
			</tr>
		</table>
	</form>
</body>
</html>