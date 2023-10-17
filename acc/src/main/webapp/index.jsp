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

<%-- <jsp:include page = "login/loginForm.jsp" flush = "false"/>  --%>
<form>
<table>
<tr>
<td>
<!-- <a href = "../index.jsp">home</a>  -->
</td>
</tr>
<tr>
<h3 align = "center">선홍의 정산 프로그램</h1>
</tr>
<tr>
<td>
<input type = "button" value = "사용자 정보 페이지" 
onClick = "location.href='login/state.jsp'"/>
</td>
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