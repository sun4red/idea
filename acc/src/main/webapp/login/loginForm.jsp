<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>사용자 로그인</title>

<script src = "http://code.jquery.com/jquery-latest.js"></script>
<script src = "login.js"></script>

</head>
<body>
<a href = "../index.jsp">home</a>
<a href = "../member/memberForm.jsp">사용자 등록</a>
	<form method = "post" name = "loginform" action="<%=request.getContextPath() %>/Login.acc">
		<table border="1">
			<caption>로그인</caption>
			<tr>
				<th>이름</th>
				<td><input type="text" id="name" name="name"></td>

				<th>비밀번호</th>
				<td><input type="password" id="pw" name="pw"></td>
			<td align = "center">
			<input type = "submit" value ="로그인">
			</td>
			</tr>
		</table>
	</form>
</body>
</html>