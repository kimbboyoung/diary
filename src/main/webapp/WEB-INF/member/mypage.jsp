<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
   // 세션 체크
   if (session.getAttribute("m_id") == null) {
       // 세션이 없거나 userId가 없는 경우 로그인 페이지로 이동
	   response.setContentType("text/html; charset=UTF-8"); // 한글 문자열 처리를 위해 콘텐츠 타입 설정
       out.println("<script>alert('로그인 후 이용 가능합니다.'); window.location.href='/login';</script>");
   }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#mypage th{
text-align: right;
}
.w3-sidebar{
    height: 100%;
    width: 200px;
    background-color: #fff;
    position: fixed!important;
    z-index: auto!important;
    overflow: auto;
}
.center-content{

    background-color: white;
}
.myinfo{
display:flex;
align-items:center;
justify-content: center;

}
.sidevar{
text-align: center;
    width: 100%;
    display: block;
    border: none;
    white-space: normal;
    float: none;
    outline: 0;
    padding: 12px 24px;
    vertical-align: middle;
    overflow: hidden;
    background-color: #f1f1f1;
}
.sidevar:hover{
 background-color: white;
}
.snav{
	height: 100%;
    width: 200px;
    background-color: #f1f1f1;
    position: fixed!important;
    z-index: auto;
    overflow: auto;
    display: block;
    text-align: center;
    
    }
body{
background-color: #f1f1f1!important;
}
</style>
</head>
<%@include file="../main/header.jsp" %>
<body>
<nav class="snav">
  <!-- Avatar image in top left corner -->
 <a href="#about" class="sidevar" style="background-color: white;">
    
    <p>HOME</p>
  </a>
  <a href="#about" class="sidevar">
   
    <p>ABOUT</p>
  </a>
  <a href="#photos" class="sidevar">
    
    <p>PHOTOS</p>
  </a>
  <a href="#contact" class="sidevar">
    
    <p>CONTACT</p>
  </a>
</nav>


<div class="center-content">
 <form action="updateProfile" method="POST" class="myinfo">
		<table id="mypage">
			<tr>
				<td colspan="2" style="text-align: center;"><img src="${selectmy.m_pic}" alt="프로필사진"
					onclick="changeProfilePic()"></td>
			</tr>
			<tr>
				<th>ID:</th>
				<td><input type="text" id="user_id" name="user_id"
					value="${selectmy.m_id}" readonly></td>
			</tr>
			<tr>
				<th>이름:</th>
				<td><input type="text" id="name" name="user_name"
					value="${selectmy.m_name}"></td>
			</tr>
			<tr>
				<th>닉네임:</th>
				<td><input type="text" id="nickname" name="user_nic"
					value="${selectmy.m_nic}"></td>
			</tr>
			<tr>
				<th>휴대폰번호:</th>
				<td><input type="text" id="phone" name="user_phone"
					value="${selectmy.m_phone}"></td>
			</tr>
			<tr>
			<td colspan="2" style="text-align: center;"><input type="submit" value="저장"></td>
			</tr>
		</table>	
	</form>
  <!-- End Contact Section -->
  </div>
	
	<%@include file="../main/footer.jsp" %>
</body>
</html>