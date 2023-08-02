<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원가입</h3>
<form action="join" method="post">
<div>
*아이디<input type="text" name="m_id" required>
</div>
<div>
*비밀번호<input type="password" name="m_pass" required>
</div>
<div>
*이름<input type="text" name="m_name" required>
</div>
<div>
핸드폰번호<input type="text" name="m_phone">
</div>
<div>
*이메일<input type="text" name="m_email" required>
</div>
<div>
*닉네임<input type="text" name="m_nic" required>
</div>
<div>
프로필사진<input type="text" name="m_pic">
</div>
<button type="submit">회원가입하기</button>
</form>
</body>
</html>