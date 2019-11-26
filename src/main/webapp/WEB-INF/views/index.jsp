<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>

<%@ include file="assets/inc/meta.jsp"%>

<!-- css 적용 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/ma_css/main.css">

<!--  slider css -->

<%--쓰지 않을 css --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugin/slick/slick.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugin/slick/slick-theme.css">
<!-- <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/> -->


</head>
<body>

<!----------------------------------------
-	header 								     -
----------------------------------------->
<%@ include file="assets/inc/ma_top.jsp"%>


	<!---------------------------------------\
    /    content                             /
    ----------------------------------------->
    <!-- 중앙 영역 시작 -->
    <div id="content">
      

    <!---------------------------------------\
    /    검색창                                /
    ----------------------------------------->
      <div id="search">
        <div class="text-center">
          <p class="text-center"><span class="text-center">어떤 동네, 어떤 방</span>에서</p>
          <p>살고 싶으신가요?</p>
        </div>
        <form>
          <div>
            <input type="text" name="" id="searching-for">
            <i class="glyphicon glyphicon-search"></i>
            <button href="#" class="btn btn-primary">방 찾기</button>
          </div>
        </form>
      </div>
      <!-- 검색창 끝 -->


    <!---------------------------------------\
    /    쉬운 방 찾기 시작                       /
    ----------------------------------------->
      <div id="easyfind">
        <div class="text-center easy-box1">
          <span >쉬운 방찾기</span>
          <p>방 찾기 초보를 위한 초간단 솔루션!</p>
        </div>
        <div class="slide-div1">
          <div class="slide-div2">
            <div class="slide-div3 slider regular" style="right: 0px;">

              <div>
                <a class="slide-a" href="${pageContext.request.contextPath}/main/search.do">
                 <div class="slide-a-div1">
                   <div class="slide-a-div1-up1"></div>
                   <div class="slide-a-div1-down">
                      <p>월세 + 관리비</p>
                      <p>월 50 이하 원룸</p>
                   </div>
                 </div>
                </a>
              </div>

              <div>
                <a class="slide-a" href="${pageContext.request.contextPath}/main/search.do">
                  <div class="slide-a-div1">
                    <div class="slide-a-div1-up2"></div>
                    <div class="slide-a-div1-down">
                      <p>보증금</p>
                      <p>500 이하 원룸</p>
                    </div>
                  </div>
                </a>
              </div>

              <div>
                <a class="slide-a" href="${pageContext.request.contextPath}/main/search.do">
                  <div class="slide-a-div1">
                    <div class="slide-a-div1-up3"></div>
                    <div class="slide-a-div1-down">
                      <p>반려동물</p>
                      <p>가능한 원룸</p>
                    </div>
                  </div>
                </a>
              </div>

              <div>
                <a class="slide-a" href="${pageContext.request.contextPath}/main/search.do">
                  <div class="slide-a-div1">
                    <div class="slide-a-div1-up4"></div>
                    <div class="slide-a-div1-down">
                      <p>낭만적인</p>
                      <p>옥탑방 원룸</p>
                    </div>
                  </div>
                </a>
              </div>

              <div>
                <a class="slide-a" href="${pageContext.request.contextPath}/main/search.do">
                  <div class="slide-a-div1">
                    <div class="slide-a-div1-up5"></div>
                    <div class="slide-a-div1-down">
                      <p>2억 이하</p>
                      <p>전세 투쓰리룸</p>
                    </div>
                  </div>
                </a>
              </div>

              <div>
                <a class="slide-a" href="${pageContext.request.contextPath}/main/search.do">
                  <div class="slide-a-div1">
                    <div class="slide-a-div1-up6"></div>
                    <div class="slide-a-div1-down">
                      <p>전세자금대출
                      </p>
                      <p>
                      가능한 투쓰리룸</p>
                    </div>
                  </div>
                </a>
              </div>
              
              <div>
                <a class="slide-a" href="${pageContext.request.contextPath}/main/search.do">
                  <div class="slide-a-div1">
                    <div class="slide-a-div1-up7"></div>
                    <div class="slide-a-div1-down">
                      <p>보증금
                      </p>
                      <p>1천 이하 오피스텔</p>
                    </div>
                  </div>
                </a>
              </div>

              <div>
                <a class="slide-a" href="${pageContext.request.contextPath}/main/search.do">
                  <div class="slide-a-div1">
                    <div class="slide-a-div1-up8"></div>
                    <div class="slide-a-div1-down">
                      <p>단기임대</p>
                      <p>가능한 오피스텔</p>
                    </div>
                  </div>
                </a>
              </div>

              <div>
                <a class="slide-a" href="${pageContext.request.contextPath}/main/search.do">
                  <div class="slide-a-div1">
                    <div class="slide-a-div1-up9"></div>
                    <div class="slide-a-div1-down">
                      <p>3억 이하</p>
                      <p>전세 아파트</p>
                    </div>
                  </div>
                </a>
              </div>

            </div>
          </div>
          
          <!-- 
          다방 버전 오른쪽 화살표 
          <div class="">
          <button class="slide-button">
            <svg width="10" height="16" viewBox="0 0 10 16">
              <path fill="none" fill-rule="evenodd" stroke="#666" d="M2 14l6-6-6-6"></path>
            </svg>
          </button>
          </div> -->
        
        <!-- 
        다방 버전 페이징
        
        <div class="slidepage-div">
          <p class="slidepage-p1">01</p>
          <p class="slidepage-p2">02</p>
        </div>
       -->
       </div>
    </div>
    <!-- 쉬운방찾기 끝 -->


    <!---------------------------------------\
    /    최근본방/찜한 방                        /
    ----------------------------------------->
    <div class="recent">
      <div class="recent-div0">
        <div class="recent-div1"><a href="${pageContext.request.contextPath}/main/rtrm.do">김기홍님의 최근 본 방</a></div>
        <div class="recent-div2"><a href="${pageContext.request.contextPath}/main/wish.do">찜한 방</a></div>
        <div class="recent-div3"><span>최근에 본 방과 찜한방을 볼 수 있어요</span></div>
        <!-- 갤러리 전체 박스 -->
        <div class="recent-div4"> 
          
          <!-- 각각 갤러리 시작 -->
          <!-- 1번째 갤러리 시작 -->
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
          <!-- 1번째 갤러리 끝 -->

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
                <div class="recent-a-div recent-a-div2"></div>
                <!-- 확인매물 div -->
                <div class="recent-a-confirm">
                  <div class="recent-a-confirm-div" type="">
                    <span class="bold">확인매물</span>
                    <span>19.09.22</span>
                  </div>
                </div>
                <!-- 확인매물 끝 -->
                <p class="recent-a-p1">원룸</p>
                <p class="recent-a-p2">
                  <span>월세 1000/45</span>
                </p>
                <p class="recent-a-p34">4층, 33.05m², 관리비 5만</p>
                <p class="recent-a-p34">신대방역 역세권 넓고 깔끔한 원룸</p>
              </a>
            </div>
          </div>
          <!-- 두번째 갤러리 끝 -->

          <!-- 3번째 갤러리 시작 -->
          <div class="recent-div5-vacant margin">
            <p class="recent-div5-vacant-p">아직 못 본 더 많은 방이 있어요.</p>
          </div>
          <!-- 4번째 갤러리 끝 -->

          <!-- 4번째 갤러리 시작 -->
          <div class="recent-div5-vacant margin">
            <p class="recent-div5-vacant-p">아직 못 본 더 많은 방이 있어요.</p>
          </div>
          <!-- 4번째 갤러리 끝 -->
          
        </div>
        <!--  갤러리 전체박스 끝 -->
        
      </div>
      <!-- div0 끝 -->
        
    </div>
    <!-- 최근본방 / 찜한방 끝  -->
    
    <!---------------------------------------\
    /    인기있는 방 시작                        /
    ----------------------------------------->
    <div class="pop-entire">
      <div class="pop-entire-d2">
        <div class="pop-title1"><a href="#">인기 있는 방</a></div>
        <div class="pop-title2">많은 사람들이 찾아본 이곳, 궁금하지 않으세요?</div>
        
        <!-- 갤러리 전체 박스 -->
        <div class="pop-gallery-d"> 
          
          <!-- 각각 갤러리 시작 -->
          <!-- 1번째 갤러리 시작 -->
          <div class="each-d1">
            <div class="each-d2">

              <!-- 좋아요 버튼 -->
              <div class="recent-div7">
                <div class="recent-div8 off" data-value="on"></div>
              </div>
              <!-- 좋아요 끝 -->

              <!-- 전체 링크화 -->
              <a target="_blank" rel="" class="gallery-a" href="${pageContext.request.contextPath}/main/rmdt.do">
                <!-- 이미지 -->
                <div class="gallery-pic pic1"></div>
                <!-- 확인매물 div -->
                <div class="gallery-confirm">
                  <div class="gallery-confirm-d" type="">
                    <span class="bold">확인매물</span>
                    <span>19.10.26</span>
                  </div>
                </div>
                <!-- 확인매물 끝 -->
                <p class="gallery-p1">투룸</p>
                <p class="gallery-p2">
                  <span>전세 1억6500</span>
                </p>
                <p class="gallery-p34">2층, 49.58m², 관리비 3만</p>
                <p class="gallery-p34">2016년준공!!신축급 투룸!!신혼부부 강추매물!</p>
              </a>
            </div>
          </div>
          <!-- 1번째 갤러리 끝 -->

          <!-- 2번째 갤러리 시작 -->
          <div class="each-d1">
            <div class="each-d2">

              <!-- 좋아요 버튼 -->
              <div class="recent-div7">
                <div class="recent-div8 off" data-value="on"></div>
              </div>
              <!-- 좋아요 끝 -->

              <!-- 전체 링크화 -->
              <a target="_blank" rel="" class="gallery-a" href="${pageContext.request.contextPath}/main/rmdt.do">
                <!-- 이미지 -->
                <div class="gallery-pic pic2"></div>
                <!-- 확인매물 div -->
                <div class="gallery-confirm">
                  <div class="gallery-confirm-d" type="">
                    <span class="bold">확인매물</span>
                    <span>19.10.25</span>
                  </div>
                </div>
                <!-- 확인매물 끝 -->
                <p class="gallery-p1">원룸</p>
                <p class="gallery-p2">
                  <span>월세 500/45</span>
                </p>
                <p class="gallery-p34">2층, 26.44m², 관리비 5만</p>
                <p class="gallery-p34">💝크기💝구조💝위치💝금액💝 ✨팔방미인 원룸✨</p>
              </a>
            </div>
          </div>
          <!-- 2번째 갤러리 끝 -->

          <!-- 3번째 갤러리 시작 -->
          <div class="each-d1">
            <div class="each-d2">

              <!-- 좋아요 버튼 -->
              <div class="recent-div7">
                <div class="recent-div8 off" data-value="on"></div>
              </div>
              <!-- 좋아요 끝 -->

              <!-- 전체 링크화 -->
              <a target="_blank" rel="" class="gallery-a" href="${pageContext.request.contextPath}/main/rmdt.do">
                <!-- 이미지 -->
                <div class="gallery-pic pic3"></div>
                <!-- 확인매물 div -->
                <div class="gallery-confirm">
                  <div class="gallery-confirm-d" type="">
                    <span class="bold">확인매물</span>
                    <span>19.09.25</span>
                  </div>
                </div>
                <!-- 확인매물 끝 -->
                <p class="gallery-p1">투룸</p>
                <p class="gallery-p2">
                  <span>전세 1억4000</span>
                </p>
                <p class="gallery-p34">5층, 33.05m², 관리비 3만</p>
                <p class="gallery-p34">▶▶화곡동 최저가 2룸 전세◀◀</p>
              </a>
            </div>
          </div>
          <!-- 3번째 갤러리 끝 -->

          <!-- 4번째 갤러리 시작 -->
          <div class="each-d1">
            <div class="each-d2">

              <!-- 좋아요 버튼 -->
              <div class="recent-div7">
                <div class="recent-div8 off" data-value="on"></div>
              </div>
              <!-- 좋아요 끝 -->

              <!-- 전체 링크화 -->
              <a target="_blank" rel="" class="gallery-a" href="${pageContext.request.contextPath}/main/rmdt.do">
                <!-- 이미지 -->
                <div class="gallery-pic pic4"></div>
                <!-- 확인매물 div -->
                <div class="gallery-confirm">
                  <div class="gallery-confirm-d" type="">
                    <span class="bold">확인매물</span>
                    <span>19.09.25</span>
                  </div>
                </div>
                <!-- 확인매물 끝 -->
                <p class="gallery-p1">오피스텔</p>
                <p class="gallery-p2">
                  <span>월세 1000/40</span>
                </p>
                <p class="gallery-p34">4층, 23.49m², 관리비 7만</p>
                <p class="gallery-p34">♠벽지새로해드립니다 5호선 저렴한 월세방♠ 이 나왔습니다.</p>
              </a>
            </div>
          </div>
          <!-- 4번째 갤러리 끝 -->

          
        </div>
        <!--  갤러리 전체박스 끝 -->
        
      </div>
      <!-- div0 끝 -->
        
    </div>
    <!-- 인기 있는 방 끝  -->
    
    
    <button class="btn-searchrm" style="bottom: 30px;">
    	<svg width="20" height="20" viewBox="0 0 20 20">
    		<g fill="none" fill-rule="evenodd" stroke="#FFF" stroke-width="2">
    			<circle cx="8.5" cy="8.5" r="6.5"></circle>
    			<path d="M13 13l5 5"></path>
    		</g>
    	</svg>
    	<span>방 찾기</span>
    </button>
    
    
  </div>
