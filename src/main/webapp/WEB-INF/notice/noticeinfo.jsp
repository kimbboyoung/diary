<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<table>
	<tr>
		<td>날짜</td>
		<td>${notice.n_date}일의 일기</td>
	</tr>
	<tr>
		<td>제목</td>
		<td>${notice.n_title}</td>
	</tr>
	<tr>
		<td>내용</td>
		<td>${notice.n_contents}</td>
	</tr>
</table>

</body>
</html>