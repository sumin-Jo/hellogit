<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 비교하기 바 -->
<div class="compare-d1" style="right: 0px; bottom: 0px;">
	<div class="compare-d2">
		<div class="compare-exp-d3" width="213">
			<p class="compare-exp-p1">방 비교하기</p>
			<p class="compare-exp-p2" size="13">최대 3개까지 비교할 수 있습니다.</p>
		</div>
		<div class="compare-select" id="select1">
			<div class="compare-select-d">
				<svg width="30" height="30" viewBox="0 0 32 32">
					<g fill="none" fill-rule="evenodd">
						<path stroke="#FFF" stroke-dasharray="2" d="M16 31c8.284 0 15-6.716 15-15 0-8.284-6.716-15-15-15C7.716 1 1 7.716 1 16c0 8.284 6.716 15 15 15z" opacity=".5"></path>
						<text fill="#FFF" font-family="Noto Sans KR" font-size="15" font-weight="700" transform="translate(1 1)">
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
						<path stroke="#FFF" stroke-dasharray="2" d="M16 31c8.284 0 15-6.716 15-15 0-8.284-6.716-15-15-15C7.716 1 1 7.716 1 16c0 8.284 6.716 15 15 15z" opacity=".5"></path>
						<text fill="#FFF" font-family="Noto Sans KR" font-size="15" font-weight="700" transform="translate(1 1)">
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
						<path stroke="#FFF" stroke-dasharray="2" d="M16 31c8.284 0 15-6.716 15-15 0-8.284-6.716-15-15-15C7.716 1 1 7.716 1 16c0 8.284 6.716 15 15 15z" opacity=".5"></path>
							<text fill="#FFF" font-family="Noto Sans KR" font-size="15" font-weight="700" transform="translate(1 1)">
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
				<a class="dis-block" href="<%=request.getContextPath()%>/assets/modal/ma_wish_comp.jsp" data-toggle="modal" data-target="#compareModal">비교하기</a>
			</button>
		</div>
	</div>
</div>