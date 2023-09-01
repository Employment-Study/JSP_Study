<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05-write.jsp</title>
</head>
<body>

<h1>새 글 작성</h1>
<hr>

<form method="POST">
	<table>
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" placeholder="제목" required autofocus></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="writer" value="test" readonly></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="content" placeholder="내용을 작성하세요"></textarea></td>
		</tr>
	</table>
	<input type="submit">
</form>

</body>
</html>










