<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<title>My JSP Page</title>
	<!-- Twitter Bootstrap3 & jQuery -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css" />
	<script src="http://code.jquery.com/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1 class="page-header">퀴즈추가</h1>
		<form name="myform" method="post" action="quiz_add_ok.jsp">

			<div class="form-group">
				<label for="quizans">종류</label>
				<input type="text" name="quizans" id="quizans" class="form-control" />
			</div>
		
		
			<div class="form-group">
				<label for="quizexp">퀴즈설명</label>
				<input type="text" name="quizexp" id="quizexp" class="form-control" />
			</div>

			<div class="form-group">
				<label for="quizans">정답</label>
				<input type="text" name="quizans" id="quizans" class="form-control" />
			</div>

			<button type="submit" class="btn btn-primary btn-block">
				완료</button>
	    </form>
	</div>
</body>
</html>
