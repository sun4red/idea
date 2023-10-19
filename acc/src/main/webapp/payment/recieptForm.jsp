<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<% 
	String member = "";
	
	Enumeration attr = session.getAttributeNames();
	while(	attr.hasMoreElements()	){
		String attrName = (String)attr.nextElement();
		String attrValue = (String)session.getAttribute(attrName);
	member = attrValue;
	}
	
	%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 내역 입력</title>
</head>
<body>
	<form method = "post" action = "receipt.jsp">
	<input type = "hidden" name = "member" value = "<%=member %>">
	<a href = "../index.jsp">메인화면</a><br>
	<a href = "paymentList.jsp">전체 결제 내역</a><br>
		<table border = "1">
			<tr>
				<td>결제인</td>
				<td colspan = "3"><%=member %></td>
			</tr>
			<tr>
				<td>금액</td>
				<td><input type="text" id="amount" name="amount"></td>
				<td>항목</td>
				<td><input type="text" id="item" name="item"></td>
			</tr>
			<tr>
			<td colspan = "4" align = "center"><input type = "submit" value = "등록"></td>
			</tr>
		</table>
	</form>
</body>
</html>