<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    
    session.setAttribute("name", name);
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 세션</title>
</head>
<body>

<script>
location.href="state.jsp";
</script>


</body>
</html>