<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%String msg_exist = " "; %>
	
<!DOCTYPE html>
<html>
<head>
<script src = "http://code.jquery.com/jquery-latest.js"></script>
<script src = "member.js"></script>
<meta charset="UTF-8">
<title>사용자 등록</title>
</head>
<body>
	<form  method = "post" action = "member.jsp">
		<table border = "1">
			<caption>사용자 등록</caption>
			<tr>
				<td>이름</td>
				<td>
				<input type="text" id="name" name="name">
				<br>
				<%=msg_exist %>
				</td>
			</tr>
			<tr>
				<td>사용할 비밀번호</td>
				<td><input type="password" id="pw" name="pw"></td>
			</tr>
			<tr>
				<td>비밀번호 재확인</td>
				<td><input type="password" id="repw" name = "repw"></td>
			</tr>
			<tr>
			<td colspan = "2" align = "center"><input type = "submit" value = "등록"></td>
			</tr>
		</table>
	</form>
</body>
</html>