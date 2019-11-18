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
	<p>방타입: ${output.feeitem}</p>
	<p>방이름: ${output.parking}</p>
	<p>층수: ${output.pet}</p>
	<p>면적: ${output.elevator}</p>
	<p>관리비: ${output.veranda}</p>
	<p>확인일자: ${output.builtin}</p>
	<p>주소: ${output.optionitem}</p>
	<p>동: ${output.loan}</p>
	<p>호: ${output.supplyarea}</p>
	<p>위도: ${output.maxfloor}</p>
	<p>경도: ${output.heater}</p>
	<p>2뎁스(구): ${output.commingday}</p>
	<p>3뎁스(동): ${output.buildtype}</p>
	<p>회원번호: ${output.room_no}</p>
	<hr />	
	<a href="${pageContext.request.contextPath}/info/list.do">[방정보 목록보기]</a>
	<a href="${pageContext.request.contextPath}/info/add.do">[방정보 추가]</a>
	<a href="${pageContext.request.contextPath}/info/edit.do?room_no=${output.room_no}">[방정보 수정]</a>
	<a href="${pageContext.request.contextPath}/info/delete_ok.do?room_no=${output.room_no}">[방정보 삭제]</a>
</body>
</html>