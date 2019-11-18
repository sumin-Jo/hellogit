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
	<h1>방정보</h1>
	<p>방타입: ${output.roomtype}</p>
	<p>방이름: ${output.title}</p>
	<p>층수: ${output.floor}</p>
	<p>면적: ${output.area}</p>
	<p>관리비: ${output.fee}</p>
	<p>확인일자: ${output.confirmdate}</p>
	<p>주소: ${output.address}</p>
	<p>동: ${output.dong}</p>
	<p>호: ${output.ho}</p>
	<p>위도: ${output.latitude}</p>
	<p>경도: ${output.longitude}</p>
	<p>2뎁스 (구): ${output.region_2depth_name}</p>
	<p>3뎁스 (동): ${output.region_3depth_name}</p>
	<p>회원번호: ${output.user_no}</p>
	<hr />	
	<a href="${pageContext.request.contextPath}/room/list.do">[목록보기]</a>
	<a href="${pageContext.request.contextPath}/room/add.do">[방추가]</a>
	<a href="${pageContext.request.contextPath}/room/edit.do?no=${output.no}">[방수정]</a>
	<a href="${pageContext.request.contextPath}/room/delete_ok.do?no=${output.no}">[방삭제]</a>
</body>
</html>