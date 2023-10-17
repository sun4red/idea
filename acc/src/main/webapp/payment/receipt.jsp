<%@page import="payment.PaymentObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

request.setCharacterEncoding("utf-8");

%>

<jsp:useBean id = "payment" class = "payment.PaymentObject" />
<jsp:setProperty property = "*" name = "payment" />


<script>
alert("사용자, <%=payment.getMember()%>");

</script>