package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Action;
import service.ActionForward;
import service.Login;

/**
 * Servlet implementation class MemberController
 */
// @WebServlet("*.acc")
public class MemberController extends ACCController {
/*	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());

		System.out.println("CCC requestURI : " + requestURI);
		System.out.println("CCC contextPath : " + contextPath);
		System.out.println("CCC command : " + command);

		Action action = null;
		ActionForward forward = null;

		

		
		
		// 로그인
		if(command.equals("/login/Login.acc")) {
			try {
				action = new Login();
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
		// 포워딩 처리
		if (forward != null) {
			if (forward.isRedirect()) { // redirect 방식으로 포워딩
				response.sendRedirect(forward.getPath());

			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
		
	}
	


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
*/
}
