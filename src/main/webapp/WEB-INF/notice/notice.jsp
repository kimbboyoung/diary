<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
  	
	html, body {height: 100%;}

	.wrap {
  		position: relative;
  		min-height: 100%;}
	
</style>
</head>
<body>
<%@include file="../main/header.jsp" %>
<div class="wrap">
	<div class="container" style="margin-top:30px; margin-bottom:100px;">
  		<h2>오늘의 일기</h2>
		<form action="insNotice" method="post" enctype="multipart/form-data" >
			<div class="form-group">
	  			<label for="date">날짜</label>
	  			<input type="text" class="form-control"  value="<%=LocalDate.now()%>" name="n_date">
			</div>
	
		<div class="form-group">
		  <label for="title">제목</label>
		  <input type="text" class="form-control" name="n_title">
		</div>
		
		<div class="form-group">
      		<label for="comment">내용</label>
      		<textarea class="form-control" rows="5" name="n_contents"></textarea>
   		 </div>
   		 
   		<div class="form-group">
      		<label for="file">사진/파일</label>
      		<input type="file" class="form-control" name="uploadFile">
      	</div>
      	<div class="form-group" style="text-align:center; ">
      		<input type="submit" class="btn btn-primary" value="쓰기">
      	</div>
      	</form>
</div>
<%@include file="../main/footer.jsp" %>
	</div>
</body>
</html>