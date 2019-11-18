<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<head>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/modal_css/pwd.css">
</head>

<!-- .modal-content 여기가 나오는부분 -->
		<!-- 전체박스 -->
		<div class="modal-content findpwd-div">
			
			<!-- 닫기버튼 -->
			<button class="close-button" data-dismiss="modal">
				<svg width="30" height="30" viewBox="0 0 32 32">
					<g fill="none" fill-rule="evenodd" transform="translate(1 1)">
						<circle class="Circle" cx="15" cy="15" r="15"></circle>
						<g class="Close" stroke-linecap="round" stroke-width="2">
							<path d="M19.243 19.243l-8.486-8.486M19.243 10.757l-8.486 8.486"></path>
						</g>
					</g>
				</svg>
			</button>

			<!-- header -->
			<div class="header-div">
				<h1>비밀번호 찾기</h1>
			</div>

			<!-- content -->
			<div class="content-div">
				<p class="content-p">가입한 이메일 정보 입력 후 인증 메일 받기를 클릭하세요.</p>
				<input autocomplete="off" class="content-input" name="email" placeholder="이메일" value="">
			</div>

			<!-- footer -->
			<button class="footer-button">인증메일 받기</button>
		</div>
		<!-- /.modal-content -->