<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<head>

<%@ include file="../assets/inc/meta.jsp"%>

<!-- css 적용 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/ma_css/wish.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/modal_assets/compare.css">

</head>
<body>

<!----------------------------------------
-	header 							     -
----------------------------------------->
<%@ include file="../assets/inc/ma_top.jsp"%>

<!----------------------------------------
-	content 							 -
----------------------------------------->

<!-- content - title -->
	<h1 class="content1-title">관심목록</h1>
	
	<!-- content-navigation -->
	<div class="content2-d">
		<a class="content2-d-a" href="${pageContext.request.contextPath}/main/rtrm.do" aria-current="">최근 본 방</a>
		<a class="content2-d-a active" href="#">찜한 방</a>
	</div>


	<!-----------------------------------
	|   content-gallery
	------------------------------------>
	<!--본문영역시작 gallery 시작 -->
	<div class="gallery-wholebox">

		<!-- 총 카운트 count -->
		<p class="count-p">
			총 <span>8개</span>의 찜한 방이 있습니다
		</p>

		<!-- 메인 갤러리 시작 -->
		<ul class="gallery-ul">

			<!-- li 하나당 한개의 매물 - 외부박스 -->
			<li class="gallery-li">
				<!-- 내부박스 거래 완료되었을 때 덮는 박스( 완료된 방은 하트가 없다.) -->
				<div class="complete-whcover">
					<div class="complete-smcover" height="186">
						<h1 class="complete-h1">비공개</h1>
						<p class="complete-p">아쉽게도 조금 늦었네요!</p>
						<p class="complete-p">비슷한 방을 확인해보세요</p>
						<div class="complete-plusbtn"></div>
					</div>
				</div> <!-- 거래완료시 덮는박스 끝 --> <!-- 원래 매물 -->
				<div class="gallery-d1" height="321">
					<a target="_blank" rel="noopener noreferrer" class="gallery-d1-a"
						href="${pageContext.request.contextPath}/jsp/main/rmdt.do">
						<div class="gallery-d2-pic"></div>
						<div class="gallery-d2-confirm">
							<div class="gallery-d3-confirm" type="confirm">
								<span>확인매물</span> <font>19.09.16</font>
							</div>
						</div>
						<p class="gallery-p1 gallery-p-common">원룸</p>
						<p class="gallery-p2 gallery-p-common">
							<span>전세 1억</span>
						</p>
						<p class="gallery-p-common">1층, 23.14m², 관리비 7만</p>
						<p class="gallery-p-common">🌟🍀🎊✌//love//신축 첫입주 원룸</p>
					</a>
				</div>
			</li>

			<!-- 마진을 포함한 매물 하나의 전체박스 -->
			<li class="gallery-li">
				<!-- 마진을 포함하지 않은 전체박스 -->
				<div class="gallery-d1" height="321">

					<!-- 하트 -->
					<div class="gallery-heart-d2">
						<div class="gallery-heart-d3"></div>
					</div>

					<!-- 전체클릭 가능하도록 만드는 a태그 -->
					<a target="_blank" rel="noopener noreferrer" class="gallery-d1-a"
						href="${pageContext.request.contextPath}/main/rmdt.do">
						<div class="gallery-d2-pic"></div>
						<div class="gallery-d2-confirm">
							<div class="gallery-d3-confirm" type="confirm">
								<span>확인매물</span> <font>19.10.11</font>
							</div>
						</div>
						<p class="gallery-p-common gallery-p1">원룸</p>
						<p class="gallery-p-common gallery-p1">
							<span class="gallery-p2 select-span">월세500/30</span>
						</p>
						<p class="gallery-p-common">3층, 35.5m², 관리비 5만</p>
						<p class="gallery-p-common">🆕 향남 2지구 원룸 월세 ♡</p>
					</a>
				</div>
			</li>


			<!-- 하나의 매물 시작 -->
			<li class="gallery-li">
				<!-- 완료된 매물 덮개 -->
				<div class="complete-whcover">
					<div class="complete-smcover">
						<h1 class="complete-h1">거래완료</h1>
						<p class="complete-p">아쉽게도 조금 늦었네요!</p>
						<p class="complete-p">비슷한 방을 확인해보세요</p>
						<div class="complete-plusbtn"></div>
					</div>
				</div> <!-- 완료된 매물 덮개 끝 --> <!-- 원래 매물 -->
				<div class="gallery-d1" height="321">
					<a target="_blank" rel="noopener noreferrer" class="gallery-d1-a"
						href="${pageContext.request.contextPath}/main/rmdt.do">
						<div class="gallery-d2-pic"></div>
						<p class="gallery-p1 gallery-p-common">투룸</p>
						<p class="gallery-p2 gallery-p-common">
							<span>월세 2000/60</span>
						</p>
						<p class="gallery-p-common">5층, 49.5m², 관리비 1만</p>
						<p class="gallery-p-common">🔷실보유금 1500만🔷 통베란다+ 1.5룸 등촌역초역세권
							정남향[보증금조절가능]🔷</p>
					</a>
				</div>
			</li>

			<!-- 마진을 포함한 매물 하나의 전체박스 -->
			<li class="gallery-li">
				<!-- 마진을 포함하지 않은 전체박스 -->
				<div class="gallery-d1" height="321">

					<!-- 하트 -->
					<div class="gallery-heart-d2">
						<div class="gallery-heart-d3"></div>
					</div>

					<!-- 전체클릭 가능하도록 만드는 a태그 -->
					<a target="_blank" rel="noopener noreferrer" class="gallery-d1-a"
						href="${pageContext.request.contextPath}/main/rmdt.do">
						<div class="gallery-d2-pic"></div>
						<div class="gallery-d2-confirm">
							<div class="gallery-d3-confirm" type="confirm">
								<span>확인매물</span> <font>19.10.11</font>
							</div>
						</div>
						<p class="gallery-p1 gallery-p-common">투룸</p>
						<p class="gallery-p1 gallery-p-common">
							<span class="gallery-p2">전세 5000천</span>
						</p>
						<p class="gallery-p-common">3층, 82.5m², 관리비 8만</p>
						<p class="gallery-p-common">🆕 짱짱짱 투룸 좋아요 ♡</p>
					</a>
				</div>
			</li>

			<!-- 마진을 포함한 매물 하나의 전체박스 -->
			<li class="gallery-li">
				<!-- 마진을 포함하지 않은 전체박스 -->
				<div class="gallery-d1" height="321">

					<!-- 하트 -->
					<div class="gallery-heart-d2">
						<div class="gallery-heart-d3"></div>
					</div>

					<!-- 전체클릭 가능하도록 만드는 a태그 -->
					<a target="_blank" rel="noopener noreferrer" class="gallery-d1-a"
						href="${pageContext.request.contextPath}/main/rmdt.do">
						<div class="gallery-d2-pic"></div>
						<div class="gallery-d2-confirm">
							<div class="gallery-d3-confirm" type="confirm">
								<span>확인매물</span> <font>19.10.11</font>
							</div>
						</div>
						<p class="gallery-p-common gallery-p1">쓰리룸</p>
						<p class="gallery-p-common gallery-p1">
							<span class="gallery-p2">전세 1억1000</span>
						</p>
						<p class="gallery-p-common">3층, 82.5m², 관리비 5만</p>
						<p class="gallery-p-common">🆕 🌸 신규 🌸 향남 2지구 신축급 깨끗하고 입지 최상
							쓰리룸 전세 ♡</p>
					</a>
				</div>
			</li>

			<!-- 마진을 포함한 매물 하나의 전체박스 -->
			<li class="gallery-li">
				<!-- 마진을 포함하지 않은 전체박스 -->
				<div class="gallery-d1" height="321">

					<!-- 하트 -->
					<div class="gallery-heart-d2">
						<div class="gallery-heart-d3"></div>
					</div>

					<!-- 전체클릭 가능하도록 만드는 a태그 -->
					<a target="_blank" rel="noopener noreferrer" class="gallery-d1-a"
						href="${pageContext.request.contextPath}/main/rmdt.do">
						<div class="gallery-d2-pic"></div>
						<div class="gallery-d2-confirm">
							<div class="gallery-d3-confirm" type="confirm">
								<span>확인매물</span> <font>19.10.11</font>
							</div>
						</div>
						<p class="gallery-p-common gallery-p1">오피스텔</p>
						<p class="gallery-p-common gallery-p1">
							<span class="gallery-p2">전세 2억1000</span>
						</p>
						<p class="gallery-p-common">3층, 82.5m², 관리비 5만</p>
						<p class="gallery-p-common">🆕 🌸 신규 🌸 향남 2지구 신축급 깨끗하고 입지 최상
							쓰리룸 전세 ♡</p>
					</a>
				</div>
			</li>

			<!-- 마진을 포함한 매물 하나의 전체박스 -->
			<li class="gallery-li">
				<!-- 마진을 포함하지 않은 전체박스 -->
				<div class="gallery-d1" height="321">

					<!-- 하트 -->
					<div class="gallery-heart-d2">
						<div class="gallery-heart-d3"></div>
					</div>

					<!-- 전체클릭 가능하도록 만드는 a태그 -->
					<a target="_blank" rel="noopener noreferrer" class="gallery-d1-a"
						href="${pageContext.request.contextPath}/main/rmdt.do">
						<div class="gallery-d2-pic"></div>
						<div class="gallery-d2-confirm">
							<div class="gallery-d3-confirm" type="confirm">
								<span>확인매물</span> <font>19.10.11</font>
							</div>
						</div>
						<p class="gallery-p-common gallery-p1">쓰리룸</p>
						<p class="gallery-p-common gallery-p1">
							<span class="gallery-p2">전세 3억5000</span>
						</p>
						<p class="gallery-p-common">3층, 82.5m², 관리비 5만</p>
						<p class="gallery-p-common">🆕 🌸 신규 🌸 향남 2지구 신축급 깨끗하고 입지 최상
							쓰리룸 전세 ♡</p>
					</a>
				</div>
			</li>

			<!-- 마진을 포함한 매물 하나의 전체박스 -->
			<li class="gallery-li">
				<!-- 마진을 포함하지 않은 전체박스 -->
				<div class="gallery-d1" height="321">

					<!-- 하트 -->
					<div class="gallery-heart-d2">
						<div class="gallery-heart-d3"></div>
					</div>

					<!-- 전체클릭 가능하도록 만드는 a태그 -->
					<a target="_blank" rel="noopener noreferrer" class="gallery-d1-a"
						href="${pageContext.request.contextPath}/main/rmdt.do">
						<div class="gallery-d2-pic"></div>
						<div class="gallery-d2-confirm">
							<div class="gallery-d3-confirm" type="confirm">
								<span>확인매물</span> <font>19.10.11</font>
							</div>
						</div>
						<p class="gallery-p-common gallery-p1">투룸</p>
						<p class="gallery-p-common gallery-p1">
							<span class="gallery-p2">전세 1억</span>
						</p>
						<p class="gallery-p-common">3층, 82.5m², 관리비 5만</p>
						<p class="gallery-p-common">🆕 🌸 신규 🌸 향남 2지구 신축급 깨끗하고 입지 최상
							쓰리룸 전세 ♡</p>
					</a>
				</div>
			</li>
		</ul>
		<!-- ul 끝 -->


		<!-- 갤러리 쪽번호 시작 -->
		<div class="page-d1">
			<div class="page-d2">
				<div class="page-d3">
					<button class="page-d3-btn1">
						<svg width="12" height="12" viewBox="0 0 512 512">
						<path
								d="m380 439l-201-179 201-180c11-7 11-21 0-32-7-11-18-11-29-4l-219 197c-4 4-8 11-8 19 0 7 4 11 8 18l219 197c11 8 22 8 33 0 7-14 7-29-4-36z"
								transform="scale(1 1)"></path>
					</svg>
					</button>
					<ul class="page-d3-ul">
						<li><a class="page-ul-a-clicked">1</a></li>
						<li><a class="page-ul-a-unclicked">2</a></li>
					</ul>
					<button class="page-d3-btn2">
						<svg width="12" height="12" viewBox="0 0 512 512">
						<path
								d="m132 80l201 180-201 179c-11 7-11 22 0 33 7 11 22 11 33 0l219-198c4-3 7-11 7-18 0-7-3-11-7-18l-219-198c-11-3-26-3-33 8-11 7-11 21 0 32z"
								transform="scale(1 1)"></path>
					</svg>
					</button>
				</div>
			</div>
		</div>
		<!-- 갤러리 쪽번호 끝 -->

	<!-----------------------------------
	|   content-compare bar
	------------------------------------>
		<!-- 비교하기 버튼 -->
		<div id="bar-compare">
			<button class="btn-compare">방 비교하기</button>
		</div>
		<!-- 비교하기 바가 붙는 위치 -->
		<div id="summon">
			<!-- 비교하기 바 -->
			<div class="compare-d1" id="compare-d1" style="right: 0px; bottom: 0px;">
				<div class="compare-d2">
					<div class="compare-exp-d3" width="213">
						<p class="compare-exp-p1">방 비교하기</p>
						<p class="compare-exp-p2" size="13">최대 3개까지 비교할 수 있습니다.</p>
					</div>
					<div class="compare-select" id="select1">
						<div class="compare-select-d">
							<svg width="30" height="30" viewBox="0 0 32 32">
					<g fill="none" fill-rule="evenodd">
						<path stroke="#FFF" stroke-dasharray="2"
									d="M16 31c8.284 0 15-6.716 15-15 0-8.284-6.716-15-15-15C7.716 1 1 7.716 1 16c0 8.284 6.716 15 15 15z"
									opacity=".5"></path>
						<text fill="#FFF" font-family="Noto Sans KR" font-size="15"
									font-weight="700" transform="translate(1 1)">
							<tspan x="11" y="20.2">1</tspan>
						</text>
					</g>
				</svg>
						</div>
						<p class="compare-select-p">비교할 방을 선택해주세요</p>
					</div>
					<div class="compare-select" id="select2">
						<div class="compare-select-d">
							<svg width="30" height="30" viewBox="0 0 32 32">
					<g fill="none" fill-rule="evenodd">
						<path stroke="#FFF" stroke-dasharray="2"
									d="M16 31c8.284 0 15-6.716 15-15 0-8.284-6.716-15-15-15C7.716 1 1 7.716 1 16c0 8.284 6.716 15 15 15z"
									opacity=".5"></path>
						<text fill="#FFF" font-family="Noto Sans KR" font-size="15"
									font-weight="700" transform="translate(1 1)">
							<tspan x="11" y="20.2">2</tspan>
						</text>
					</g>
				</svg>
						</div>
						<p class="compare-select-p">비교할 방을 선택해주세요</p>
					</div>

					<div class="compare-select" id="select3">
						<div class="compare-select-d">
							<svg width="30" height="30" viewBox="0 0 32 32">
					<g fill="none" fill-rule="evenodd">
						<path stroke="#FFF" stroke-dasharray="2"
									d="M16 31c8.284 0 15-6.716 15-15 0-8.284-6.716-15-15-15C7.716 1 1 7.716 1 16c0 8.284 6.716 15 15 15z"
									opacity=".5"></path>
							<text fill="#FFF" font-family="Noto Sans KR" font-size="15"
									font-weight="700" transform="translate(1 1)">
							<tspan x="11" y="20.2">3</tspan>
						</text>
					</g>
				</svg>
						</div>
						<p class="compare-select-p">비교할 방을 선택해주세요</p>
					</div>

					<div class="compare-btn-box" width="238">
						<button class="compare-btn-cancel" width="80">취소</button>
						<button class="compare-btn-compare">
							<a class="dis-block" href="${pageContext.request.contextPath}/modal/compare.do"
								data-toggle="modal" data-target="#compareModal">비교하기</a>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 갤러리 끝 -->


