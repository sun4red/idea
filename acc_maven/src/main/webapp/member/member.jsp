<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>


<jsp:useBean id = "member" class = "member.MemberDTO"></jsp:useBean>
<jsp:setProperty property = "*" name = "member"/>

<%
MemberDAO dao = MemberDAO.getInstance();
int check1 = dao.nameCheck(member.getName());

if(check1 == 1){
%>
	
	<script>
	alert("이미 등록된 사용자");
	history.go(-1);
	</script>	
	
	
<%	

}else{

	int result = dao.insert(member);
	if(result == 1){
%>
	<script>
		alert("사용자 등록 완료");
		location.href="../index.jsp";
	</script>




<% }else {%>
<script>
	alert("사용자 등록 실패");
	history.go(-1);
</script>

<% 
	}
}
%>