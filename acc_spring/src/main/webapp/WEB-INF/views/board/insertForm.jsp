<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
</head>
<body>
	<form action="${path }/insert" method="post">
		<!-- enctype="multipart/form-data" -->
		<table border="1">
		<caption>게시글 작성</caption>
			<tr>
				<td align="center">작성자</td>
				<td><input type="text" id = "writer" name = "writer"></td>
			</tr>

			<tr>
				<td align="center">제목</td>
				<td><input type="text" id="subject" name="subject" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><textarea id = "content" name = "content"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align = "center"><input type="submit" value="저장"></td>
			</tr>

		</table>
	</form>

</body>
</html>