<!----------------------------------------
-	footer 							     -
----------------------------------------->
<%@ include file="../assets/inc/ma_bottom.jsp"%>

<!-- 비교하기용 모달 로더 -->
<div class="modal fade" id="compareModal">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			
		</div>
	</div>
</div>

<!-- 비슷한 방 추천 모달 로더 -->
<div class="modal fade" id="similarModal">
	<div class="modal-dialog modal-sm">
		<div class="modal-content modal-recomand" width="940">
		    
		    <header class="modal-head">
		        <h1>비슷한 조건의 다른 방</h1>
		        <button class="modal-head-btn" data-dismiss="modal">
		            <svg width="30" height="30" viewBox="0 0 32 32">
		                <g fill="none" fill-rule="evenodd" transform="translate(1 1)">
		                    <circle class="Circle" cx="15" cy="15" r="15"></circle>
		                    <g class="Close" stroke-linecap="round" stroke-width="2">
		                        <path d="M19.243 19.243l-8.486-8.486M19.243 10.757l-8.486 8.486"></path>
		                    </g>
		                </g>
		            </svg>
		        </button>
		    </header>
		    <div class="mg-whole-d">
		        <div class="mg-1d">
		            <div class="mg-2d">
		                <div class="mg-heart-d">
		                    <div class="mg-heart-2d off" data-value="on"></div>
		                </div>
		                <a target="_blank" rel="noopener noreferrer" class="mg-a" href="${pageContext.request.contextPath}/main/rmdt.do">
		                    <div class="mg-a-pic1"></div>
		                    <p class="mg-roomtype">쓰리룸</p>
		                    <p class="mg-price">
		                        <span>월세 1000/80</span>
		                    </p>
		                    <p class="mg-p34"> 11층, 38.64m², 관리비 7만</p> <!-- jBkVAv -->
		                    <p class="mg-p34">⭐️까치산역 초역세권 옵션 투룸 귀한 월세⭐️ // 빠른입주가능. 대리석바닥. 막힘없는 11층 고층 뷰!</p>
		                </a>
		            </div>
		        </div>
		        
		        <div class="mg-1d">
		            <div class="mg-2d">
		                <div class="mg-heart-d">
		                    <div class="mg-heart-2d off" data-value="on"></div>
		                </div>
		                <a target="_blank" rel="noopener noreferrer" class="mg-a" href="${pageContext.request.contextPath}/main/rmdt.do">
		                    <div class="mg-a-pic1 mg-a-pic2"></div> <!-- jBvkCW -->
		                    <p class="mg-roomtype">쓰리룸</p>
		                    <p class="mg-price">
		                        <span>전세 2억4900</span>
		                    </p>
		                    <p class="mg-p34">2층, 66m², 관리비 3만</p>
		                    <p class="mg-p34">😍 [안심대출HUG가능] 깔끔 쓰리룸 . 좋은 가격 . 입주 하시가능 . 골목 없는 집 !!</p>
		                </a>
		            </div>
		        </div>
		        <div class="mg-1d">
		            <div class="mg-2d">
		                <div class="mg-heart-d">
		                    <div class="mg-heart-2d off" data-value="on"></div>
		                </div>
		                <a target="_blank" rel="noopener noreferrer" class="mg-a" href="${pageContext.request.contextPath}/main/rmdt.do"> <!-- kpKjGs -->
		                    <div class="mg-a-pic1 mg-a-pic3"></div> <!-- eunTmP -->
		                    <p class="mg-roomtype">투룸</p>
		                    <p class="mg-price">
		                        <span>전세 1억3000</span>
		                    </p>
		                    <p class="mg-p34">4층, 52.89m², 관리비 1만</p>
		                    <p class="mg-p34">⭐️안심전세90%가능⭐️탁트인 전망.채광굿.정남향.바로입주가능.주차가능.올수리!리모델링 투룸.중소기업청년전세 가능!~</p>
		                </a>
		            </div>
		        </div>
		    </div>
			
		</div>
	</div>
