<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<head>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/modal/modal_css/ma_login.css">
</head>

			<div class="modal-content love">
                <!-- 닫기버튼 -->
                <button class="btnclose"  data-dismiss="modal">
                	<svg width="30" height="30" viewBox="0 0 32 32">
                		<g fill="none" fill-rule="evenodd" transform="translate(1 1)">
                			<circle class="Circle" cx="15" cy="15" r="15"></circle>
                			<g class="Close" stroke-linecap="round" stroke-width="2">
                				<path d="M19.243 19.243l-8.486-8.486M19.243 10.757l-8.486 8.486"></path>
                			</g>
                		</g>
                	</svg>
                </button>
                <!-- 상단 전체박스 시작 -->
            	<div class="topbox-div">
            		<!-- 제목 -->
                	<h3 class="login-h3"><b>로그인</b></h3>
                	<!-- 로그인윗부분 -->
                	<div class="login" id="">
                	    <form class="">
                	    	<!-- 아이디 / 패스워드 -->
                	        <input autocomplete="off" class="idpass" type="text" placeholder="아이디" name="email" value="" />
                	        <input autocomplete="off" class="idpass" type="password" placeholder="비밀번호" name="password" value="" />
                	        <div class="checkbox-d">
                	        	<!-- 아이디저장 - 체크박스 -->
                	            <label class="checkbox-l clearfix" size="22">
                	                <input type="checkbox" class="checkbox-i" name="isSaved" value="">
                	                <span class="checkbox-s"></span>
                	                <p class="checkbox-p">아이디 저장</p>
                	            </label>
                	            <!-- 비밀번호 찾기 -->
                	            <a href="<%=request.getContextPath()%>/assets/modal/ma_pwd.jsp" data-dismiss="modal" 
                	            data-toggle="modal" data-target="#passwdModal" class="findpw-a">비밀번호 찾기</a>
                	        </div>
                	        <button class="login-button" type="submit">
                	            <span class="login-span">로그인</span>
                	        </button>
                	    </form>
                	    <div class="joinus-div">
                	        <p>아직 회원이 아니세요?
                	            <a href="<%=request.getContextPath()%>/assets/modal/ma_agree.jsp" id="join" data-dismiss="modal" data-toggle="modal" data-target="#agreeModal">이메일로 회원가입</a>
                	        </p>
                	    </div>   
                	</div>
                </div>
                <!-- /상단 전체박스 -->
                <!-- <div class="owner">
                	 <div>
                		<label class="owner-label">임대인이세요?</label>
                		<a class="owner-a" href="ho_main.html">
                			<div>
                				<img src="assets/ico/logo_blue.png">
                			</div>
                			<span>방주인</span>
                			<svg width="8" height="8" viewBox="0 0 8 8">
                				<g transform="translate(0 0)">
                					<path fill="#326CF9" d="M3.564.124v3.584H.018v3.585H7.11V.123z"></path>
                				</g>
                			</svg>
                		</a>
                	</div> -->
                </div>                	
