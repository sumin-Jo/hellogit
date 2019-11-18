<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<style>
/* 브라우저 최소 넓이 지정 */
body {
	min-width: 1366px;
}

/* 텍스트 기본 설정 */
#header * {
	color: #ffffff;
}

/*------------------------------
/	header
----------------------------------*/
/* 헤더 배경 색 지정 */
#header {
	background-color: rgb(81, 136, 244);
}

/* 메뉴바 크기, 여백, 테두리 */
#header .navbar {
	height: 70px;
	padding: 0 30px;
	border: 0;
	/*border-bottom: 1px solid #eee;*/
}

/* 로고 이미지 크기, 위치 설정 */
#header .navbar img {
	height: 45px;
	margin: 8px 0 12px 0;
}

/* 회원 사이트 여백 설정 */
#header .menu-left {
	display: inline-block;
	margin-left: 20px;
}

/* 메뉴 세로 가운데 정렬 */
#header a {
	display: inline-block;
	line-height: 70px;
}

/* 방주인사이트, 회원가입로그인 글씨 크기 및 색상 설정 */
#header .small-font a {
	font-size: 13px;
	color: #ffffff;
}
/* 메뉴에 마우스오버 시 색 변경 설정 */
.navbar a:hover {
	color: black;
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

#sidefont {
	color: black;
	font-size: 13px;
	text-align: center;
}

.dropdown-menu {
	min-width: 120px;
	font-size: 9px;
}

.dropdown-menu>li {
	text-align: center;
}
</style>
</head>
<!-- 상단 헤더 -->
<div id="header">
	<div class="navbar" role="navigation">
		<a href="${pageContext.request.contextPath}">
			<img src="${pageContext.request.contextPath}/assets/ico/logo_white.png">
		</a>
		<div class="menu-left small-font">
			<a href="${pageContext.request.contextPath}">회원 사이트</a>
		</div>
		<!-- 메뉴 항목 -->
		<div class="pull-right">
			<div>
				<a href="${pageContext.request.contextPath}/admin/userli.do" class="padding-l">회원관리</a> <a
					href="${pageContext.request.contextPath}/admin/rmli.do" class="padding-l">방관리</a>
				<div class="dropdown">
					<a href="${pageContext.request.contextPath}/admin/faq.do" data-toggle="dropdown" class="padding-l">문의관리</a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
						<li><a id="sidefont" href="${pageContext.request.contextPath}/admin/faq.do">자주묻는질문</a></li>
						<li><a id="sidefont" href="${pageContext.request.contextPath}/admin/notice.do">공지사항</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>