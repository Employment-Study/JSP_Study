<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view.jsp</title>
</head>
<body>

<h1>게시글 단일 조회</h1>
<hr>

<table>
	<tr>
		<td>제목</td>
		<td>${dto.title }</td>
	</tr>
	<tr>
		<td>작성자</td>
		<td>${dto.writer }</td>
	</tr>
	<tr>
		<td>작성일시</td>
		<td>
			<fmt:formatDate value="${dto.wdate }" pattern="yyyy-MM-dd a hh:mm"/>
		</td>
	</tr>
	<tr>
		<td>내용</td>
		<td><pre>${dto.content }</pre></td>
	</tr>
</table>

<a href="${cpath }/board"><button>목록</button></a>
<a href="${cpath }/board/delete?idx=${dto.idx}"><button>삭제</button></a>

</body>
</html>











