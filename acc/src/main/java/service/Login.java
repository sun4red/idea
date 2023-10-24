package service;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dto.MemberDTO;

public class Login implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("Login");
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		MemberDAO dao = MemberDAO.getInstance();
		MemberDTO member = new MemberDTO();
		
		int result = dao.pwCheck(member);
		
		if(result == 1) {
			System.out.println("로그인");
		}else {
			return null;
		}
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./login/viewSession.jsp");
		
		return forward;
	}

	
	
	
}