<!-- content 끝 -->

<!----------------------------------------
-	footer 							     -
----------------------------------------->
<%@ include file="assets/inc/ma_bottom.jsp"%>


<script src="//ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugin/slick/slick.min.js" type="text/javascript" charset="utf-8"></script>


<script>
	/* 슬라이더 세팅 */

		$(".regular").slick({
			dots: true,
	      	infinite: true,
		    slidesToShow: 6,
	    	slidesToScroll: 5
	    });

	/* 좋아요 클릭 -> 하트 색 변경 */
	$(function() {
		$(".recent-div8").click(function(e) {
			$(this).toggleClass('on off');
		});
	})
	
	/* 스크롤 내렸을 때 방찾기 버튼 나타내기 */
	$(function() {
		$(window).scroll(function() {
			
			if( $(window).scrollTop() > 370) {
					$(".btn-searchrm").fadeIn(1).css("display","block").css("bottom", "30px");
				} else {
					$(".btn-searchrm").fadeOut(1);
				}
			
			if ($(document).height() < $(window).scrollTop() + $(window).height() + 250 ) {
				var control = 0;
				control = 280 - ($(document).height() - $(window).scrollTop() - $(window).height()) ;
				$(".btn-searchrm").css("bottom", control+"px");
			}
		});
		
		$(".btn-searchrm").click(function(){
			$("#searching-for").focus();
		});
	});
	
</script>

</body>
</html>