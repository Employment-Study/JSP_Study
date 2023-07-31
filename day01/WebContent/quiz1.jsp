<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1.jsp</title>
</head>
<body>
	<h1>quiz1.jsp</h1>
	<hr>

	<h3>두 정수의 덧셈 맞추기</h3>

	<ul>
		<li>java.util.Random 클래스를 import하세요</li>
		<li>form태그에서는 두 정수 n1,n2를 랜덤으로 가져오세요</li>
		<li>랜덤의 범위는 1 ~ 100 사이입니다.</li>
		<li>두 정수를 이용하여 식을 보여주고, 정답을 입력받기 위한 input을 준비합니다.</li>
		<li>정답을 입력받는 파라미터의 이름은 answer</li>
		<li>입력받은 answer가 맞으면 정답, 틀렸으면 오답이라고 출력하세요</li>
		<li>answer를 입력하지 않은 상태에서는 정답 혹은 오답이 보여지면 안됩니다.</li>
	</ul>

	<%!
	// 유지되어야 하는 값은 선언부에 넣어준다.
	private Random ran = new Random();
	private int n1 = ran.nextInt(100) + 1;
	private int n2 = ran.nextInt(100) + 1;
	private int menu = ran.nextInt(4) + 1;%>

	<%
		request.setCharacterEncoding("utf-8");

		String clientAnswer = request.getParameter("answer");

		Random rand = new Random();

		int answer = 0;
		char ch = ' ';
		switch (menu) {
		case 1:
			ch = '+';
			answer = n1 + n2;
			break;
		case 2:
			ch = '-';
			answer = n1 - n2;
			break;
		case 3:
			ch = 'x';
			answer = n1 * n2;
			break;
		case 4:
			ch = '/';
			answer = n1 / n2;
			break;
		}
	%>

	<%
		String result = "";

		if (clientAnswer != null) {
			int a = Integer.parseInt(clientAnswer);
			if (a == answer) {
				result = "정답";
				n1 = rand.nextInt(100) + 1;
				n2 = rand.nextInt(100) + 1;
			} else {
				result = "오답";
			}
		}
	%>

	<fieldset>
		<p>
			<h3>
				<%=n1%>
				<%=ch%>
				<%=n2%>
			</h3>
		</p>
		<form>
		 	<input type="number" name="answer">
		  	<input type="submit" value="정답확인">
		</form>
		<%=result %>
	</fieldset>


</body>
</html>