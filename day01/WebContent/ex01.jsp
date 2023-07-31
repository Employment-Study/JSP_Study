<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
<style type="text/css">
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
</head>
<body>
	<h1>ex01 - jsp기본 문법</h1>
	<hr>

	<table>
		<thead>
			<tr>
				<th>형식</th>
				<th>이름</th>
				<th>설명</th>
			</tr>
			</thead>
			
			<tbody>
				<tr>
				<td>&lt;%@ %></td>
				<td>Directive (지시자)</td>
				<td>jsp 문서 전반에 적용되는 설정, import, 태그 선언등을 지정한다.</td>
			</tr>

			<tr>
				<td>&lt;%! %></td>
				<td>Declaration(선언부)</td>
				<td>클래스의 필드 및 메서드를 선언/정의한다.</td>
			</tr>

			<tr>
				<td>&lt;% %></td>
				<td>Scriptlet(스크립틀릿)</td>
				<td>service 함수 내부의 내용을 작성한다.</td>
			</tr>

			<tr>
				<td>&lt;%= %></td>
				<td>Expression (표현식)</td>
				<td>자바 변수의 값을 화면에 출력한다. out.printl()와 동일하다.</td>
			</tr>
			</tbody>
	</table>
</body>
</html>