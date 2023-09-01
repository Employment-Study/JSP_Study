package ex05;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex05/write")
public class WriteServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private BoardDAO dao = BoardDAO.getInstance();
	
	private final String prefix = "/WEB-INF/views/";
	private final String suffix = ".jsp";

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = prefix + "ex05-write" + suffix;
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		
		BoardDTO dto = new BoardDTO();
		dto.setTitle(title);
		dto.setWriter(writer);
		dto.setContent(content);
		
		int row = dao.insert(dto);
		if(row != 0) {
			int idx = dao.selectMaxIdx();
			response.sendRedirect(request.getContextPath() + "/ex05/view?idx=" + idx);
		}
		else {
			response.sendRedirect(request.getContextPath() + "/ex05/write");
		}
	}
}










