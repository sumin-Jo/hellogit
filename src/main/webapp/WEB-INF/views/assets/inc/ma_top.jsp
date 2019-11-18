<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<head>
<style>

/*---------------------------------
|	header * css
----------------------------------*/

/* 브라우저 최소 넓이 지정 */
.header {
	min-width: 1366px;
}

/* 메뉴바 크기, 여백, 테두리 */
#header .navbar {
	height: 70px;
	padding: 0 30px;
	border: 0;
	border-bottom: 1px solid #eee;
	margin: 0;
}

/* 로고 이미지 크기, 위치 설정 */
#header .navbar img {
	height: 45px;
	margin: 8px 0 12px 0;
}

/* 방주인사이트 여백 설정 */
#header .menu-left {
	display: inline-block;
	margin-left: 20px;
}

/* 메뉴 세로 가운데 정렬 */
#header a {
	display: inline-block;
	line-height: 70px;
	font-size: 15px;
	color: #222;
}

/* 방주인사이트, 회원가입로그인 글씨 크기 및 색상 설정 */
#header .small-font a {
	font-size: 13px;
	color: #777;
}

.small-font {
	color: #eee;
}

/* 메뉴에 마우스오버 시 색 변경 설정 */
#header a:hover {
	color: rgb(21, 100, 249);
}

/* 각 메뉴들 간 여백 설정 */
.padding-l {
	margin-left: 35px;
}

/* 메뉴 우측 정렬 */
#header .pull-right div {
	display: inline-block;
}

#con {
	height: 800px;
}
</style>
</head>

<!---------------------------------
|	header * body
---------------------------------->
<!-- 상단 헤더 -->
<div id="header">
	<div class="navbar" role="navigation">
		<a href="${pageContext.request.contextPath}">
			<img src="${pageContext.request.contextPath}/assets/ico/logo_blue.png">
		</a>
		<div class="menu-left small-font">
			<a href="${pageContext.request.contextPath}/host/main.do">방주인 사이트</a>
			<span>&nbsp | &nbsp </span>
			<a href="${pageContext.request.contextPath}/admin/main.do">관리자 사이트</a>
			<span>&nbsp | &nbsp </span>
			<a href="${pageContext.request.contextPath}/user/list.do"> user db</a>
			<span>&nbsp | &nbsp </span>
			<a href="${pageContext.request.contextPath}/room/list.do"> room db</a>
			<span>&nbsp | &nbsp </span>
			<a href="${pageContext.request.contextPath}/info/list.do"> info db</a>
		</div>
		<!-- 메뉴 항목 -->
		<div class="pull-right">
			<div>
				<a href="${pageContext.request.contextPath}/main/search.do">방찾기</a> 
				<a href="${pageContext.request.contextPath}/main/rtrm.do" class="padding-l">관심목록</a> 
				<a href="${pageContext.request.contextPath}/main/faq.do" class="padding-l">문의하기</a>
				<a href="${pageContext.request.contextPath}/main/pprm.do" class="padding-l">인기매물</a>
			</div>
			<div class="small-font">
				<a href="${pageContext.request.contextPath}/modal/login.do" class="padding-l" data-toggle="modal" data-target="#loginModal">회원가입 · 로그인</a>
			</div>
		</div>
	</div>
</div>

<!-- 로그인용 모달 로더 -->
<div class="modal fade" id="loginModal">
	<div class="modal-dialog modal-sm">
		<div class="modal-content"></div>
	</div>
</div>

<!-- 비밀번호 찾기용 모달 로더 -->
<div class="modal fade" id="passwdModal">
	<div class="modal-dialog modal-sm">
		<div class="modal-content"></div>
	</div>
</div>

<!-- 동의하기용 모달 로더 -->
<div class="modal fade" id="agreeModal">
	<div class="modal-dialog modal-sm">
		<div class="modal-content"></div>
	</div>
</div>

<!-- 회원가입용 모달 로더 -->
<div class="modal fade" id="joinModal">
	<div class="modal-dialog modal-sm">
		<div class="modal-content"></div>
	</div>
</div>