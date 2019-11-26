<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form name="form" method="get"
		action="${pageContext.request.contextPath}/retrofit/kakao.do">
		<label for="query">검색</label> <input type="text" id="query" name="query" value="${query}" /> 
		<input type="submit" value="검색" />
	</form>

	<table border="1">
		<thead>
			<tr>
				<th width="100" align="center">region_2depth_name</th>
				<th width="100" align="center">region_3depth_name</th>
				<th width="100" align="center">x좌표 longitude</th>
				<th width="100" align="center">y좌표 latitude</th>
				<th width="100" align="center">도로명주소</th>
			</tr>

		</thead>
		<tbody>
			<c:choose>
				<%-- 조회결과가 없는 경우 --%>
				<c:when test="${address == null}">
					<tr>
						<td colspan="5" align="center">조회결과가 없습니다.</td>
					</tr>
				</c:when>
				<%-- 조회 결과가 있는 경우 --%>
				<c:otherwise>
					<%-- 조회 결과에 따른 반복 처리 --%>
					<c:forEach var="item" items="${address.documents}" varStatus="status">
						<%-- 출력을 위해 준비한 이름과 위치 --%>
						<c:set var="address_name" value="${item.road_address.address_name}" />						
						<c:set var="region_2depth_name" value="${item.road_address.region_2depth_name}" />
						<c:set var="region_3depth_name" value="${item.road_address.region_3depth_name}" />
						<c:set var="x" value="${item.road_address.x}" />
						<c:set var="y" value="${item.road_address.y}" />

						<tr>
							<td align="center">${address_name}</td>
							<td align="center">${region_2depth_name}</td>
							<td align="center">${region_3depth_name}</td>
							<td align="center">${x}</td>
							<td align="center">${y}</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>

</body>
</html>