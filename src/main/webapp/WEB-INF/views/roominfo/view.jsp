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
	
	<p>1. 방번호(roomno): ${output1.roomno}</p>
	<p>2. 방타입(roomtype): ${output1.roomtype}</p>
	<p>3. 방이름(title): ${output1.title}</p>
	<p>4. 층수(floor): ${output1.floor}</p>
	<p>5. 면적(area): ${output1.area}</p>
	<p>6. 관리비(fee): ${output1.fee}</p>
	<p>7. 확인일자(confirmdate): ${output1.confirmdate}</p>
	<p>8. 주소(address): ${output1.address}</p>
	<p>9. 동(dong): ${output1.dong}</p>
	<p>10. 호(ho): ${output1.ho}</p>
	<p>11. 위도(latitude): ${output1.latitude}</p>
	<p>12. 경도(longitude): ${output1.longitude}</p>
	<p>13. 2뎁스(구)(region_2depth_name): ${output1.region_2depth_name}</p>
	<p>14. 3뎁스(동)(region_3depth_name): ${output1.region_3depth_name}</p>
	<p>15. 회원번호(userno): ${output1.userno}</p>
	
	
	<%-- info --%>
	
	<p>1. 관리비항목(feeitem): ${output2.feeitem}</p>
	<p>2. 주차(parking): ${output2.parking}</p>
	<p>3. 애완동물(pet): ${output2.pet}</p>
	<p>4. 엘리베이터(elevator): ${output2.elevator}</p>
	<p>5. 베란다(veranda): ${output2.veranda}</p>
	<p>6. 빌트인(builtin): ${output2.builtin}</p>
	<p>7. 옵션1(optionitem): ${output2.optionitem}</p>
	<p>8. 전세대출가능(loan): ${output2.loan}</p>
	<p>9. 공급면적(supplyarea): ${output2.supplyarea}</p>
	<p>10. 전체층수(maxfloor): ${output2.maxfloor}</p>
	<p>11. 히터(heater): ${output2.heater}</p>
	<p>12. 입주일(commingday): ${output2.commingday}</p>
	<p>13. 건물타입(buildtype): ${output2.buildtype}</p>
	<p>14. 건물타입(content): ${output2.content}</p>	
	<p>15. 방번호2(roomno): ${output2.roomno}</p>
	<hr />	
	<a href="${pageContext.request.contextPath}/roominfo/list.do">[슈퍼 목록보기]</a>
	<a href="${pageContext.request.contextPath}/roominfo/add.do">[슈퍼 방 추가]</a>
	<a href="${pageContext.request.contextPath}/roominfo/edit.do?roomno=${output1.roomno}">[슈퍼 방 수정]</a>
	<a href="${pageContext.request.contextPath}/roominfo/delete_ok.do?roomno=${output1.roomno}">[슈퍼 방 삭제]</a>
</body>
</html>