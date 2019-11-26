<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	
<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<title>Hello JSP</title>
</head>
<body>
    <!-- 1) 제목과 검색 폼 -->
    <h1>카카오 책 검색</h1>

    <form name="form1" method="get"
        action="<%=request.getContextPath()%>/retrofit/kakao_book_search.do">
        <label for="query">검색어: </label>
        <input type="search" id="query" name="query" value="${ query }" />
        <input type="submit" value="검색" />
    </form>
    
    
    <table border="1">
		<thead>
			<tr>								
				<th width="150" align="center">이미지</th>
				<th width="200" align="center">타이틀</th>
				<th width="100" align="center">정가</th>
				<th width="100" align="center">판매가</th>
				<th width="100" align="center">저자</th>
				<th width="100" align="center">출판사</th>
			</tr>

		</thead>
		<tbody>
			<c:choose>
				<%-- 조회결과가 없는 경우 --%>
				<c:when test="${book == null}">
					<tr>
						<td colspan="6" align="center">조회결과가 없습니다.</td>
					</tr>
				</c:when>
				<%-- 조회 결과가 있는 경우 --%>
				<c:otherwise>
					<%-- 조회 결과에 따른 반복 처리 --%>
					<c:forEach var="item" items="${book.documents}" varStatus="status">
						
						<%-- 출력을 위해 준비한 이름과 위치 --%>
						<c:set var="thumbnail" value="${item.thumbnail}" />
						<c:set var="title" value="${item.title}" />
						<c:set var="price" value="${item.price}" />
						<c:set var="saleprice" value="${item.saleprice}" />
						<c:set var="authors" value="${item.authors}" />
						<c:set var="publisher" value="${item.publisher}" />

						<tr>
							<td align="center"><img src="${thumbnail}"></td>
							<td align="center"><a href="${viewUrl}">${title}</a></td>
							<td align="center">${price}</td>
							<td align="center">${saleprice}</td>
							<td align="center">${authors}</td>
							<td align="center">${publisher}</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
    
</body>
</html>
