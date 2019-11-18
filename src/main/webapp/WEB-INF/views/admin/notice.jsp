<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../assets/inc/meta.jsp"%>

<!-- css 참조 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/ad_css/notice.css" />

</head>

<body>
	<!-- 페이지의 전체 폭을 결정하기 위한 영역 -->
	<div class="root">
		<!-- 상단 영역 -->
		<%@ include file="../assets/inc/ad_header.jsp"%>
		<!-- 중앙 영역 -->
		<div id="content">
			<div>
				<div class="adm-header">
					<h1>관리자 공지사항</h1>
					<div class="adm">
						<div class="input-group">
							<span class="input-group-addon">
								<span class="glyphicon glyphicon-search"></span>
							</span>
							<input type="text" class="form-control" />
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">검색</button>
							</span>
						</div>
						<div class="adm-btn pull-right">
							<input type="button" name="" class="btn btn-default" value="글쓰기" onclick="location.href='${pageContext.request.contextPath}/admin/write.do'">
							<input type="button" name="" class="btn btn-default" value="글수정" onclick="location.href='${pageContext.request.contextPath}/admin/edit.do'">
							<input type="button" name="" class="btn btn-primary" value="글삭제">
						</div>
					</div>
				</div>
				<table class="table table-striped">
					<thead>
						<tr>
							<th class="text-center"><input type="checkbox"></th>
							<th class="text-center col-md-1">글번호</th>
							<th class="text-center col-md-7">제목</th>
							<th class="text-center col-md-2">업로드 날짜</th>
							<th class="text-center col-md-2">수정된 날짜</th>
						</tr>
					</thead>
					<tbody>
						<!-- collapse 시작 (1)-->
						<tr class="collapse-title">
							<td class="text-center"><input type="checkbox"></td>
							<td class="text-center col-md-1">1</td>
							<td class="text-center col-md-7 tdx"><a href="#col-page-1">별방사이트에 가입해주셔서 감사합니다.</a></td>
							<td class="text-center col-md-2">2019-10-19 23:10:24</td>
							<td class="text-center col-md-2">2019-11-09 23:10:00</td>
						</tr>						
						<!--hidden test-->
							<tr id="col-page-1" class="content">
								<td class="tab-panel "></td>
								<td class="col-md-1"></td>
								<td id="tdx" class="col-md-7 tdx">안녕하십니까 <br> 먼저 저희 사이틀 방문해 주시고 이용해 주셔서 감사드립니다.<br> 저희 사이트는 부동산 중개 사이트로 원하시는 매물을 살 수도 있고, 그것을 찜 할 수도 있습니다.<br> 또한 회원님께서도 매물이 있으면 저희 사이트를 통해서 판매가 가능합니다.</td>
								<td class="col-md-2"></td>
								<td class="col-md-2"></td>
	
							</tr>
						<!--hidden test-->
						<!-- collapse 끝 (1)-->

						<!-- collapse 시작 (2)-->
						<tr class="collapse-title">
							<td class="text-center"><input type="checkbox"></td>
							<td class="text-center col-md-1">2</td>
							<td class="text-center col-md-7 tdx"><a href="#col-page-2">[이벤트] 100번째 행운을 잡아라!!!</a></td>
							<td class="text-center col-md-2">2019-10-20 17:51:25</td>
							<td class="text-center col-md-2">2019-11-09 23:10:00</td>
						</tr>						
						<!--hidden test-->
							<tr id="col-page-2" class="content">
								<td class="tab-panel"></td>
								<td class="col-md-1"></td>
								<td id="tdx" class="col-md-7 tdx">별방 사이트에서 고마우신 회원님들을 대상으로 100번째 행운을 잡는 이벤트를 마련하였습니다. <br /> 사이트를 이용하시면 중간에 뜨는 100이라는 숫자 팝업을 클릭해주시면 이벤트에 자동 응모됩니다.</td>
								<td class="col-md-2"></td>
								<td class="col-md-2"></td>	
							</tr>
						<!--hidden test-->
						<!-- collapse 끝 (2)-->
					</tbody>
				</table>
			</div>
		</div>
		
		<!-- 하단 영역 -->
		<div id="footer"></div>
	</div> <!-- root 끝 -->
	<!-- Javascript -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery-1.10.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
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
             $(".content").not($(target)).slideUp(100);
          });
       });
    </script>
</body>
</html>