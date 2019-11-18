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
	<h1>슈퍼 방 관리</h1>
	<a href="${pageContext.request.contextPath}/roominfo/add.do">[슈퍼 방 추가]</a>
	
	<!-- 검색폼 -->
	<form method="get" action="${pageContext.request.contextPath}/roominfo/list.do">
		<label for="keyword">검색어: </label>
		<input type="search" name="keyword" id="keyword" placeholder="검색" value="${keyword}" />
		<button type="submit">검색</button>	
	</form>
	
	<hr />
	
	<!-- 조회 결과 목록 -->
	<table border="1">
		<thead>
			<tr>
				<th width="100" align="center">방번호</th>
				<th width="100" align="center">방종류</th>
				<th width="100" align="center">방이름</th>
				<th width="100" align="center">층수</th>
				<th width="100" align="center">면적</th>
				<th width="100" align="center">관리비</th>
				<th width="100" align="center">확인일자</th>
				<th width="100" align="center">주소</th>
				<th width="100" align="center">동</th>
				<th width="100" align="center">호</th>
				<th width="100" align="center">위도</th>
				<th width="100" align="center">경도</th>
				<th width="100" align="center">2뎁스(구)</th>
				<th width="100" align="center">3뎁스(동)</th>
				<th width="100" align="center">회원번호</th>
				
				<%-- info --%>
				<th width="100" align="center">관리비항목</th>
				<th width="100" align="center">주차여부</th>
				<th width="100" align="center">애완동물</th>
				<th width="100" align="center">엘리베이터</th>
				<th width="100" align="center">베란다/발코니</th>
				<th width="100" align="center">빌트인</th>
				<th width="100" align="center">옵션항목</th>
				<th width="100" align="center">전세자금대출</th>
				<th width="100" align="center">공급면적</th>
				<th width="100" align="center">건물층수</th>
				<th width="100" align="center">난방종류</th>
				<th width="100" align="center">입주일자</th>
				<th width="100" align="center">건물종류</th>
				<th width="100" align="center">상세설명</th>
				<th width="100" align="center">방 번호</th>
			</tr>
			

		</thead>
		<tbody>
			<c:choose>
				<%-- 조회결과가 없는 경우 --%>
				<c:when test="${output == null || fn:length(output) == 0}">
					<tr>
						<td colspan="29" align="center">조회결과가 없습니다.</td>
					</tr>
				</c:when>
				<%-- 조회 결과가 있는 경우 --%>
				<c:otherwise>
					<%-- 조회 결과에 따른 반복 처리 --%>
					<c:forEach var="item" items="${output}" varStatus="status">
						<%-- 출력을 위해 준비한 유저이름과 위치 --%>
						
						<%-- room --%>
						<c:set var="roomtype" value="${item.roomtype}" />
						<c:set var="title" value="${item.title}" />
						<c:set var="floor" value="${item.floor}" />
						<c:set var="area" value="${item.area}" />
						<c:set var="fee" value="${item.fee}" />
						<c:set var="confirmdate" value="${item.confirmdate}" />
						<c:set var="address" value="${item.address}" />
						<c:set var="dong" value="${item.dong}" />
						<c:set var="ho" value="${item.ho}" />
						<c:set var="latitude" value="${item.latitude}" />
						<c:set var="longitude" value="${item.longitude}" />
						<c:set var="region_2depth_name" value="${item.region_2depth_name}" />
						<c:set var="region_3depth_name" value="${item.region_3depth_name}" />
						<c:set var="user_no" value="${item.user_no}" />
						
						<%-- info --%>
						<c:set var="feeitem" value="${item.feeitem}" />
						<c:set var="parking" value="${item.parking}" />
						<c:set var="pet" value="${item.pet}" />
						<c:set var="elevator" value="${item.elevator}" />
						<c:set var="veranda" value="${item.veranda}" />
						<c:set var="builtin" value="${item.builtin}" />
						<c:set var="optionitem" value="${item.optionitem}" />
						<c:set var="loan" value="${item.loan}" />
						<c:set var="supplyarea" value="${item.supplyarea}" />
						<c:set var="maxfloor" value="${item.maxfloor}" />
						<c:set var="heater" value="${item.heater}" />
						<c:set var="commingday" value="${item.commingday}" />
						<c:set var="buildtype" value="${item.buildtype}" />
						<c:set var="content" value="${item.content}" />


						<%--검색어가 있다면? --%>
						<c:if test="${keyword != ''}">
							<%-- 검색어에 <mark> 태그를 적용하여 형광펜 효과 준비 --%>
							<c:set var="mark" value="<mark>${keyword}</mark>" />
							<%-- 출력을 위해 준비한 유저이름과 위치에서 검색어와 일치하는 단어를 형광펜 효과로 변경 --%>
							<c:set var="name" value="${fn:replace(dname, keyword, mark)}" />
							<c:set var="email" value="${fn:replace(loc, keyword, mark)}" />
							<c:set var="passwd" value="${fn:replace(loc, keyword, mark)}" />
							<c:set var="tel" value="${fn:replace(loc, keyword, mark)}" />
						</c:if>

						<%-- 상세페이지로 이동하기 위한 URL --%>
						<c:url value="/roominfo/view.do" var="viewUrl">
							<c:param name="no" value="${item.no}" />
						</c:url>

						<tr>
							<%-- room --%>
							<td align="center">${item.no}</td>
							<td align="center"><a href="${viewUrl}">${title}</a></td>
							<td align="center">${floor}</td>
							<td align="center">${area}</td>
							<td align="center">${tel}</td>
							<td align="center">${fee}</td>
							<td align="center">${confirmdate}</td>
							<td align="center">${address}</td>
							<td align="center">${dong}</td>
							<td align="center">${ho}</td>
							<td align="center">${latitude}</td>
							<td align="center">${longitude}</td>
							<td align="center">${region_2depth_name}</td>
							<td align="center">${region_3depth_name}</td>
							<td align="center">${user_no}</td>	
							
							<%-- info --%>
							<td align="center">${item.feeitem}</td>
							<td align="center">${parking}</td>
							<td align="center">${pet}</td>
							<td align="center">${elevator}</td>
							<td align="center">${veranda}</td>
							<td align="center">${builtin}</td>
							<td align="center">${optionitem}</td>
							<td align="center">${loan}</td>
							<td align="center">${supplyarea}</td>
							<td align="center">${maxfloor}</td>
							<td align="center">${heater}</td>
							<td align="center">${commingday}</td>
							<td align="center">${buildtype}</td>
							<td align="center">${content}</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	
	
	<!-- 페이지 번호 구현 -->
	<%-- 이전 그룹에 대한 링크 --%>
	<c:choose>
		<%-- 이전 그룹으로 이동 가능하다면? --%>
		<c:when test="${pageData.prevPage > 0}">
			<%-- 이동할 URL 생성 --%>
			<c:url value="/roominfo/list.do" var="prevPageUrl">
				<c:param name="page" value="${pageData.prevPage}" />
				<c:param name="keyword" value="${keyword}" />
			</c:url>
			<a href="${prevPageUrl}">[이전]</a>
		</c:when>
		<c:otherwise>
		 	[이전]
		</c:otherwise>
	</c:choose>

	<%--페이지 번호 (시작 페이지 부터 끝 페이지까지 반복 --%>
	<c:forEach var="i" begin="${pageData.startPage}" end="${pageData.endPage}" varStatus="status">
		<%-- 이동할 URL 생성 --%>
		<c:url value="/roominfo/list.do" var="pageUrl">
			<c:param name="page" value="${i}" />
			<c:param name="keyword" value="${keyword}" />
		</c:url>

		<%-- 현재 머물고 있는 페이지 번호를 출력할 경우 링크 적용 안함 --%>
		<c:choose>
			<c:when test="${pageData.nowPage == i}">
				<strong>[${i}]</strong>
			</c:when>

			<%-- 나머지 페이지의 경우 링크 적용함 --%>
			<c:otherwise>
				<a href="${pageUrl}">[${i}]</a>
			</c:otherwise>
		</c:choose>

	</c:forEach>

	<%-- 다음 그룹에 대한 링크 --%>
	<c:choose>
		<%-- 다음 그룹으로 이동 가능하다면? --%>
		<c:when test="${pageData.nextPage > 0}">
			<%-- 이동할 URL 생성 --%>
			<c:url value="/roominfo/list.do" var="nextPageUrl">
				<c:param name="page" value="${pageData.nextPage}" />
				<c:param name="keyword" value="${keyword}" />
			</c:url>
			<a href="${nextPageUrl}">[다음]</a>
		</c:when>
		<c:otherwise>
		 	[다음]
		</c:otherwise>
	</c:choose>
</body>
</html>