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
	<h1>슈퍼 방 수정</h1>
	
	<form method="post" action="${pageContext.request.contextPath}/roominfo/edit_ok.do">
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
		<div>
			<label for="feeitem">관리비항목: </label>
			<input type="text" name="feeitem" id="feeitem" value="${output.feeitem}" />
		</div>
		<div>
			<label for="parking">주차여부: </label>
			<input type="text" name="parking" id="parking" value="${output.parking}" />
		</div>
		<div>
			<label for="pet">애완동물: </label>
			<input type="text" name="pet" id="pet" value="${output.pet}" />
		</div>
		<div>
			<label for="elevator">엘리베이터: </label>
			<input type="text" name="elevator" id="elevator" value="${output.elevator}" />
		</div>
		<div>
			<label for="veranda">베란다/발코니: </label>
			<input type="text" name="veranda" id="veranda" value="${output.veranda}" />
		</div>
		<div>
			<label for="builtin">빌트인: </label>
			<input type="text" name="builtin" id="builtin" value="${output.builtin}" />
		</div>
		<div>
			<label for="optionitem">옵션항목: </label>
			<input type="text" name="optionitem" id="optionitem" value="${output.optionitem}" />
		</div>
		<div>
			<label for="loan">전세자금대출: </label>
			<input type="text" name="loan" id="loan" value="${output.loan}"/>
		</div>
		<div>
			<label for="supplyarea">공급면적: </label>
			<input type="text" name="supplyarea" id="supplyarea" value="${output.supplyarea}" />
		</div>
		<div>
			<label for="maxfloor">건물층수: </label>
			<input type="text" name="maxfloor" id="maxfloor" value="${output.maxfloor}" />
		</div>
		<div>
			<label for="heater">난방종류: </label>
			<input type="text" name="heater" id="heater" value="${output.heater}" />
		</div>
		<div>
			<label for="commingday">입주일자: </label>
			<input type="text" name="commingday" id="commingday" value="${output.commingday}" />
		</div>
		<div>
			<label for="buildtype">건물종류: </label>
			<input type="text" name="buildtype" id="buildtype" value="${output.buildtype}" />
		</div>
		<div>
			<label for="content">상세설명: </label>
			<input type="text" name="content" id="content" value="${output.content}" />
		</div>
		
		<hr />
		<button type="submit">수정하기</button>
		<button type="reset">다시작성</button>
	</form>

</body>
</html>