<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../assets/inc/meta.jsp"%>

<!-- css 참조 -->
<link rel="stylesheet" type="text/css" href="../assets/css/reset.css" />
<link rel="stylesheet" type="text/css" href="ad_assets/ad_faq.css" />

</head>

<body>
	<!-- 브라우저에 보여질 부분 -->
	<!-- 페이지의 전체 폭을 결정하기 위한 영역 -->
	<div>
		<!-- 상단 헤더 -->
		<div id="header">
		<%@ include file="ad_inc/header.jsp"%>
			</div>
		</div>
		<!-- 중앙 영역 -->
		<div id="content">
			<div>
				<div class="adm-header">
					<h1>자주묻는질문</h1>
					<div class="adm">
						<div class="input-group">
							<span class="input-group-addon"> <span
								class="glyphicon glyphicon-search"></span>
							</span> <input type="text" class="form-control" /> <span
								class="input-group-btn">
								<button class="btn btn-default" type="button">검색</button>
							</span>
						</div>
						<div class="adm-btn pull-right">
							<input type="button" name="" class="btn btn-default" value="글쓰기">
							<input type="button" name="" class="btn btn-default" value="글수정">
							<input type="button" name="" class="btn btn-primary" value="글삭제">
						</div>
					</div>
				</div>
				<table class="table table-striped">
					<thead>
						<tr>
							<th class="text-center"><input type="checkbox"></th>
							<th class="text-center">글번호</th>
							<th class="text-center">제목</th>
							<th class="text-center">날짜</th>
							<th class="text-center">조회수</th>
							<th class="text-center">기타</th>
						</tr>
					</thead>
					<tbody>
						<!-- collapse 시작 (1)-->
						<tr class="collapse-title">
							<td class="text-center"><input type="checkbox"></td>
							<td class="text-center">1</td>
							<td class="text-center"><a href="#col-page-1">별방사이트에 대해서
									알고 싶어요</a></td>
							<td class="text-center">2019-10-19 11:10:24</td>
							<td class="text-center">65</td>
							<td class="text-center"></td>
						</tr>
						<!--hidden test-->
						<tr id="col-page-1" class="content">
							<td class="tab-panel">
							<td></td>
							<td>안녕하십니까, 별방의 관리자 조수민이라고 합니다.<br> 먼저 저희 사이틀 방문해 주시고
								이용해 주셔서 감사드립니다.<br> 저희 사이트는 부동산 중개 사이트로 원하시는 매물을 살 수도 있고,
								그것을 찜 할 수도 있습니다.<br> 또한 회원님께서도 매물이 있으면 저희 사이트를 통해서 판매가
								가능합니다.
							</td>
							<td></td>
							<td></td>
							<td></td>
							</td>
						</tr>
						<!--hidden test-->
						<!-- collapse 끝 (1)-->

						<!-- collapse 시작 (2)-->
						<tr class="collapse-title">
							<td class="text-center"><input type="checkbox"></td>
							<td class="text-center">1</td>
							<td class="text-center"><a href="#col-page-2">방주인 이메일
									어디에서 보나요?</a></td>
							<td class="text-center">2019-10-19 11:10:24</td>
							<td class="text-center">65</td>
							<td class="text-center"></td>
						</tr>
						<!--hidden test-->
						<tr id="col-page-2" class="content">
							<td class="tab-panel">
							<td><h3>탭페이지1</h3></td>
							</td>
						</tr>
						<!--hidden test-->
						<!-- collapse 끝 (2)-->
					</tbody>
				</table>
			</div>
		</div>

		<!-- 하단 영역 -->
		<div id="footer"></div>s
	<!-- Javascript -->
	<script src="../assets/js/jquery-1.10.2.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function() {
			/** 게시글의 제목을 클릭한 경우 호출되는 이벤트 정의 */
			$(".collapse-title a").click(function(e) {
				// 링크의 기본 동작(페이지 이동) 방지
				e.preventDefault();

				// 클릭한 요소의 href 속성을 가져온다 --> 내용영역의 id
				var target = $(this).attr('href');
				// 가져온 내용영역의 id를 화면에 표시한다.
				$(target).slideToggle(100);
				// 내용영역(.faqexplan)중에서
				// 클릭한 요소가 지정한 항목만 제외(not($(target)))
				// 하고 화면에서 숨긴다.
				$(".hiddenexplan").not($(target)).slideUp(100);
			});
		});
	</script>
</body>
</html>