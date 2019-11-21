<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../assets/inc/meta.jsp"%>

<!-- css 참조 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/ad_css/rmli.css" />

</head>

<body>
	<!-- 브라우저에 보여질 부분 -->
	<!-- 페이지의 전체 폭을 결정하기 위한 영역 -->
	<div>
		<%@ include file="../assets/inc/ad_header.jsp"%>
		<!-- 중앙 영역 -->
		<div id="content">
			<div>
				<div class="adm-header">
					<h1>방관리</h1>
					<div class="adm">
						<div class="input-group">
							<span class="input-group-addon"> <span
								class="glyphicon glyphicon-search"></span>
							</span> <input type="text" class="form-control" /> <span
								class="input-group-btn">
								<button class="btn btn-default" type="submit">검색</button>
							</span>
						</div>
						<br>
						<div class="box">
							<div class="adm-radio">
								<label><input type='radio' name='' value="html">
									확인매물</label> <label><input type='radio' name='' value="html">
									허위매물</label>
							</div>
							<div class="adm-btn">
								<input type="button" name="" class="btn btn-default"
									value="확인매물"> <input type="button" name=""
									class="btn btn-default" value="방 숨기기"> <input
									type="button" name="" class="btn btn-default" value="방 삭제">
								<input type="button" name="" class="btn btn-primary"
									value="회원탈퇴">
							</div>
						</div>
					</div>
				</div>
				<!-- 조회 결과 목록 -->
				<table class="table table-striped">
					<thead>
						<tr>
							<th class="text-center"><input type="checkbox"
								id="all_check"></th>
							<th class="text-center">방 번호</th>
							<th class="text-center">방 종류</th>
							<th class="text-center">매물 종류</th>
							<th class="text-center">가격대</th>
							<th class="text-center">관리비</th>
							<th class="text-center">방 크기</th>
							<th class="text-center">방 주인</th>
							<th class="text-center">확인매물</th>
							<th class="text-center">허위매물신고건수</th>
							<th class="text-center">숨김여부</th>
						</tr>
					</thead>
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
								<c:set var="roomtype" value="${item.roomtype}" />
								<c:set var="title" value="${item.title}" />
								<c:set var="floor" value="${item.floor}" />
								<c:set var="area" value="${item.area}" />
								<c:set var="fee" value="${item.fee}" />
								<c:set var="confirmdate" value="${item.confirmdate}" />
								<c:set var="address" value="${item.address}" />

								<tr>
									<td class="text-center"><input type="checkbox"
										class="roomlist"></td>
									<td align="center">${item.roomno}</td>
									<td align="center">${item.roomtype}</td>
									<td align="center"><a href="${viewUrl}">${title}</a></td>
									<td align="center">${floor}</td>
									<td align="center">${area}</td>
									<td align="center">${fee}</td>
									<td align="center">${confirmdate}</td>
									<td align="center">${address}</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					</tbody>
				</table>
			</div>
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
				$(".roomlist").prop('checked', $(this).prop('checked'));
			});
		});
	</script>
</body>
</html>