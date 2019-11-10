<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>별방 방주인 메인 페이지</title>
<%@ include file="../assets/inc/meta.jsp"%>
<!-- css 적용 -->
<link rel="stylesheet" type="text/css" href="ho_assets/ho_main.css" />
<style type="text/css">
</style>
</head>

<body>
	<!-- 브라우저에 보여질 부분 -->
	<!-- 페이지의 전체 폭을 결정하기 위한 영역 -->
	<div id="root">
		<!-- 상단 헤더 -->
		<div id="header">
			<%@ include file="ho_assets/ho_inc/ho_header.jsp"%>
		</div>
		<!-- 중앙 영역 -->
		<div id="body">
			<div class="bgimg">
				<h1 class="title">
					공실 광고<img src="../assets/ico/logo_white.png">에서 무제한 무료
				</h1>
				<p class="desc">방주인에 제한없이 공실 등록하고 무료로 광고하세요.</p>
				<p class="desc">별방에 광고를 원하시면 지금 당장 방주인을 시작하세요</p>
				<a class="link-sc" href="ho_rm_add.jsp">방주인 시작하기</a>
			</div>
		</div>
	</div>
	<!-- 하단 영역 -->
	<div id="footer">
		<%@ include file="ho_assets/ho_inc/ho_footer.jsp"%>
	</div>
	<!-- Javascript -->
	<script src="../assets/js/jquery-1.10.2.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<script type="text/javascript">
/* 		$(function() {
			$(".header-dropbox").hover(function() {
				$(this).toggleClass('header-dropbox header-dropbox-open')
			});

			$(".isroom-dropdown-closed")
					.click(
							function() {
								$(this)
										.toggleClass(
												'isroom-dropdown-closed isroom-dropdown-opened')
							});
		}); */
		/* 모달 창 닫기 이벤트 */
			$(function() {
		$('.modal').on('hidden.bs.modal', function(e) {
			$(this).removeData('bs.modal');
		});
		
		$('#modal').on('hidden.bs.modal', function(e) {

		});
	});
	</script>
</body>

</html>