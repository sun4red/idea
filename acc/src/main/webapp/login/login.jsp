<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id = "member" class = "member.MemberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="member"/>

<%
MemberDAO dao = MemberDAO.getInstance();

int result = dao.pwCheck(member);
%>

<%
if(result == -1){	// 이름 불일치
%>
	<script>
	alert("등록되지 않은 사용자");
	history.go(-1);
	</script>
<%
}else if(result == -2){	// 비번 불일치
%>
	<script>
	alert("비밀번호가 일치하지 않음");
	history.go(-1);
	</script>
<%
}else if(result == 1){	// 이름, 비번 일치
%>
	<script>
	alert("<%=member.getName() %> 접속");
	location.href = "setSession.jsp?name=<%=member.getName()%>";
	</script>
<%
}
%>



