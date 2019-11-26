<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>


<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<title>Hello JSP</title>
</head>
<body>
    <!-- 1) 파라미터로 전달받은 검색일을 사용하여 제목 지정 -->
    <h1> ${targetDt} 박스오피스</h1>

    <!-- 2) 검색폼 구성 -->
    <form name="form1" method="get"
            action="<%=request.getContextPath()%>/retrofit/daily_box_office.do">
        <label for="date">검색일: </label>
        <input type="date" id="date" name="date" value="${date}" />
        <input type="submit" value="검색" />
    </form>

    
    
    <table border="1">
		<thead>
			<tr>								
				<th width="150" align="center">순위</th>
				<th width="200" align="center">제목</th>
				<th width="100" align="center">개봉일</th>
				<th width="100" align="center">누적매출액</th>
				<th width="100" align="center">오늘관객수</th>
				<th width="100" align="center">누적관객수</th>
			</tr>

		</thead>
		<tbody>
			<c:choose>
				<%-- 조회결과가 없는 경우 --%>
				<c:when test="${list == null}">
					<tr>
						<td colspan="6" align="center">조회결과가 없습니다.</td>
					</tr>
				</c:when>
				<%-- 조회 결과가 있는 경우 --%>
				<c:otherwise>
					<%-- 조회 결과에 따른 반복 처리 --%>
					<c:forEach var="item" items="${list}" varStatus="status">
						
						<%-- 출력을 위해 준비한 이름과 위치 --%>
						<c:set var="rank" value="${item.rank}" />
						<c:set var="movieNm" value="${item.movieNm}" />
						<c:set var="openDt" value="${item.openDt}" />
						<c:set var="salesAcc" value="${item.salesAcc}" />
						<c:set var="auditCnt" value="${item.audiCnt}" />
						<c:set var="auditAcc" value="${item.audiAcc}" />

						<tr>	
							<td align="center">${rank}"</td>
							<td align="center">${movieNm}</td>
							<td align="center">${openDt}</td>
							<td align="center">${salesAcc}</td>
							<td align="center">${auditCnt}</td>
							<td align="center">${auditAcc}</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
</body>
</html>
