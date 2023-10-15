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
<title>Insert title here</title>
</head>
<body>

<form method = "post" action = "logout.jsp">
<table border = "1">

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