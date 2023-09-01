package ex05;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex05/delete")
public class DeleteServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private BoardDAO dao = BoardDAO.getInstance();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String param = request.getParameter("idx");
		if(param != null) {
			int idx = Integer.parseInt(param);
			dao.delete(idx);
		}
		response.sendRedirect(request.getContextPath() + "/ex05");
	}
}

