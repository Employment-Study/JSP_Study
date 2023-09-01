package com.itbank.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HomeController implements Controller {

	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Date date = new Date();
		request.setAttribute("date", date);
		return "home";
	}

	@Override
	public String doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		return doGet(request, response);
	}

}
