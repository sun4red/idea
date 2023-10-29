<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    Enumeration attr = session.getAttributeNames();
    String name = "";
    
    while(attr.hasMoreElements()){
    	String attrName = (String)attr.nextElement();
    	name = (String)session.getAttribute(attrName);
    }
    
    String address = request.getRemoteAddr();
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>접속자 정보</title>
</head>
<body>
<a href = "../index.jsp">home</a>

<form method = "post" action = "logout.jsp">
<table border = "1" align = "center" width = "500">

<tr>
<th>사용자</th>
<td><%=name %></td>
<th>접속 IP</th>
<td><%=address %>
<td><input type = "submit" value = "로그아웃"></td>



</tr>

</table>

</form>


</body>
</html>