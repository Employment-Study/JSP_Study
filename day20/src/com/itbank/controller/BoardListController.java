package com.itbank.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.model.BoardDTO;
import com.itbank.repository.BoardDAO;

// @Controller
public class BoardListController implements Controller {
	
	// @Autowired : 자료형에 맞는 객체가 등록되어 있으면 자동으로 연결시켜준다
	private BoardDAO dao = BoardDAO.getInstance();

	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<BoardDTO> list = dao.selectList();
		request.setAttribute("list", list);
		return "list";
	}

	@Override
	public String doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

}
