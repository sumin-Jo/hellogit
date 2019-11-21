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
	<h1>슈퍼 방 추가</h1>
	<form method="post" action="${pageContext.request.contextPath}/roominfo/add_ok.do">
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
		<div>
			<label for="feeitem">관리비항목: </label>
			<input type="text" name="feeitem" id="feeitem" />
		</div>
		<div>
			<label for="parking">주차여부: </label>
			<input type="text" name="parking" id="parking" />
		</div>
		<div>
			<label for="pet">애완동물: </label>
			<input type="text" name="pet" id="pet" />
		</div>
		<div>
			<label for="elevator">엘리베이터: </label>
			<input type="text" name="elevator" id="elevator" />
		</div>
		<div>
			<label for="veranda">베란다/발코니: </label>
			<input type="text" name="veranda" id="veranda" />
		</div>
		<div>
			<label for="builtin">빌트인: </label>
			<input type="text" name="builtin" id="builtin" />
		</div>
		<div>
			<label for="optionitem">옵션항목: </label>
			<input type="text" name="optionitem" id="optionitem" />
		</div>
		<div>
			<label for="loan">전세자금대출: </label>
			<input type="text" name="loan" id="loan" />
		</div>
		<div>
			<label for="supplyarea">공급면적: </label>
			<input type="text" name="supplyarea" id="supplyarea" />
		</div>
		<div>
			<label for="maxfloor">건물층수: </label>
			<input type="text" name="maxfloor" id="maxfloor" />
		</div>
		<div>
			<label for="heater">난방종류: </label>
			<input type="text" name="heater" id="heater" />
		</div>
		<div>
			<label for="commingday">입주일자(날짜를입력하세요): </label>
			<input type="text" name="commingday" id="commingday" />
		</div>
		<div>
			<label for="buildtype">건물종류: </label>
			<input type="text" name="buildtype" id="buildtype" />
		</div>
		<div>
			<label for="content">상세설명: </label>
			<input type="text" name="content" id="content" />
		</div>
		<!-- <div>
			<label for="room_no">방 번호: </label>
			<input type="hidden" name="room_no" id="room_no" value="no" />
		</div> -->
		<hr />
		<button type="submit">저장하기</button>
		<button type="reset">다시작성</button>
	</form>

</body>
</html>