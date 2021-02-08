<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Title -->
<title>회원가입</title>

<!-- CSS 라이브러리 -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

<!-- CSS 스타일 -->
<link href="css/style.css" rel="stylesheet">

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function formCheck() {
		if (frm.mPassword.value != frm.mPasswordc.value) {
			alert("패스워드가 일치하지 않습니다.");

			frm.mPassword.value = null;
			frm.mPasswordc.value = null;
			frm.mPassword.focus();

			return false;
		}

		return true;
	}

	function idCheck(str) {
		var url = "idCheck.do?mId=" + str;
		if (str == "") {
			alert("아이디를 입력하세요!");
			frm.mId.focus();
		} else {
			window.open(url, "아이디 중복 체크",
					"width=500, height=300, top=100, left=100");
		}
	}
</script>
</head>
<body>
<div class="navbar navbar-expand-lg bg-light navbar-light">
	<div class="container-fluid">
		<a href="main.do" class="navbar-brand">YD <span>Dosirak</span></a>
		<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
		<span class="navbar-toggler-icon"></span>
		</button>
	</div>
</div>
	<div class="card bg-light">
		<article class="card-body mx-auto" style="max-width: 400px;">
			<h4 class="card-title mt-3 text-center">회원 가입</h4>
			<form id="frm" name="frm" class="form-text" action="memberInsert.do" method="post" onsubmit="return formCheck()">
				<!-- 이름 입력 -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
						<i class="fa fa-user"></i></span>
					</div>
					<input id="mName" name="mName" class="form-control" placeholder="이름" type="text" required="required">
				</div>
				<!-- ID 입력 -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
						<i class="far fa-address-card"></i></span>
					</div>
					<input name="mId" id="mId" class="form-control" placeholder="ID" type="text" required="required">
					<button class="button btn1" type="button" onclick="idCheck(mId.value)">중복체크</button>
				</div>
				<!-- 비밀번호 입력 -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
						<i class="fa fa-lock"></i></span>
					</div>
					<input name="mPassword" id="mPassword" class="form-control" placeholder="비밀번호" type="password" required="required">
				</div>
				<!-- 비밀번호 확인 -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
						<i class="fa fa-lock"></i></span>
					</div>
					<input name="mPasswordc" id="mPasswordc" class="form-control" placeholder="비밀번호 확인" type="password" required="required">
				</div>
				<!-- Email 입력 -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
						<i class="fa fa-envelope"></i></span>
					</div>
					<input name="mEmail" id="mEmail" class="form-control" placeholder="Email" type="email" required="required">
				</div>
				<!-- 연락처 입력 -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
						<i class="fa fa-phone"></i></span>
					</div>
					<input name="mTel" id="mTel" class="form-control" placeholder="연락처(***-****-****)" type="text" required="required">
				</div>
				<!-- 주소 입력 -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
						<i class="far fa-address-card"></i></span>
					</div>
					<input name="mAddress" id="mAddress" class="form-control" placeholder="주소" type="text" required="required">
				</div>
				<!-- 생년월일 입력 -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
						<i class="fas fa-birthday-cake"></i></span>
					</div>
					<input name="mBirth" id="mBirth" class="form-control" placeholder="생년월일(YY/MM/DD)" type="text" required="required">
				</div>
				<!-- form-group End -->
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-block">회원 가입</button>
				</div>
				<p class="text-center">가입된 회원이십니까? <a href="loginForm.do">Log In</a></p>
			</form>
		</article>
	</div>
</body>
</html>