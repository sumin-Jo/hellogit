<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<head>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/modal_assets/wish_comp.css" />
</head>

<!-- .modal -->
<!-- <div id="myModal" class="modal fade" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true"> -->
	<!-- .modal-dialog -->
	<!-- 여백잡아주는박스  -->
	<!-- <div class="modal-dialog marginbox"> -->
		<!-- .modal-content -->
		<!-- 여기가 나오는부분 -->
		<div class="modal-content mainbox">
			<div id="header" class="height">
				<h1>방 비교하기</h1>
			</div>
			<div class="content">
				<table class="tableconfig">
					<colgroup>
						<col width="33.3%"><col width="33.3%"><col width="33.3%">
					</colgroup>

					<!-- table 1번째 시작 -->
					<tbody>
						<tr>
							<td>
								<!-- 닫기버튼 -->
								<button class="bclose">
									<svg width="9" height="9" viewbox="0 0 9 9">
										<g fill="none" fill-rule="evenodd" stroke="#222" stroke-width=".6">
											<path d="M.543.814l7.936 7.937M.543 8.75L8.479.815"></path>
										</g>
									</svg>
								</button>
								<p class="tbody-top-p">매물번호 9183566</p>
							</td>
							<td>
								<button class="bclose">
									<svg width="9" height="9" viewbox="0 0 9 9">
										<g fill="none" fill-rule="evenodd" stroke="#222" stroke-width=".6">
											<path d="M.543.814l7.936 7.937M.543 8.75L8.479.815"></path>
										</g>
									</svg>
								</button>
								<p class="tbody-top-p">매물번호 9022588</p>
							</td>
							<td>
								<button class="bclose">
									<svg width="9" height="9" viewbox="0 0 9 9">
										<g fill="none" fill-rule="evenodd" stroke="#222" stroke-width=".6">
											<path d="M.543.814l7.936 7.937M.543 8.75L8.479.815"></path>
										</g>
									</svg>
								</button>
								<p class="tbody-top-p">매물번호 8916792</p>
							</td>
						</tr>
						<tr>
							<td><div class="compare-img1"></div></td>
							<td><div class="compare-img2"></div></td>
							<td><div class="compare-img3"></div></td>
						</tr>
						<tr>
							<td><p class="room-num">쓰리룸</p></td>
							<td><p class="room-num">원룸</p></td>
							<td><p class="room-num">투룸</p></td>
						</tr>
						<tr>
							<td><p class="room-price">월세 2000/30</p></td>
							<td><p class="room-price">전세 6000</p></td>
							<td><p class="room-price">전세 1억 6900</p></td>
						</tr>
					</tbody>
					<!-- 테이블 1번째 끝 -->

					<!-- 테이블 2번째 시작 -->
					<table class="tableconfig">
						<colgroup>
							<col width="33.3%"><col width="33.3%"><col width="33.3%">
						</colgroup>
						<tbody>
							<tr>
								<th>가격대</th>
								<th>가격대</th>
								<th>가격대</th>
							</tr>
							<tr>
								<td class="table2-margin">
									<p class="table2-price-lp">가격</p>
									<p class="table2-price-rp">
										<span>월세 2000/30</span>
										<span>월세 1500/50</span>
										<span>전세 2억 3000</span>
									</p>
								</td>
								<td class="table2-margin">
									<p class="table2-price-lp">가격</p>
									<p class="table2-price-rp">
										<span>전세 6000</span>
									</p>
								</td>
								<td class="table2-margin">
									<p class="table2-price-lp">가격</p>
									<p class="table2-price-rp">
										<span>전세 1억 6900</span>
									</p>
								</td>
							</tr>
							<tr>
								<td class="table2-margin" style="padding-bottom: 20px;">
									<p class="table2-price-lp">관리비</p>
									<p class="table2-price-rp">2만 원 (청소비)</p>
								</td>
								<td class="table2-margin" style="padding-bottom: 20px;">
									<p class="table2-price-lp">관리비</p>
									<p class="table2-price-rp">5만 원 (인터넷, 유선 TV, 청소비)</p>
								</td>
								<td class="table2-margin" style="padding-bottom: 20px;">
									<p class="table2-price-lp">관리비</p>
									<p class="table2-price-rp">없음</p>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- 테이블 2번째 끝 -->

					<!-- 테이블 3번째 -->
					<table class="tableconfig">
							<colgroup><col width="33.3%"><col width="33.3%"><col width="33.3%"></colgroup>
							<tbody>
								<tr>
									<th>상세정보</th>
									<th>상세정보</th>
									<th>상세정보</th>
								</tr>
								<tr>
									<td class="table3-padding">
										<p class="table3-detail-lp">주소</p>
										<p class="table3-detail-rp">서울특별시 강서구 화곡동</p>
									</td>
									<td class="table3-padding">
										<p class="table3-detail-lp">주소</p>
										<p class="table3-detail-rp">경기도 화성시 남양읍</p>
									</td>
									<td class="table3-padding">
										<p class="table3-detail-lp">주소</p>
										<p class="table3-detail-rp">서울특별시 강서구 화곡동</p>
									</td>
								</tr>
								<tr>
									<td class="table3-padding">
										<p class="table3-detail-lp">면적</p>
										<p class="table3-detail-rp">52.89㎡(66.11㎡)</p>
									</td>
									<td class="table3-padding">
										<p class="table3-detail-lp">면적</p>
										<p class="table3-detail-rp">29.75㎡(39.66㎡)</p>
									</td>
									<td class="table3-padding">
										<p class="table3-detail-lp">면적</p>
										<p class="table3-detail-rp">49.58㎡(59.5㎡)</p>
									</td>
								</tr>
								<tr>
									<td class="table3-padding">
										<p class="table3-detail-lp">층수</p>
										<p class="table3-detail-rp">4층</p>
									</td>
									<td class="table3-padding">
										<p class="table3-detail-lp">층수</p>
										<p class="table3-detail-rp">3층</p>
									</td>
									<td class="table3-padding">
										<p class="table3-detail-lp">층수</p>
										<p class="table3-detail-rp">7층</p>
									</td>
								</tr>
								<tr>
									<td class="table3-padding" style="padding-bottom: 20px;">
										<p class="table3-detail-lp">주차</p>
										<p class="table3-detail-rp">가능(무료)</p>
									</td>
									<td class="table3-padding" style="padding-bottom: 20px;">
										<p class="table3-detail-lp">주차</p>
										<p class="table3-detail-rp">가능(무료)</p>
									</td>
									<td class="table3-padding" style="padding-bottom: 20px;">
										<p class="table3-detail-lp">주차</p>
										<p class="table3-detail-rp">가능(무료)</p>
									</td>
								</tr>
							</tbody>
						</table>
						<!-- 테이블 3번째 끝 -->

						<!-- 테이블 4번째 -->
						<table class="tableconfig">
							<colgroup><col width="33.3%"><col width="33.3%"><col width="33.3%"></colgroup>
							<tbody>
								<tr>
									<th>옵션</th>
									<th>옵션</th>
									<th>옵션</th>
								</tr>
								<tr>
									<td class="table4-padding">-</td>
									<td class="table4-padding">
										<p class="table4-option-p">에어컨, 세탁기, 침대, 신발장, 냉장고, 인덕션, 전자도어락, TV</p>
									</td>
									<td class="table4-padding">
										<p class="table4-option-p">에어컨, 세탁기, 신발장, 냉장고, 가스레인지, 전자도어락</p>
									</td>
								</tr>
							</tbody>
						</table>
						<!-- 테이블 4번째 -->
						<!-- 테이블 5번째 -->
						<table class="tableconfig">
    					<colgroup>
    					    <col width="33.3%"><col width="33.3%"><col width="33.3%"></colgroup>
    					            <tbody>
    					                <tr>
    					                    <th>기타</th>
    					                    <th>기타</th>
    					                    <th>기타</th>
    					                </tr>
    					                <tr>
    					                    <td class="table5-padding">
    					                        <p class="table5-option-p">개별난방</p>
    					                        <p class="table5-option-p">빌트인 아님</p>
    					                        <p class="table5-option-p">엘리베이터 있음</p>
    					                        <p class="table5-option-p">반려동물 가능</p>
    					                        <p class="table5-option-p">발코니/베란다 없음</p>
    					                        <p class="table5-option-p">전세자금대출 가능</p>
    					                        <p class="table5-option-p">날짜 협의</p>
    					                        <p class="table5-option-p">공인중개사 중개거래</p>
    					                    </td>
    					                    <td class="table5-padding">
    					                        <p class="table5-option-p">개별난방</p>
    					                        <p class="table5-option-p">빌트인 아님</p>
    					                        <p class="table5-option-p">엘리베이터 있음</p>
    					                        <p class="table5-option-p">반려동물 가능</p>
    					                        <p class="table5-option-p">발코니/베란다 없음</p>
    					                        <p class="table5-option-p">전세자금대출 가능</p>
    					                        <p class="table5-option-p">날짜 협의</p>
    					                        <p class="table5-option-p">공인중개사 중개거래</p>
    					                    </td>
    					                    <td class="table5-padding">
    					                        <p class="table5-option-p">개별난방</p>
    					                        <p class="table5-option-p">빌트인 주방</p>
    					                        <p class="table5-option-p">엘리베이터 있음</p>
    					                        <p class="table5-option-p">반려동물 가능</p>
    					                        <p class="table5-option-p">발코니/베란다 없음</p>
    					                        <p class="table5-option-p">전세자금대출 가능</p>
    					                        <p class="table5-option-p">즉시 입주</p>
    					                        <p class="table5-option-p">공인중개사 중개거래</p>
    					                    </td>
    					                </tr>
    					                <tr>
    					                    <td class="last-contact-td">
    					                        <div class="last-contact-div">
    					                            <div>
    					                                <div>
    					                                	<p>조수민</p>
    					                                    <p>breath@naver.com</p>
    					                                </div>
    					                            </div>
    					                            <button>문의하기</button>
    					                        </div>
    					                    </td>
    					                    <td class="last-contact-td">
    					                        <div class="last-contact-div">
    					                            <div>
    					                                <div>
    					                                    <p>김상태</p>
    					                                    <p>status@gmail.com</p>
    					                                </div>
    					                            </div>
    					                            <button>문의하기</button>
    					                        </div>
    					                    </td>
    					                    <td class="last-contact-td">
    					                        <div class="last-contact-div">
    					                            <div>
    					                                <div>
    					                                    <p>김수진</p>
    					                                    <p>sujinzzang@daum.net</p>
    					                                </div>
    					                            </div>
    					                            <button>문의하기</button>
    					                        </div>
    					                    </td>
    					                </tr>
    					            </tbody>
    					        </table>
						</table>
					</div>
				</div>
				<!-- /.modal-content -->

<script>
	$(function(){
		$(".last-contact-div").click(function(){
			$(this).toggleClass("last-contact-div last-contact-div-open");
		});
	});
</script>