</div>


<script src="${pageContext.request.contextPath}/assets/js/jquery-1.10.2.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<script>
	$(function(){
		/* 방 비교하기 버튼 눌렀을 때 보이도록 발생하는 이벤트 */
		$(document).on('click', '.btn-compare', function(e) {
			
			$(".compare-d1").css("display","block");
			
			/* 방 비교하기 버튼 지우기 */
            $("#bar-compare").empty();
		
			/* checkbox 만들기 */
            var chbox = "";
            chbox += '<div class="comp-chkbox-d">'
        	chbox += '<label class="clearfix comp-chkbox-l" size="22">'
    		chbox += '<input type="checkbox" class="comp-chkbox-i" name="" value="">'
    		chbox += '<span class="comp-chkbox-s"></span></label></div>'
    		
    		/* checkbox 붙이기 */
            $(".gallery-d2-pic").append(chbox);
		});
		
        /* 체크박스 클릭했을 때, 비우고 다른내용으로 채우기  */
        $(document).on('click', '.comp-chkbox-s', function(e) {

        var type = $(this).parents(".gallery-d1-a").children(".gallery-p1").html();
        var price = $(this).parents(".gallery-d1-a").find(".gallery-p2").html();
		var put = '<span class="compbar-newspan">' + type + '</span>';
			put += '<p class="compbar-newp">' + price + '</p>';
			put += '<button class="compbar-newbtn"></button>';

			$("#select1").html(put);
		}); 


		/* 취소하기 눌렀을 때, 비교하기 바 지우고 다시 방 비교하기 버튼 생성 */
        $(document).on('click', '.compare-btn-cancel', function(e) {

        	/* 비교하기바 숨기기 */
			$(this).parents(".compare-d1").css("display","none");
			$("#bar-compare").html("<button class='btn-compare'>방 비교하기</button>");
			
			/* 체크박스 지우기 */
			$(".comp-chkbox-d").remove();
        });
	});
	
	/* footer와 비교하기바가 겹치지 않기위한 이벤트 */
	$(function() {
		$(window).scroll(function() {
			
			/* 스크롤 이벤트시, footer 위에 붙기 */
			if ($(window).scrollTop() + $(window).height() - 250 < $(document).height() ) {
				var control = 0;
				control = 250 - ($(document).height() - $(window).scrollTop() - $(window).height()) ;
				$(".compare-d1").css("bottom", 0);
			}
			console.log($(window).scrollTop());
			
			/* 스크롤 올릴 때, 더 올라가는 버그 수정 */
			if ($(document).height() < $(window).scrollTop() + $(window).height() + 250 ) {
				var control = 0;
				control = 250 - ($(document).height() - $(window).scrollTop() - $(window).height()) ;
				$(".compare-d1").css("bottom", control+"px");
			}
		});
	});
	
	/* script용 모달열기 */
	$(function () {
        $(".complete-smcover").click(function(e) {
            // 스크립트를 사용하여 특정 Modal을 강제로 열기
            $("#similarModal").modal('show');
            // 아래는 창을 강제로 닫기 처리
            //$("#myModal").modal('hide');
        });
    });
	
	/* 하트 toggle */
	$(function() {
		$(".mg-heart-2d").click(function(e) {
			$(this).toggleClass('on off');
		});
	});
</script>


</body>
</html>