package com.itbank.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {	// jsp model 2 의 action

	String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	String doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
