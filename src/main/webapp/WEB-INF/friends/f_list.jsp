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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
	 .capTop{
		caption-side: top;
	 }
	 section{
	 	width: 65%;
	 }
</style>
</head>
<body>
	<%@include file="../main/header.jsp" %>
	<div  class="container" style="width: 85%;">
		<table style="border: 1px solid black; margin: 0 auto; width: 100%;">
		<tr>
			<td style="height: 250px; ">
				<table style="margin-top: 0; vertical-align: top;">
					<caption class="capTop">친구목록</caption>
					<tr>
						<th>그룹이름</th><th>친구번호</th><th>삭제여부</th>
					</tr>
					<% List<FriendsVO> fList = (List<FriendsVO>)request.getAttribute("friendsList"); 
						if(fList != null){
							for(FriendsVO fVo : fList){
								%>
								
								<tr>
									<td><%=fVo.getF_group() %></td>
									<td><%=fVo.getF_friendsid() %></td>
									<td><a href="delFriends?f_friendsid=<%=fVo.getF_friendsid()%>">삭제</a></td>
								</tr>
								
								<%
							}
						}
					
					%>
				</table>
			</td>
			<td>
				<table>
					<caption class="capTop">친구요청목록</caption>
					<tr><th>요청한친구이름</th></tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<form action="addFriends" method="post">
					<table>
						<caption class="capTop">친구추가</caption>
						<tr>
							<th>그룹이름</th>
							<th>친구아이디</th>
						</tr>
						<tr>
							<td>
								<input type="text" name="f_group" size="8px">
							</td>
							<td>
								<input type="text" name="f_friendsid" size="8px">
							</td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center;">
								<input type="submit" value="친구추가">
							</td>
						</tr>
					</table>
				</form>
			
			</td>
		</tr>
		
		
		
		
		
		
		</table>
	</div>
		<%@include file="../main/footer.jsp" %>
</body>
</html>