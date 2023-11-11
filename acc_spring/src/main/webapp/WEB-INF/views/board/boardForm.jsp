<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/BoardWrite.acc"
		method="post" enctype="multipart/form-data">
		<input type="hidden" name="name" id="name"
			value="${sessionScope.name}" />
		<table border="1">

			<tr>
				<td align="center">제목</td>
				<td><input type="text" id="subject" name="subject" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center">내용</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="textarea"
					id="content" name="content" /></td>
			</tr>
			<tr>
				<td>파일 첨부</td>
				<td><input type="file" name="file" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="저장"></td>
			</tr>

		</table>
	</form>

</body>
</html>