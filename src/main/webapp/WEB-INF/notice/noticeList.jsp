<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="com.f.diary.notice.NoticeVO, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {border:1px soli black;}
</style>

</head>
<body>
<%@include file="../main/header.jsp" %>
<c:choose>

<c:when test="${empty noticelist}">
	<h3 class="h3" >일기를 등록해라</h3>
	<button type="button">버튼</button>
</c:when>

<c:otherwise>
	<c:forEach var="notices" items="${noticelist}">
		<table style="display:inline;">

				<tr>
					<td>${notices.n_date}</td>
				</tr>
				<tr>
					<td>${notices.n_title}</td>
				</tr>
				<tr>
					<td><button type="button" >버튼</button></td>
				</tr>
		</table>
	</c:forEach>
</c:otherwise>
</c:choose>
	
		
			
			


<%@include file="../main/footer.jsp" %>
<script>
// function deleteNotice(val) {
	const button = document.getElementById("button");
// 	location.href="deleteNotice?n_num="+val;
// }
button.onclick = function() {
    // 새로운 URL로 페이지를 이동합니다.
    location.href = "deleteNotice"; // 원하는 URL을 여기에 입력하세요.
  };

</script>
</body>
</html>