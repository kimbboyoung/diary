<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="com.f.diary.notice.NoticeVO, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function resNotice(val) {
	console.log(val);
	location.href="resNotice?n_num="+val;
}
</script>
</head>
<body>
<%@include file="../main/header.jsp" %>
	
	<c:choose>

	<c:when test="${empty delnoticelist}">
	<h3 class="h3" >삭제된 일기가 없습니다</h3>
</c:when>

<c:otherwise>
	<c:forEach var="notices" items="${delnoticelist}">
		<table style="display:inline;">

				<tr>
					<td>${notices.n_date}</td>
				</tr>
				<tr>
					<td>${notices.n_title}</td>
				</tr>
				<tr>
					<td><button type="button" onclick="resNotice('${notices.n_num}')">복원</button></td>
				</tr>
				
		</table>
	</c:forEach>
</c:otherwise>
</c:choose>
<%@include file="../main/footer.jsp" %>
</body>
</html>