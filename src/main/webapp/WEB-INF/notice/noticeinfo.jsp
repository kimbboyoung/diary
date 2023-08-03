<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../main/header.jsp" %>
	<table border="1" style="width:100px;">
		<caption><%=LocalDate.now() %>일기</caption>
		<tr>
		<td>제목</td>
		<td>${notice.n_title}</td>
		</tr>
		
		<tr>
		<td>내용</td>
		<td>${notice.n_contents}</td>
		</tr>
	</table>
<%@include file="../main/footer.jsp" %>
</body>
</html>