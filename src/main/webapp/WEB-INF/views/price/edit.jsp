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
	<h1>[거래가격정보 수정]</h1>
	
	<form method="post" action="${pageContext.request.contextPath}/price/edit_ok.do">
	<%-- action 페이지에서 사용할 WHERE 조건값을 hidden필드로 숨겨서 전송한다. --%>
		<input type="hidden" name="no" value="${output.no}" />
		
		<div>
			<label for="dealingtype">거래종류: </label>
			<input type="text" name="dealingtype" id="dealingtype" value="${output.dealingtype}" />
		</div>
		<div>
			<label for="deposit">보증금: </label>
			<input type="text" name="deposit" id="deposit" value="${output.deposit}" />
		</div>
		<div>
			<label for="price">가격: </label>
			<input type="text" name="price" id="price" value="${output.price}" />
		</div>
		<div>
			<label for="short_room">단기가능: </label>
			<input type="text" name="short_room" id="short_room" value="${output.short_room}" />
		</div>
		<div>
			<label for="room_no">방 번호: </label>
			<input type="text" name="room_no" id="room_no" value="${output.room_no}" />
		</div>
		<hr />
		<button type="submit">수정하기</button>
		<button type="reset">다시작성</button>
	</form>

</body>
</html>