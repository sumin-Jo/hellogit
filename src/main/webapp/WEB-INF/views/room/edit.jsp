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
	<h1>학과수정</h1>
	
	<form method="post" action="${pageContext.request.contextPath}/info/edit_ok.do">
	<%-- action 페이지에서 사용할 WHERE 조건값을 hidden필드로 숨겨서 전송한다. --%>
		<input type="hidden" name="no" value="${output.no}" />
		
		<div>
			<label for="roomtype">방타입: </label>
			<input type="text" name="roomtype" id="roomtype" value="${output.roomtype}" />
		</div>
		<div>
			<label for="title">방이름: </label>
			<input type="text" name="title" id="title" value="${output.title}" />
		</div>
		<div>
			<label for="floor">층수: </label>
			<input type="text" name="floor" id="floor" value="${output.floor}" />
		</div>
		<div>
			<label for="area">면적: </label>
			<input type="text" name="area" id="area" value="${output.area}" />
		</div>
		<div>
			<label for="fee">관리비: </label>
			<input type="text" name="fee" id="fee" value="${output.fee}" />
		</div>
		<div>
			<label for="address">주소: </label>
			<input type="text" name="address" id="address" value="${output.address}" />
		</div>
		<div>
			<label for="dong">동: </label>
			<input type="text" name="dong" id="dong" value="${output.dong}" />
		</div>
		<div>
			<label for="ho">호: </label>
			<input type="text" name="ho" id="ho" value="${output.ho}" />
		</div>
		<div>
			<label for="latitude">위도: </label>
			<input type="text" name="latitude" id="latitude" value="${output.latitude}" />
		</div>
		<div>
			<label for="longitude">경도: </label>
			<input type="text" name="longitude" id="longitude" value="${output.longitude}" />
		</div>
		<div>
			<label for="region_2depth_name">2뎁스(구): </label>
			<input type="text" name="region_2depth_name" id="region_2depth_name" value="${output.region_2depth_name}" />
		</div>
		<div>
			<label for="region_3depth_name">3뎁스(동): </label>
			<input type="text" name="region_3depth_name" id="region_3depth_name" value="${output.region_3depth_name}" />
		</div>
		<div>
			<label for="user_no">회원번호: </label>
			<input type="text" name="user_no" id="user_no" value="${output.user_no}" />
		</div>
		<hr />
		<button type="submit">수정하기</button>
		<button type="reset">다시작성</button>
	</form>

</body>
</html>