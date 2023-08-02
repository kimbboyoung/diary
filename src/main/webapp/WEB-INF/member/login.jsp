<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.logcon {
  background-color: #fefefe;
  margin: 15% auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
  max-width: 400px;
}
</style>
</head>
<body>
<div class="logcon">
    <!-- 로그인/회원가입 폼 등을 포함한 내용을 이곳에 추가합니다. -->
          <form class="w3-container" action="/logingo" method="post">
        <div class="w3-section">
          <label><b>ID</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" name="m_id" required>
          <label><b>Password</b></label>
          <input class="w3-input w3-border" type="password" name="m_pass" required>
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Login</button>
          <a href="/join">회원가입</a>
        </div>
      </form>
</div>
</body>
</html>