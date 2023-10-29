package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.Session;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.BoardDAO;
import dto.BoardDTO;

public class BoardWrite implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("BoardWrite");

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		String path = request.getRealPath("upload");
		System.out.println("path : " + path);

		int size = 1024 * 1024 * 100;

		MultipartRequest multi = new MultipartRequest(request, path, size, "utf-8", new DefaultFileRenamePolicy());

		BoardDTO board = new BoardDTO();
		board.setName(multi.getParameter("name"));
		board.setSubject(multi.getParameter("subject"));
		board.setContent(multi.getParameter("content"));
		board.setFile(multi.getParameter("file"));

		System.out.println("객체 확인 네임 "+board.getName());
		System.out.println("객체 확인 제목 "+board.getSubject());
		
		BoardDAO dao = BoardDAO.getInstance();
		
		int result = dao.boardWrite(board);
		if(result == 1) {
			System.out.println("글 저장 완료");
		}
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		

		return forward;
	}

}
