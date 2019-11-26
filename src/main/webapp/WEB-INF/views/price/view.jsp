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
	<h1>가격정보 테이블[price table]</h1>	
	<p>거래가격정보 번호 : ${output.priceno}</p>
	<p>방타입: ${output.dealingtype}</p>
	<p>보증금: ${output.deposit}</p>
	<p>가격: ${output.price}</p>
	<p>단기가능: ${output.short_room}</p>
	<p>방번호 : ${output.room_no}</p>
	<hr />	
	<a href="${pageContext.request.contextPath}/price/list.do">[목록보기]</a>
	<a href="${pageContext.request.contextPath}/price/add.do">[방추가]</a>
	<a href="${pageContext.request.contextPath}/price/edit.do?no=${output.no}">[방수정]</a>
	<a href="${pageContext.request.contextPath}/price/delete_ok.do?no=${output.no}">[방삭제]</a>
</body>
</html>