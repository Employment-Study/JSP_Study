package ex05;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex05/view")
public class ViewServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private BoardDAO dao = BoardDAO.getInstance();
	
	private final String prefix = "/WEB-INF/views/";
	private final String suffix = ".jsp";

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String param = request.getParameter("idx");
		
		if(param != null) {
			int idx = Integer.parseInt(param);
			BoardDTO dto = dao.selectOne(idx);
			if(dto != null) {
				request.setAttribute("dto", dto);
				String path = prefix + "ex05-view" + suffix;
				request.getRequestDispatcher(path).forward(request, response);
				return;
			}
		}
		response.sendRedirect(request.getContextPath() + "/ex05");
	}
}














