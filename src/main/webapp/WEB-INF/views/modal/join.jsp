<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/modal_css/join.css">

    <!-- sweetalert --> 
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugin/sweetalert/sweetalert2.css" />

	<script src="${pageContext.request.contextPath}/assets/js/jquery-1.10.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	
<script type="text/javascript">

//	$(document).on('hidden.bs.modal', function (event) {
//		if ($('.modal:visible').length) {
//			$('body').addClass('modal-open');
//		}
//	});

	
	
	$(function() {
		//모달 부모 스크롤 없애기
//		$("#myModal").on("show", function() {
//			$("body").addClass("modal-open");
//		}).on("hidden", function() {
//			$("body").removeClass("modal-open")
//		});
		
		 //인증번호
		$("#insnumber").click(function () {
			swal("인증번호가 발송되었습니다");
			var insnumber = document.getElementById('insnumber'); 
			$reemail = $('#insnumber').attr('value', "인증번호 요청");
			//$reemail = $('#insnumber').attr('z-index', "10000px");
		});
		
		$("#reinsnumber").click(function () {
			swal("인증번호가 확인되었습니다");
		});		
	});

</script>
		<!-- $("#buttonjoin").click(function () {
			swal("회원가입이 완료되었습니다");
		});  -->

<!-- sweetalert --> 
<script src="${pageContext.request.contextPath}/assets/plugin/sweetalert/sweetalert2.all.min.js"></script>

</head>

	 <!-- 화면 영역 -->
<!-- 	<div class="container">
		<h1 class="page-header">Bootstrap Modal Open</h1>
		링크로 모달 열기
		<a href="#" class="btn btn-primary" data-toggle="modal" data-target="#myModal">open modal</a>
	</div> -->
	<!-- 화면 영역 끝 -->

	<!-- Modal -->
	<!-- <div class="modal fade" id="myModal" class="siz">
		<div class="modal-dialog siz modaltop"> -->
			<div class="modal-content wholething sw" id="myModal">
				<div class="modal-header">
					<h4 class="modal-title">회원가입</h4>
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
 	            </div>
				<div class="modal-body padding">
					<div class="information clearfix">
						<p class="subtitle">이름</p>
						<input class="input1" type="text" name="userId" class="full-wid input1" />
					</div>
					<div class="information information2 clearfix">
						<p class="subtitle">이메일</p>
						<input type="text" name="useremail" class="email input1" />
						<p class="wid">@</p>
						<select class="select-email select1">
							<option>선택해주세요</option>
							<option>naver.com</option>
							<option>gmail.com</option>
						</select>
						<button class="btn btn-color inclick buttonre" id="insnumber" value="인증번호 요청">인증번호 요청</button>
						<!-- data-toggle="modal" data-target="#requested" -->
					</div>
					<div class="information information2 numberdiv clearfix">
						<p class="subtitle"></p>
						<input type="text" name="pingaree" class="number input1" />
						<button class="btn btn-color inclick buttonre" id="reinsnumber" value="인증번호 확인" >인증번호 확인</button>
						<!-- ata-toggle="modal" data-target="#requestednumber" -->
					</div>
					<div class="information information2 clearfix">
						<p class="subtitle">비밀번호</p>
						<input type="passwd" name="passwd" class="full-wid input1" placeholder="비밀번호" />
					</div>
					<div class="information information2 clearfix">
						<p class="subtitle">비밀번호확인</p>
						<input type="passwd" name="repasswd" class="full-wid input1" placeholder="비밀번호확인" />
					</div>
					<div class="information information2 clearfix">
						<p class="subtitle">휴대폰 번호</p>
						<select class="select-tel pin select1">
							<option>010</option>
							<option>011</option>
							<option>016</option>
							<option>017</option>
							<option>018</option>
							<option>019</option>
						</select>
						<p class="wid">-</p>
						<input type="number" name="pin2" class="pin input1"/><p class="wid">-</p>
						<input type="number" name="pin3" class="pin input1"/>
					</div class="info Information">
					<div class="Information3">
						<p class="p">*만 14세 이상 회원 가입 가능합니다. 해당 내용은 <a href="#">이용약관 및 정책</a>에서도 확인이 가능합니다</p>
					</div>
				</div>
				<div>
					<button id="buttonjoin" class="buttonup btn btn-colordown buttontlzl" ata-toggle="modal" data-target="#loginForward">이메일 회원가입</button>
				</div>
			</div>
			
			<!-- 인증번호 Modal -->
			<!-- <div class="modal fade" id="myModal" class="siz">
		<div class="modal-dialog siz modaltop"> -->
		<div class="modal fade" id="requested">
			<div class="modal-content">
				<div class="modal-header">
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
 	            </div>
				<div class="modal-body modaljoinbody">
					<h4 class="modal-title">인증번호 발송했습니다</h4>
				</div>
			</div>
		</div>
			
			
		<!-- 인증번호 확인 ok Modal -->
		<div class="modal fade" id="requestednumber">
			<div class="modal-content requested">
				<div class="modal-header">
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
 	            </div>
				<div class="modal-body modaljoinbody">					
					<h4 class="modal-title">인증번호 확인되었습니다</h4>
				</div>
			</div>
		</div>
		
		<!-- 인증번호 확인 not Modal -->
		<div class="modal fade" id="requestednumbernot">
			<div class="modal-content">
				<div class="modal-header">
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
 	            </div>
				<div class="modal-body modaljoinbody">					
					<h4 class="modal-title">인증번호가 틀렸습니다</h4>
				</div>
			</div>
		</div>
		
		<!-- 회원가입 완료 -->
		<div class="modal fade" id="buttonjoinalalert">
			<div class="modal-content">
				<div class="modal-header">
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
 	            </div>
				<div class="modal-body modaljoinbody">					
					<h4 class="modal-title">환영합니다 회원가입에 성공하셨습니다</h4>
				</div>
			</div>
		</div>
		
		<!-- 회원가입 후 다시 login.jsp로 돌아감 -->
		<div class="modal" id="loginForward">
			<div class="modal-content">
				<div class="modal-body modalbody " id="loginForwardbody">					
					<button type="submit" id="loginForwardButton" class="btn btn-default" data-dismiss="modal" >확인</button>
				</div>
			</div>
		</div>
		
		
		