<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../assets/inc/meta.jsp"%>

<!-- css 참조 -->
<link rel="stylesheet" type="text/css" href="../assets/css/reset.css" />
<link rel="stylesheet" type="text/css" href="ad_assets/ad_edit.css" />

</head>

<body>
	<!-- 페이지의 전체 폭을 결정하기 위한 영역 -->
	<div class="root">
		<!-- 상단 영역 -->
		<%@ include file="ad_inc/header.jsp"%>
		<!-- 중앙 영역 -->
		<div id="content">
			<div class="pick">
				<span><h1>관리자 글수정</h1></span>
			</div>
			<div class="input-group1">
				<input type="text" class="form-control" placeholder=" 제목 : [기존 게시물의 제목. 자주묻는 질문 & 공지사항]">
			</div>  
			<div class="input-group2">
				<textarea class="form-control textli" style="resize: none;" placeholder=" 기존 게시물의 내용?&#13;&#10; 글자수 제한 200자"></textarea>
			</div> 
			<div class="btn1 text-center">
				<button type="submit" class="btn btn-primary btn-lg">완료</button>
				<button type="submit" class="btn btn-warning btn-lg">취소</button>
			</div> 
		</div>
		<!-- 하단 영역 -->
		<div id="footer"></div>
	</div> <!-- root 끝 -->
	<!-- Javascript -->
	<script src="../assets/js/jquery-1.10.2.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$('.textli').keyup(function (e){
    var content = $(this).val();
    $('#counter').html("("+content.length+" / 최대 200자)");    
    //글자수 실시간 카운팅

    if (content.length > 200){
        alert("최대 200자까지 입력 가능합니다.");
        $(this).val(content.substring(0, 200));
        $('#counter').html("(200 / 최대 200자)");
    	}
	});
</script>
</body>
</html>