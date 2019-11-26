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
	<h1>방추가</h1>
	<form method="post" action="${pageContext.request.contextPath}/room/add_ok.do">
		<div>
			<label for="roomtype">방타입: </label>
			<input type="text" name="roomtype" id="roomtype" />
		</div>
		<div>
			<label for="title">방이름: </label>
			<input type="text" name="title" id="title" />
		</div>
		<div>
			<label for="floor">층수: </label>
			<input type="text" name="floor" id="floor" />
		</div>
		<div>
			<label for="area">면적: </label>
			<input type="text" name="area" id="area" />
		</div>
		<div>
			<label for="fee">관리비: </label>
			<input type="text" name="fee" id="fee" />
		</div>
		<div>
			<label for="confirmdate">확인일자: </label>
			<input type="text" name="confirmdate" id="confirmdate" />
		</div>
		<div>
			<label for="address">주소: </label>
			<input type="text" name="address" id="address" />
		</div>
		<div>
			<label for="dong">동: </label>
			<input type="text" name="dong" id="dong" />
		</div>
		<div>
			<label for="ho">호: </label>
			<input type="text" name="ho" id="ho" />
		</div>
		<div>
			<label for="latitude">위도: </label>
			<input type="text" name="latitude" id="latitude" />
		</div>
		<div>
			<label for="longitude">경도: </label>
			<input type="text" name="longitude" id="longitude" />
		</div>
		<div>
			<label for="region_2depth_name">2뎁스(구): </label>
			<input type="text" name="region_2depth_name" id="region_2depth_name" />
		</div>
		<div>
			<label for="region_3depth_name">3뎁스(동): </label>
			<input type="text" name="region_3depth_name" id="region_3depth_name" />
		</div>
		<div>
			<label for="userno">회원정보: </label>
			<input type="text" name="userno" id="userno" />
		</div>
		<hr />
		<button type="submit">저장하기</button>
		<button type="reset">다시작성</button>
	</form>

</body>
</html>