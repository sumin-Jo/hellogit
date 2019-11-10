<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../assets/inc/meta.jsp"%>

<!-- css 참조 -->
<link rel="stylesheet" type="text/css" href="ad_assets/ad_userli.css" />

</head>

<body>
	<!-- 브라우저에 보여질 부분 -->
	<!-- 페이지의 전체 폭을 결정하기 위한 영역 -->
	<div>
		<%@ include file="ad_inc/header.jsp"%>
		<!-- 중앙 영역 -->
		<div id="content">
			<div>
				<div class="adm-header">
					<h1>회원관리</h1>
					<div class="adm">
						<div class="input-group">
							<span class="input-group-addon"> <span
								class="glyphicon glyphicon-search"></span>
							</span> <input type="text" class="form-control" /> <span
								class="input-group-btn">
								<button class="btn btn-default" type="submit">검색</button>
							</span>
						</div>
						<div class="adm-btn pull-right">
							<input type="button" name="" class="btn btn-default" value="방 삭제">
							<input type="button" name="" class="btn btn-primary" value="회원탈퇴">
						</div>
					</div>
				</div>
				<table class="table table-striped">
					<thead>
						<tr>
							<th class="text-center"><input type="checkbox"
								id="all_check"></th>
							<th class="text-center">회원번호</th>
							<th class="text-center">이름</th>
							<th class="text-center">이메일</th>
							<th class="text-center">휴대폰</th>
							<th class="text-center">방등록개수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="text-center"><input type="checkbox"
								class="userlist"></td>
							<td class="text-center">12345</td>
							<td class="text-center">박지원</td>
							<td class="text-center">bbb@abcd.com</td>
							<td class="text-center">010-0100-0010</td>
							<td class="text-center">1개</td>
						</tr>
						<tr>
							<td class="text-center"><input type="checkbox"
								class="userlist"></td>
							<td class="text-center"></td>
							<td class="text-center"></td>
							<td class="text-center"></td>
							<td class="text-center"></td>
							<td class="text-center"></td>
						</tr>
						<tr>
							<td class="text-center"><input type="checkbox"
								class="userlist"></td>
							<td class="text-center"></td>
							<td class="text-center"></td>
							<td class="text-center"></td>
							<td class="text-center"></td>
							<td class="text-center"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- 하단 영역 -->
		<div id="footer"></div>
	</div>
	<!-- Javascript -->
	<script src="../assets/js/jquery-3.2.1.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function() {
			/* 체크박스 전체선택 */
			$("#all_check").change(function() {
				$(".userlist").prop('checked', $(this).prop('checked'));
			});
		});
	</script>
</body>
</html>