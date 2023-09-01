package ex05;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex05")
public class ListServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private BoardDAO dao = BoardDAO.getInstance();
	
	private final String prefix = "/WEB-INF/views/";
	private final String suffix = ".jsp";

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<BoardDTO> list = dao.selectList();
		request.setAttribute("list", list);
		String path = prefix + "ex05-list" + suffix;
		request.getRequestDispatcher(path).forward(request, response);
	}

}









