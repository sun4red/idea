<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8");
    Enumeration attr = session.getAttributeNames();
    String name = "";
    
    while(attr.hasMoreElements()){
    	String attrName = (String)attr.nextElement();
    	name = (String)session.getAttribute(attrName);
    }
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
</head>
<body>

<form>
<table>
<tr>
<td>
빈공간
</td>
</tr>
<tr>
<h3 align = "center">선홍의 정산 프로그램</h1>
</tr>

</table>

</form>

<h3>인덱스 파일</h3>
<br><br>
로그인 여부 생성자리
<br><br>

현재 접속자 : <%=name %>

</body>
</html>