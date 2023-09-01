<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05-view.jsp</title>
</head>
<body>

<h1>게시글 조회</h1>
<hr>

<table>
	<tr>
		<th>${dto.idx }</th>
		<th>${dto.title }</th>
		<th>${dto.writer }</th>
		<th>${dto.wdate }</th>
	</tr>
	<tr>
		<td>
		<pre>${dto.content }</pre>
		</td>
	</tr>
</table>

<div>
	<div><a href="${cpath }/ex05"><button>목록</button></a></div>
	<div><a href="${cpath }/ex05/delete?idx=${dto.idx}"><button>삭제</button></a></div>
</div>










</body>
</html>