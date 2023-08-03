<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.joindiv{
 width:30%;
 background-color: #fefefe;
 margin: 100px auto;
 padding: 20px;
 border: 1px solid #888;

}
.jointable{
text-align: center;
width:100%;
}
.joininput{
margin-bottom: 3px;
border: 1px solid #ccc;
padding: 8px;
display: block;
border-bottom: 1px solid #ccc;
width: 100%;
}
.jointable th{
text-align: left;
}
</style>
</head>
<body>
<%@include file="../main/header.jsp" %>
<div class="joindiv">
<form action="join" method="post" class="w3-container">
<h3 style="text-align: center;">회원가입</h3>
<table class="jointable">
<tr>
<th>*아이디</th>
<td><input class="joininput" type="text" name="m_id" required></td>
</tr>
<tr>
<th>*비밀번호</th>
<td><input class="joininput" type="password" name="m_pass" required></td>
</tr>
<tr>
<th>*이름</th>
<td><input class="joininput" type="text" name="m_name" required></td>
</tr>
<tr>
<th>핸드폰번호</th>
<td><input class="joininput" type="text" name="m_phone"></td>
</tr>
<tr>
<th>*이메일</th>
<td><input class="joininput" type="text" name="m_email" required></td>
</tr>
<tr>
<th>*닉네임</th>
<td><input class="joininput" type="text" name="m_nic" required></td>
</tr>
<tr>
<th>프로필사진</th>
<td><input type="file" name="m_pic"></td>
</tr>
</table>
<button class="w3-button w3-block w3-green w3-section w3-padding" type="submit" class="joinbutton">회원가입하기</button>
</form>
</div>
<%@include file="../main/footer.jsp" %>
</body>
</html>