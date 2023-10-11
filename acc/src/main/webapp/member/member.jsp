<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>


<jsp:useBean id = "member" class = "member.MemberDTO"></jsp:useBean>
<jsp:setProperty property = "*" name = "member"/>

<%
MemberDAO dao = MemberDAO.getInstance();
int result = dao.insert(member);


if(result == 1){
%>
<script>
	alert("사용자 등록 완료");
	
</script>
<% }else {%>
<script>
	alert("사용자 등록 실패");
</script>

<% }	%>