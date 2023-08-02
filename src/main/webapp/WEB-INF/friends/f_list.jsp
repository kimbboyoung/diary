<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import="com.f.diary.friends.FriendsVO, java.util.*" %>
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
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<style>
	section table{
		border-collapse: collapse;
		margin: 0 auto;
	}
	section th, section td{
		border:1px solid black;
	}
	table{
		margin: 0 50px; 
	}
</style>
</head>
<body>
	<%@include file="../main/header.jsp" %>
	<section>
		<table style="float:left">
			<caption>친구목록</caption>
			<tr>
				<th>그룹이름</th><th>친구번호</th><th>삭제여부</th>
			</tr>
			<% List<FriendsVO> fList = (List<FriendsVO>)request.getAttribute("friendsList"); 
				if(fList != null){
					for(FriendsVO fVo : fList){
						%>
						
						<tr>
							<td><%=fVo.getF_group() %></td>
							<td><%=fVo.getF_friendsnum() %></td>
							<td><a href="delFriends?f_friendsnum=<%=fVo.getF_friendsnum()%>">삭제</a></td>
						</tr>
						
						<%
					}
				}
			
			%>
		</table>
		
		<table>
			<caption>친구요청목록</caption>
			<tr><th>요청한친구이름</th></tr>
		</table>
		
		<table>
			<caption>친구추가</caption>
			<tr>
				<th>그룹이름</th>
				<th>친구번호</th>
			</tr>
			<tr>
				<td>
					<select>
						<option>선택없음</option>
					</select>
				</td>
				<td>
					<input type="text">
				</td>
			</tr>
		</table>
		
	</section>
		<%@include file="../main/footer.jsp" %>
</body>
</html>