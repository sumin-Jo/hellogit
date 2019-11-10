<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>별방 관리자 메인 페이지</title>
<%@ include file="../assets/inc/meta.jsp"%>
<!-- CSS적용 -->
<link rel="stylesheet" type="text/css" href="ad_assets/ad_main.css">
<style type="text/css">
</style>
</head>

<body>
	<!-- 브라우저에 보여질 부분 -->
	<div id="ad_main">
		<!-- 상단 헤더 -->
		<div id="header">
			<div class="title">
				<img src="../assets/ico/logo_blue.png"></img>
				<p>별방 관리자 사이트</p>
			</div>
		</div>

		<!-- 중앙 영역 -->
		<div id="content">
			<div class="box1">
				<!--부트스트랩 버튼 요소 적용-->
				<a class="btn btn-primary btn-lg" href="ad_rmli.jsp" role="button">방관리</a>
				<a class="btn btn-primary btn-lg" href="ad_userli.jsp" role="button">회원관리</a>
				<!-- 부트스트랩 드롭다운 요소 적용을 위한 선언-->
				<div class="dropdown">
					<a id="dLabel" data-target="#" href="ad_edit.jsp"
						data-toggle="dropdown" aria-haspopup="true" role="button"
						aria-expanded="false"><span>문의관리 <span class="caret"></span>
					</span></a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
						<li><a href="ad_faq.jsp">자주묻는질문</a></li>
						<li class="divider"></li>
						<li><a href="ad_notice.jsp">공지사항</a></li>
						<!--<li><a href="#">리스트3</a></li>-->
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 하단 영역 -->
	<div id="footer"></div>

	<!-- Javascript -->
	<script src="../assets/js/jquery-1.10.2.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
</body>

</html>