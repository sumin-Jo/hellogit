<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>별방 관리자 로그인</title>
<%@ include file="../assets/inc/meta.jsp"%>
<!-- CSS적용 -->
<link rel="stylesheet" type="text/css" href="ad_assets/ad_login.css">
<style>
</style>
<script type="text/javascript">
	function check() {
		if (login_form.admin_id.value == "") {
			alert("아이디는 필수 입력 입니다.");
			login_form.admin_id.focus();
			return false;
		} else if(login_form.admin_pass.value == ""){
			alert("비밀번호도 필수 입력입니다.");
			login_form.admin_pass.focus();
			return false;
		} else if(login_form.admin_id.value != "admin" && login_form.admin_pass.value != "admin"){
			alert("아이디 또는 비밀번호가 달라요🤣");
			return false;
		}
		else return true;}
		
</script>
</head>

<body>
	<div id="admin">
		<div class="header">
			<div class="title">
				<img src="../assets/ico/logo_blue.png"></img>
				<p>관리자 사이트</p>
			</div>
		</div>
		<div id="content">
			<div class="loginf form-group">
				<form name="login_form" onsubmit="return check()" method="post"
					action="ad_main.jsp" enctype="text/plain">
					<label for="admin_id"> <input type="text" name="admin_id"
						placeholder="아이디" msg="writer" />
					</label> <br /> <label for="admin_password"> <input
						type="password" name="admin_pass" placeholder="비밀번호" /><br /> <input
						type="submit" value="로그인" />
					</label>
				</form>
			</div>
		</div>
	</div>

	<!-- Javascript -->
	<script src="../assets/js/jquery-1.10.2.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
</body>
</html>