<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<style>
	h3 > span {
		color: blue;
	}
	
	table {
	border: 2px solid black margin: auto;
	margin-top: 50px;
	border-collapse: collapse;
}

thead {
	background-color: #dadada
}

th, td {
	padding: 10px;
	border: 1px solid grey;
	font-size: 1.5em;
}

tr > td:first-child {
	font-weight: bold;
	font-family: 'Consolas';
	color: orangered;
}
</style>
<body>
	<h1>ex03.jsp - 파라미터</h1>
	<hr>
	
	
	<h3>
		http: //
		localhost
		: 8080
		/day01
		/ex03.jsp
		<span>?name=이지은&age=31</span>
	</h3>
	<h3>파란색 부분을 쿼리스트링이라고 하는데 Get요청시 생겨나는 파라미터 주소이다.</h3>
	
	<table>
		<tr>
			<th>request Method</th>
			<th>body유무</th>
			<th>파라미터 형식</th>
		</tr>
		
		<tr>
			<td>Get</td>
			<td>X</td>
			<td>query String, 주소창으로 파라미터를 전송한다.</td>
		</tr>
		
		<tr>
			<td>POST</td>
			<td>0</td>
			<td>form-data (urlencoded), 별도의 공간으로 파라미터를 전송한다.</td>
		</tr>	
	</table>
	
	<fieldset>
		<legend>GET</legend>
		<form method="get">
			<p><input type="text"  name="p1" placeholder="입력"></p>
			<p><input type="submit" ></p>
		</form>
	</fieldset>
	
	<fieldset>
		<legend>POST</legend>
		<form method="post">
			<p><input type="text"  name="p2" placeholder="입력"></p>
			<p><input type="submit" ></p>
		</form>
	</fieldset>
	
<%
	// 모든 파라미터는 문자열(String) 형식으로 받는다.
	
	// 주소창을 통해서 전달하지 않으면, 인코딩 규칙이 달라서 글자가 깨질 수 있다.
	request.setCharacterEncoding("UTF-8");			// POST전송 시 꼭 먼저 설정하기
	
	
	// 모든 파라미터는 문자열(String) 형식으로 받는다.
	String p1 = request.getParameter("p1");
	String p2 = request.getParameter("p2");
	
	out.println("<h3>p1 : "+ p1 + "</h3>");
	out.println("<h3>p2 : "+ p2 + "</h3>");
%>	
	
</body>
</html>