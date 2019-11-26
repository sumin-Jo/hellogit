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
	<h1>가격정보 관리[price table]</h1>
	<a href="${pageContext.request.contextPath}/price/add.do">[가격정보 추가]</a>
	
	<!-- 검색폼 -->
	<form method="get" action="${pageContext.request.contextPath}/price/list.do">
		<label for="keyword">검색어: </label>
		<input type="search" name="keyword" id="keyword" placeholder="매물종류 or 단기가능 검색하기" value="${keyword}" />
		<button type="submit">검색</button>	
	</form>
	
	<hr />
	
	<!-- 조회 결과 목록 -->
	<table border="1">
		<thead>
			<tr>
				<th width="100" align="center">거래가격정보 번호</th>
				<th width="100" align="center">매물종류</th>
				<th width="100" align="center">보증금</th>
				<th width="100" align="center">가격</th>
				<th width="100" align="center">단기가능</th>
				<th width="100" align="center">방번호</th>
			</tr>
			

		</thead>
		<tbody>
			<c:choose>
				<%-- 조회결과가 없는 경우 --%>
				<c:when test="${output == null || fn:length(output) == 0}">
					<tr>
						<td colspan="6" align="center">조회결과가 없습니다.</td>
					</tr>
				</c:when>
				<%-- 조회 결과가 있는 경우 --%>
				<c:otherwise>
					<%-- 조회 결과에 따른 반복 처리 --%>
					<c:forEach var="item" items="${output}" varStatus="status">
						<%-- 출력을 위해 준비한 유저이름과 위치 --%>
						<c:set var="dealingtype" value="${item.dealingtype}" />
						<c:set var="deposit" value="${item.deposit}" />
						<c:set var="price" value="${item.price}" />
						<c:set var="short_room" value="${item.short_room}" />
						<c:set var="room_no" value="${item.room_no}" />


						<%--검색어가 있다면? --%>
						<c:if test="${keyword != ''}">
							<%-- 검색어에 <mark> 태그를 적용하여 형광펜 효과 준비 --%>
							<c:set var="mark" value="<mark>${keyword}</mark>" />
							<%-- 출력을 위해 준비한 유저이름과 위치에서 검색어와 일치하는 단어를 형광펜 효과로 변경 --%>
							<c:set var="dealingtype" value="${fn:replace(dealingtype, keyword, mark)}" />
							<c:set var="short_room" value="${fn:replace(short_room, keyword, mark)}" />
						</c:if>

						<%-- 상세페이지로 이동하기 위한 URL --%>
						<c:url value="/price/view.do" var="viewUrl">
							<c:param name="no" value="${item.no}" />
						</c:url>

						<tr>
							<td align="center">${item.no}</td>
							<td align="center"><a href="${viewUrl}">${dealingtype}</a></td>
							<td align="center">${deposit}</td>
							<td align="center">${price}</td>
							<td align="center">${short_room}</td>
							<td align="center">${room_no}</td>
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
			<c:url value="/price/list.do" var="prevPageUrl">
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
		<c:url value="/price/list.do" var="pageUrl">
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
			<c:url value="/price/list.do" var="nextPageUrl">
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