<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz2.jsp</title>
</head>
<body>
	<h1>quiz2.jsp</h1>
	<hr>
	
	<%! 
			String[] format; 	
	%>
	
	<%
		String birth = request.getParameter("birth");
		if (birth != null) {
			format = birth.split("-");
		}
	%>
	<ul>
		<li>날짜를 입력받아서 yyyy년 MM월 dd일 형식의 문자열로 바꿔서 출력하세요</li>
	</ul>

	<form>
		<p>
			<input type="date" name="birth">
		</p>
		<p>
			<input type="submit">
		</p>
	</form>

	<%
		if(format!= null ){
			String year = format[0];
			String month = format[1];
			String day = format[2];
	%>
	<marquee><%=year %>년 <%=month %>월 <%=day %>일</marquee>
	<%
		format = null;
		}
	%>
	
	<a href="./quiz2.jsp"><button>돌아가기</button></a>
	
</body>
</html>