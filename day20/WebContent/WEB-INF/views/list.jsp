<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>

<h1>게시글 목록</h1>
<hr>

<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일자</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="dto" items="${list }">
		<tr>
			<td>${dto.idx }</td>
			<td><a href="${cpath }/board/view?idx=${dto.idx}">${dto.title }</a></td>
			<td>${dto.writer }</td>
			<td>${dto.wdate }</td>
		</tr>
		</c:forEach>
	</tbody>
</table>

<a href="${cpath }/board/write"><button>새 글 작성</button></a>

</body>
</html>