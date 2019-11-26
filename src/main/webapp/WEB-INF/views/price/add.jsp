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
	<h1>[거래가격정보 추가]</h1>
	<form method="post" action="${pageContext.request.contextPath}/price/add_ok.do">
		<div>
			<label for="dealingtype">거래종류: </label>
			<input type="text" name="dealingtype" id="dealingtype" />
		</div>
		<div>
			<label for="deposit">보증금: </label>
			<input type="text" name="deposit" id="deposit" />
		</div>
		<div>
			<label for="price">가격: </label>
			<input type="text" name="price" id="price" />
		</div>
		<div>
			<label for="short_room">단기가능: </label>
			<input type="text" name="short_room" id="short_room" />
		</div>
		<div>
			<label for="room_no">방번호: </label>
			<select name="room_no" id="room_no">
			<%-- 조회 결과에 대한 반복처리 --%>
			<c:forEach  var="item" items="${output}" varStatus="status">
			<option value="${item.no}">${item.no}</option>
			</c:forEach>
			</select>
		</div>
		
		<hr />
		<button type="submit">저장하기</button>
		<button type="reset">다시작성</button>
	</form>

</body>
</html>