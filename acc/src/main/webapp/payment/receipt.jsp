<%@page import="payment.PaymentDAO"%>
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

<%

PaymentDAO dao = PaymentDAO.getInstance();
int result = dao.recieptIn(payment);
if(result == 1){
	%>
	<script>
	alert("db등록 완료");
	location.href="recieptForm.jsp";
	</script>
	
	<%
}else{
	%>
	
	<script>
	alert("등록 실패");
	history.go(-1);
	
	</script>
	
	<%
}

%>