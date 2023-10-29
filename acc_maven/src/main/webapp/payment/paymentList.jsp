<%@page import="java.util.ArrayList"%>
<%@page import="dto.PaymentDTO"%>
<%@page import="java.util.List"%>
<%@page import="dao.PaymentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 결제 내역</title>
</head>
<body>
	<a href = "../index.jsp">메인화면</a><br>
	<a href = "recieptForm.jsp">결제 건 입력</a><br>

<form>
<table border = "1">

<%

PaymentDAO dao = PaymentDAO.getInstance();
List<PaymentDTO> list = null;

list = dao.getPaymentList();


%>



<% 
for(int i = 0; i < list.size(); i++){
	PaymentDTO po = list.get(i);
%>

<tr>
<td>
<%= po.getMember() %>
</td>
<td>
<%= po.getAmount() %>
</td>
<td>
<%= po.getItem() %>
</td>
</tr>



<%	
}
%>

<tr>
<th>합계</th>
<%double paymentsum = dao.getSum();
%>
<td><%= paymentsum %>
</tr>

</table>
</form>
<%

// 전체 결제 내역 표시 예정

%>

</body>
</html>