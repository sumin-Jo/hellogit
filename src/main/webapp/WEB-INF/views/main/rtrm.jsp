
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../assets/inc/meta.jsp"%>

<!-- css 참조 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/etc/reset.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/ma_css/rtrm.css">
</head>

<body>
	<!-- 페이지의 전체 폭을 결정하기 위한 영역 -->
	<div class="root">
	
		<!-- 상단 헤더 -->
		<%@ include file="../assets/inc/ma_top.jsp"%>
	
	<!-- 중앙 영역 -->
      <div id="content">
          <!-- 최근본방/찜한 방 -->
        <div id="recent" class="recent">
            <h1 class="interest">관심목록</h1>
        <div class="tab-menu">
          <a class="st-bang active" href="#">최근 본 방</a>
          <a class="st-bang" href="${pageContext.request.contextPath}/main/wish.do">찜한 방</a>
        </div>
        <div class="tab-text">
        <div class="re-div1"><p>총 <span>12개</span>의 최근 본 방이 있습니다</p></div>
        <div class="re-div2"><p>최근에 본 방은 최대 50개까지 저장됩니다</p></div>
        </div>
            <!-- 갤러리 전체 박스 -->
            <div class="recent-div4"> 
              <!-- 각각 갤러리 시작 -->
              <!-- 1번째 갤러리 -->
              <div class="recent-div5">
                <div class="recent-div6">
                  <!-- 좋아요 버튼 -->
                  <div class="recent-div7">
                    <div class="recent-div8 off" data-value="on"></div>
                  </div>
                  <!-- 좋아요 끝 -->
                  <!-- 전체 링크화 -->
                  <a target="_blank" rel="" class="recent-a" href="${pageContext.request.contextPath}/main/rmdt.do">
                    <!-- 이미지 -->
                    <div class="recent-a-div"></div>
                    <!-- 확인매물 div -->
                    <div class="recent-a-confirm">
                      <div class="recent-a-confirm-div" type="">
                        <span class="bold">확인매물</span>
                        <span>19.09.25</span>
                      </div>
                    </div>
                    <!-- 확인매물 끝 -->
                    <p class="recent-a-p1">투룸</p>
                    <p class="recent-a-p2">
                      <span>전세 1억4000</span>
                    </p>
                    <p class="recent-a-p34">5층, 33.05m², 관리비 3만</p>
                    <p class="recent-a-p34">▶▶화곡동 최저가 2룸 전세◀◀</p>
                  </a>
                </div>
              </div>
              <!-- 첫번째 갤러리 끝 -->

              <!-- 2번째 갤러리 -->
              <div class="recent-div5 margin">
                <div class="recent-div6">
                  <!-- 좋아요 버튼 -->
                  <div class="recent-div7">
                    <div class="recent-div8 off" data-value="on"></div>
                  </div>
                  <!-- 좋아요 끝 -->
                  <!-- 전체 링크화 -->
                  <a target="_blank" rel="" class="recent-a" href="${pageContext.request.contextPath}/main/rmdt.do">
                    <!-- 이미지 -->
                    <div class="recent-a-div"></div>
                    <!-- 확인매물 div -->
                    <div class="recent-a-confirm">
                      <div class="recent-a-confirm-div" type="">
                        <span class="bold">확인매물</span>
                        <span>19.09.25</span>
                      </div>
                    </div>
                    <!-- 확인매물 끝 -->
                    <p class="recent-a-p1">투룸</p>
                    <p class="recent-a-p2">
                      <span>전세 1억4000</span>
                    </p>
                    <p class="recent-a-p34">5층, 33.05m², 관리비 3만</p>
                    <p class="recent-a-p34">▶▶화곡동 최저가 2룸 전세◀◀</p>
                  </a>
                </div>
              </div>
              <!-- 두번째 갤러리 끝 -->

              <!-- 세번째 갤러리 -->
              <div class="recent-div5 margin">
                <div class="recent-div6">
                  <!-- 좋아요 버튼 -->
                  <div class="recent-div7">
                    <div class="recent-div8 off" data-value="on"></div>
                  </div>
                  <!-- 좋아요 끝 -->
                  <!-- 전체 링크화 -->
                  <a target="_blank" rel="" class="recent-a" href="${pageContext.request.contextPath}/main/rmdt.do">
                    <!-- 이미지 -->
                    <div class="recent-a-div"></div>
                    <!-- 확인매물 div -->
                    <div class="recent-a-confirm">
                      <div class="recent-a-confirm-div" type="">
                        <span class="bold">확인매물</span>
                        <span>19.09.25</span>
                      </div>
                    </div>
                    <!-- 확인매물 끝 -->
                    <p class="recent-a-p1">투룸</p>
                    <p class="recent-a-p2">
                      <span>전세 1억4000</span>
                    </p>
                    <p class="recent-a-p34">5층, 33.05m², 관리비 3만</p>
                    <p class="recent-a-p34">▶▶화곡동 최저가 2룸 전세◀◀</p>
                  </a>
                </div>
              </div>
              <!-- 세번째 갤러리 끝 -->

              <!-- 네번째 갤러리 -->
              <div class="recent-div5 margin">
                <div class="recent-div6">
                  <!-- 좋아요 버튼 -->
                  <div class="recent-div7">
                    <div class="recent-div8 off" data-value="on"></div>
                  </div>
                  <!-- 좋아요 끝 -->
                  <!-- 전체 링크화 -->
                  <a target="_blank" rel="" class="recent-a" href="${pageContext.request.contextPath}/main/rmdt.do">
                    <!-- 이미지 -->
                    <div class="recent-a-div"></div>
                    <!-- 확인매물 div -->
                <!--     <div class="recent-a-confirm">
                      <div class="recent-a-confirm-div" type="">
                        <span class="bold">확인매물</span>
                        <span>19.09.25</span>
                      </div>
                    </div> -->
                    <!-- 확인매물 끝 -->
                    <p class="recent-a-p1">투룸</p>
                    <p class="recent-a-p2">
                      <span>전세 1억4000</span>
                    </p>
                    <p class="recent-a-p34">5층, 33.05m², 관리비 3만</p>
                    <p class="recent-a-p34">▶▶화곡동 최저가 2룸 전세◀◀</p>
                  </a>
                </div>
              </div>
              <!-- 네번째 갤러리 끝 -->
       </div><!-- 갤러리 전체 끝 -->
    </div> <!-- 최근본방/찜한 방 끝-->
  </div> <!-- content 끝 -->
  </div> <!-- root 끝 -->

	<!-- 하단 영역 -->
	<%@ include file="../assets/inc/ma_bottom.jsp"%>
	
<!-- Javascript -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery-1.10.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	/* 좋아요 클릭 -> 하트 색 변경 */
	$(function() {
	   $(".recent-div8").click(function(e) {
	      $(this).toggleClass('on off');
	   });
	});
	</script>
</body>
</html>