<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../assets/inc/meta.jsp"%>

<!-- css 참조 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/ad_css/userli.css" />

</head>  

<body>
	<!-- 브라우저에 보여질 부분 -->
	<!-- 페이지의 전체 폭을 결정하기 위한 영역 -->
	<div>
		<%@ include file="../assets/inc/ad_header.jsp"%>
		</div>
		<!-- 중앙 영역 -->
		<div class="container">
		<div id="content">
			<div>
				<h1>회원관리</h1>
				<br/>
				<a href="${pageContext.request.contextPath}/user/add.do">[유저추가]</a>
	
	<!-- 검색폼 -->
	<div class="search_form">
	<form method="get" action="${pageContext.request.contextPath}/admin/userli.do">
		<label for="keyword">검색어: </label>
		<input type="search" name="keyword" id="keyword" placeholder="유저명 or 위치 검색" value="${keyword}" />
		<button type="submit">검색</button>	
	</form>
	</div>
	
	<hr />
	
	<!-- 조회 결과 목록 -->
	<table class="table table-striped" border="1">
		<thead>
			<tr>
                <th width="100" class="text-center">회원번호</th>
                <th class="text-center">이름</th>
                <th class="text-center">이메일</th>
                <th class="text-center">비밀번호</th>
				<th class="text-center">전화번호</th>
				<th class="text-center">등록날짜</th>
				<th class="text-center">수정날짜</th>
				<th class="text-center">프로필경로</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<%-- 조회결과가 없는 경우 --%>
				<c:when test="${output == null || fn:length(output) == 0}">
					<tr>
						<td colspan="3" align="center">조회결과가 없습니다.</td>
					</tr>
				</c:when>
				<%-- 조회 결과가 있는 경우 --%>
				<c:otherwise>
					<%-- 조회 결과에 따른 반복 처리 --%>
					<c:forEach var="item" items="${output}" varStatus="status">
						<%-- 출력을 위해 준비한 유저이름과 위치 --%>
						<c:set var="name" value="${item.name}" />
						<c:set var="email" value="${item.email}" />
						<c:set var="passwd" value="${item.passwd}" />
						<c:set var="tel" value="${item.tel}" />
						<c:set var="regdate" value="${item.regdate}" />
						<c:set var="editdate" value="${item.editdate}" />
						<c:set var="profile_img" value="${item.profile_img}" />

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
						<c:url value="/user/view.do" var="viewUrl">
							<c:param name="userno" value="${item.userno}" />
						</c:url>

						<tr>
							<td align="center">${item.userno}</td>
							<td align="center"><a href="${viewUrl}">${name}</a></td>
							<td align="center">${email}</td>
							<td align="center">${passwd}</td>
							<td align="center">${tel}</td>
							<td align="center">${regdate}</td>
							<td align="center">${editdate}</td>
							<td align="center">${profile_img}</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	</div>
	
	
	<!-- 페이지 번호 구현 -->
	<%-- 이전 그룹에 대한 링크 --%>
	<c:choose>
		<%-- 이전 그룹으로 이동 가능하다면? --%>
		<c:when test="${pageData.prevPage > 0}">
			<%-- 이동할 URL 생성 --%>
			<c:url value="/admin/userli.do" var="prevPageUrl">
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
		<c:url value="/admin/userli.do" var="pageUrl">
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
			<c:url value="/admin/userli.do" var="nextPageUrl">
				<c:param name="page" value="${pageData.nextPage}" />
				<c:param name="keyword" value="${keyword}" />
			</c:url>
			<a href="${nextPageUrl}">[다음]</a>
		</c:when>
		<c:otherwise>
		 	[다음]
		</c:otherwise>
	</c:choose>
		</div>
		<!-- 하단 영역 -->
		<div id="footer"></div>
	</div>
	<!-- Javascript -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery-1.10.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function() {
			/* 체크박스 전체선택 */
			$("#all_check").change(function() {
				$(".userlist").prop('checked', $(this).prop('checked'));
			});
		});
	</script>
</body>
</html>