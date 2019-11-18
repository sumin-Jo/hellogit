<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<head>
<style>
/*------------------------------
/	footer
----------------------------------*/
/* 푸터 전체 색상, 크기 지정 */
#footer {
	height: 250px;
	background-color: #373737;
}

/* 내용 넓이 설정 */
#footer-content {
	width: 1180px;
	margin: auto;
}

/* 푸터 상단영역 높이, 테두리 지정 */
#top {
	height: 70px;
	border-bottom: 1px solid rgb(69, 69, 69);
}

#top a {
	font-size: 13px;
	color: rgb(144, 144, 144);
	display: inline-block;
}

#top h1 {
	font-size: 13px;
	color: rgb(144, 144, 144);
	display: inline-block;
}

#top span {
	font-size: 13px;
	color: rgb(144, 144, 144);
	display: inline-block;
}

#top .footer-top-left {
	line-height: 70px;
}

#top .footer-top-left a {
	display: inline;
	padding: 0 15px;
	color: #aaa;
	border-left: 1px solid rgb(102, 102, 102);
}

#top .footer-top-left a:first-child {
	padding: 0 15px 0 0;
	border: none;
}

#top form {
	/*width: 282px;*/
	height: 100%;
	display: inline-block;
	border-left: 1px solid rgb(69, 69, 69);
	padding-left: 20px;
	line-height: 69px;
}

#top form input {
	display: inline-block;
	margin: 0;
	border: none;
	border-bottom: 1px solid rgb(69, 69, 69);
	padding: 0;
	background-color: #373737;
}

#top form button {
	display: inline-block;
	margin: 0;
	border: none;
	border-bottom: 1px solid rgb(69, 69, 69);
	padding: 0;
	background-color: #373737;
}

#top form input {
	width: 170px;
	padding-left: 20px;
	font-size: 13px;
	color: rgb(238, 238, 238);
}

#top form input:focus {
	outline: none;
}

#top form button {
	width: 50px;
}

#top .top-btn {
	/*display: inline-block;*/
	width: 70px;
	height: 100%;
	line-height: 70px;
	cursor: pointer;
	border: 1px solid rgb(69, 69, 69);
	border-top: none;
}

#top .top-btn::before {
	content: "";
	display: block;
	width: 0;
	height: 0;
	margin: 14px auto 0px;
	border-top: 7px solid transparent;
	border-right: 5px solid transparent;
	border-bottom: 7px solid rgb(210, 214, 218);
	border-left: 5px solid transparent;
}

#top .top-btn::after {
	content: "TOP";
	display: block;
	margin-top: -20px;
	color: rgb(210, 214, 218);
	font-size: 11px;
	font-weight: 300;
	text-align: center;
}

#top .glyphicon {
	color: rgb(210, 214, 218);
}

#ftbottom {
	padding-top: 10px;
}

#buttom p {
	text-align: left;
	font-size: 12px;
	color: rgb(144, 144, 144);
	display: block;
}

#ftbottom .team {
	font-size: 12px;
	line-height: 18px;
	font-weight: 700;
	margin-bottom: 12px;
	color: rgb(144, 144, 144);
}

#ftbottom .greyfont {
	padding-top: 7px;
	margin-left: 10px;
	font-size: 12px;
	color: rgb(144, 144, 144);
}

.copyright {
	display: inline-block;
	margin-top: 16px;
	color: rgb(133, 133, 133);
	font-size: 12px
}

.text {
	color: rgb(144, 144, 144);
	font-size: 12px;
	line-height: 18px;
}

/* span {
	color: rgb(144, 144, 144)
} */

.text>span+span {
	margin-left: 10px;
}
</style>
</head>



<!-- 하단 영역 -->
<div id="footer">
	<div id="footer-content">
		<div id="top">
			<div class="pull-left footer-top-left">
				<a href="#">팀 소개</a> <a href="#">이용약관</a> <a href="#">개인정보처리방침</a> <a
					href="#">매물관리규정</a> <a href="#">허위매물규정</a> <a href="#">자동저장서비스</a>
			</div>
			<div class="top-btn pull-right"></div>
			<form class="pull-right">
				<label for="search-num">
					<h1>매물번호 조회</h1>
					<input id="search-num" type="text" name="keyword">
				</label>
				<button>
					<i class="glyphicon glyphicon-search"></i>
				</button>
			</form>
		</div>
		<div id="ftbottom">
			<p class="team">파이썬기반 빅데이터반 1조</p>
			<p class="text">
				<span>팀원 : 조수민, 김기홍, 이명섭, 김상태, 박지원, 김수진</span> <span>주소
					:서울특별시 서초구 서초대로77길 55 에이프로스퀘어 3층</span>
			</p>
			<p class="text">
				<span>고객센터: 02-532-6509</span> <span>문의하기 : narabyeol@gmail.com</span>
			</p>
			<p class="text">
				<span>사업자번호: 220-88-59156</span> <span>통신판매업신고번호 : 제2013-서울 강남-02884호</span> <span>프로모션/사업 제휴문의
					: narabyeol@gmail.com</span>
			</p>
			<p class="copyright">Station3, Inc. All rights reserved.</p>
		</div>
	</div>
</div>

