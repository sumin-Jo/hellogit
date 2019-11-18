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
		<input type="hidden" name="room_no" value="${output.room_no}" />
		
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