package com.itbank.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.repository.BoardDAO;

public class BoardDeleteController implements Controller {

	private BoardDAO dao = BoardDAO.getInstance();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String param = request.getParameter("idx");
		if(param != null) {
			int idx = Integer.parseInt(param);
			int row = dao.delete(idx);
			System.out.println(row + "행이 삭제되었습니다");
		}
		return "redirect:/board";
	}

	@Override
	public String doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

}
