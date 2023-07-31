<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06.jsp</title>
</head>
<body>
	<h1>ex06.jsp  - 선언부와 스크립틀릿 변수</h1>
	<hr>
	
	<%!
		// 선언부 
		int n1 = 0;
	%>
	
	<%
		// 스크립틀릿
		int n2 = 0;
		// 파라미터를 스크립틀릿에서 불러오는 이유
		// 1) 같은 페이지에서 요청이 들어올 때마다 매번 새로운 값을 입력받기 때문에 유지할 필요가 없다.
		// 2) request는 스크립틀릿에서만 참조할 수 있고, 선언부에서는 참조할 수 없다.
		// 스크립틀릿 == service(request, response) {...} 
		// service() : 요청이 들어왔을 때 실행되는 변수
	%>
	
	
	
	<h3>n1 : <%=n1++ %></h3>
	<h3>n2 : <%=n2++ %></h3>
</body>
</html>