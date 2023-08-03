<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#mypage th{
text-align: right;
}
</style>
</head>
<body>
	<form action="updateProfile" method="POST">
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
</body>
</html>