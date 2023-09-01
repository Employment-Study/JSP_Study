package org.springframework.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharacterEncodingFilter implements Filter {
	
	private String encoding;	// 인코딩 방식을 저장할 문자열 필드
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		encoding = filterConfig.getInitParameter("encoding");
		// 설정 시 초기 파라미터를 불러와서 필드에 저장
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		request.setCharacterEncoding(encoding);	// 지정된 방식으로 인코딩 설정
		response.setCharacterEncoding(encoding);
		chain.doFilter(request, response);		// 이후, 원래 진행하려던 작업을 이어서 진행해라
	}
	
	@Override
	public void destroy() {}



}
