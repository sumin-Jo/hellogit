<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
/* ---------------------------------------
 / 하단 부분
  ---------------------------------------- */

/* footer 전체 설정 */
#footer {
	width: 100%;
	min-width: 1440px;
	height: 253px;
	background-color: rgb(255, 255, 255);
}

/* footer 내 div 내용 크기 설정 */
.footer-content {
	height: 100%;
	padding: 60px 180px;
	margin: 0px auto;
	position: relative;
	border-top: 1px solid rgb(220, 220, 220);
}

.footer-content ::after {
	display: block;
	content: "";
	clear: both;
}

/* footer div내 h1요소 조정 */
.footer-content>h1 {
	margin-bottom: 18px;
	color: rgb(136, 136, 136);
	font-size: 13px;
	font-weight: 400;
	line-height: 13px;
}

.last>li {
	float: left;
	list-style: none;
}

.last>li>a {
	color: #888888;
	font-size: 13px;
	text-decoration: none;
}

.last>li+li::before {
	content: "";
	float: left;
	height: 12px;
	margin-left: 8px;
	padding-left: 9px;
	position: relative;
	bottom: -3px;
	border-left: 1px solid rgb(211, 211, 211);
}

.last::after {
	display: block;
	content: "";
	clear: both;
}

.text>span {
	float: left;
	line-height: 13px;
}

.text {
	margin-bottom: 18px;
	color: rgb(136, 136, 136);
	font-size: 13px;
	font-weight: 400;
	line-height: 13px;
}

.text>span+span::before {
	content: "";
	float: left;
	height: 12px;
	margin-left: 8px;
	padding-left: 9px;
	border-left: 1px solid rgb(211, 211, 211);
	position: relative;
	bottom: 1px;
}

.text::after {
	display: block;
	content: "";
	clear: both;
}

/* 작은 소개글 요소 설정 */
.min_t {
	font-size: 13px;
	color: gray;
	margin-bottom: 37px;
	opacity: 0.6;
}
</style>
<div class="footer-content">
	<h1>이젠 아카데미 학원 파이썬 기반 빅데이터 분석 1조</h1>
	<p class="text">
		<span>팀원 : 조수민, 김기홍, 이명섭, 김상태, 박지원, 김수진</span> <span>주소: 서울특별시
			서초구 서초대로 77길 54 서초 더블유 타워13층</span>
	</p>
	<p class="text">
		<span>고객센터:02-532-6500</span> <span>프로모션/사업
			제휴문의:narabyeol@gmail.com</span> <span>사업자 번호:220-88-59156</span> <span>통신판매업신고번호:제2019-서울
			강남-02112호</span>
	</p>
	<p class="min_t">사이트에 대한 문의사항은 aaa@gmail.com으로 부탁드립니다.</p>

	<ul class="last">
		<li><a target="_blank" rel="noopener noreferrer" href="" class="">회사소개</a></li>
		<li><a target="_blank" rel="noopener noreferrer" class=""
			href="/term/9">이용약관</a></li>
		<li><a target="_blank" rel="noopener noreferrer" class=""
			href="/term/10">개인정보처리방침</a></li>
		<li><a target="_blank" rel="noopener noreferrer" class=""
			href="<%=request.getContextPath()%>/admin/ad_login.jsp">관리자페이지</a></li>
	</ul>
</div>