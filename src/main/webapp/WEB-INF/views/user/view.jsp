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
	<h1>회원정보</h1>
	<p>회원번호: ${output.no}</p>
	<p>회원이름: ${output.name}</p>
	<p>이메일: ${output.email}</p>
	<p>비밀번호: ${output.passwd}</p>
	<p>전화번호: ${output.tel}</p>
	<p>등록날짜: ${output.regdate}</p>
	<p>수정날짜: ${output.editdate}</p>
	<p>: ${output.profile_img}</p>
	<hr />	
	<a href="${pageContext.request.contextPath}/user/list.do">[목록보기]</a>
	<a href="${pageContext.request.contextPath}/user/add.do">[회원추가]</a>
	<a href="${pageContext.request.contextPath}/user/edit.do?no=${output.no}">[회원수정]</a>
	<a href="${pageContext.request.contextPath}/user/delete_ok.do?no=${output.no}">[회원삭제]</a>
</body>
</html>