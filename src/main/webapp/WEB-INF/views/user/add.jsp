<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<form method="post" action="${pageContext.request.contextPath}/user/add_ok.do">
		<div>
			<label for="name">회원이름: </label>
			<input type="text" name="name" id="name" />
		</div>
		<div>
			<label for="email">이메일: </label>
			<input type="text" name="email" id="email" />
		</div>
		<div>
			<label for="passwd">비밀번호: </label>
			<input type="text" name="passwd" id="passwd" />
		</div>
		<div>
			<label for="tel">전화번호: </label>
			<input type="text" name="tel" id="tel" />
		</div>
		<div>
			<label for="regdate">등록날짜: </label>
			<input type="text" name="regdate" id="regdate" />
		</div>
		<div>
			<label for="editdate">수정날짜: </label>
			<input type="text" name="editdate" id="editdate" />
		</div>
		<div>
			<label for="profile_img">프로파일 이미지: </label>
			<input type="text" name="profile_img" id="profile_img" />
		</div>
		<hr />
		<button type="submit">저장하기</button>
		<button type="reset">다시작성</button>
	</form>

</body>
</html>