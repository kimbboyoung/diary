<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="com.f.diary.notice.NoticeVO, java.util.*" %>
     <%
   // 세션 체크
   if (session == null || session.getAttribute("m_id") == null) {
       // 세션이 없거나 userId가 없는 경우 로그인 페이지로 이동
       response.sendRedirect("/login");
   }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script>

	function deleteNotice(val) {
		console.log(val);
		location.href ="deleteNotice?n_num="+val;
	}
	
	function selectNotice(val) {
		console.log(val);
		location.href="selectNotice?n_num="+val;
	}
	
</script>
<style>

	.noticelist {margin-top:150px;}
	
	.btn-write {
	  /* 버튼 스타일을 정의합니다. */
	  padding: 10px 20px;
	  color: #fff;
	  border: none;
	  cursor: pointer;
	  font-size: 16px;
	  animation: float-up 1s ease;
	  background-image: linear-gradient(to right, #ffb0f8, #b0eeff	);
	  border-radius:5px;}
	

	/* btn primary 키가 떠오르는 애니메이션을 정의합니다. */
	@keyframes float-up {
	  
	  0% {
	    transform: translateY(50px);
	    opacity: 0;}
	  
	  100% {
	    transform: translateY(0);
	    opacity: 1;}
	}
		
	.btn-write:hover {
		/* 호버시 색상 변경 */
		padding:11px 21px;
		font-size:17px;
	  	/* 호버시 그라데이션 변경 */
		background-image: linear-gradient(to right, #ffb0f8, #b0eeff);
		boder-image-slice : 1}
		
	
</style>
</head>
<body style="text-align:center; ">
<%@include file="../main/header.jsp" %>
	<div class="wrap">
		<div class="noticelist">
			
			<c:choose>
				
				<c:when test="${empty noticelist}">
					<h3 class="h3" style="margin-bottom:30px;">등록한 일기가 없습니다. 첫 일기를 써보세요!</h3>
					<button type="button" onclick="location.href='gonotice'" class="btn-write">일기 쓰기</button>
				</c:when>
				
				<c:otherwise>
				  <form method="post" action="/action" id="frm">
                    날짜를 지정하세요: <input type="date" value="<%=LocalDate.now() %>" id="n_date" name="n_date">
                    <button type="button" id="btn-date">전송</button>
                </form>
				
					<c:forEach var="notices" items="${noticelist}">
						<table style="display:inline;">
							<tr>
								<td>날짜</td>
								<td>${notices.n_date}</td>
							</tr>
							<tr>
								<td>제목</td>
								<td>${notices.n_title}</td>
							</tr>
							<tr>
								<td colspan="2">
									<button type="button" onclick="deleteNotice('${notices.n_num}')">삭제</button>
									<button type="button" onclick="selectNotice('${notices.n_num}')">조회</button>
								</td>
							</tr>
						</table>
						
				
					</c:forEach>
					 <!-- 반복되지 않는 form -->
              
                <!-- 반복되지 않는 div2 -->
                <div class="div2">
                    <a href="selectDelNoticeList">휴지통</a>
                    <button type="button" onclick="location.href='gonotice'">쓰기</button>
                </div>
				</c:otherwise>
				
			</c:choose>
		</div>
	</div>

<%@include file="../main/footer.jsp" %>

</body>
</html>