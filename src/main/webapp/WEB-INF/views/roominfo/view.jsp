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
	
	<%-- room --%>
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
	
	<%-- info --%>
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
	<a href="${pageContext.request.contextPath}/roominfo/list.do">[슈퍼 목록보기]</a>
	<a href="${pageContext.request.contextPath}/roominfo/add.do">[슈퍼 방 추가]</a>
	<a href="${pageContext.request.contextPath}/roominfo/edit.do?no=${output.no}">[슈퍼 방 수정]</a>
	<a href="${pageContext.request.contextPath}/roominfo/delete_ok.do?no=${output.no}">[슈퍼 방 삭제]</a>
</body>
</html>