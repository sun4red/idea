<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    
    Enumeration attr = session.getAttributeNames();
    String name = "";
    
    
    while(attr.hasMoreElements()){
    	String attrName = (String)attr.nextElement();
    	name = (String)session.getAttribute(attrName);
    }
    
    String address = request.getRemoteAddr();
    
    
    if(name.equals("")){
%>
	<script>
	location.href="loginForm.jsp";
	
	</script>
    	
    	
<%   
    }else{
%>    
    
<script>
	location.href = "viewSession.jsp";
</script>    
    
    <%
    }
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>