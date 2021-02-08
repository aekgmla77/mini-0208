<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript">
    setTimeout(function() {
    	opener.location.reload();
    	self.close();
    });
    setTimeout2(function() {
    	opener.location.reload();
    	self.close();
    });
</script>
<body>
	<!-- 메뉴바 Start -->
	<c:if test="${admin ne 'Y' }">
	<div class="navbar navbar-expand-lg bg-light navbar-light">
		<div class="container-fluid">
			<a href="main.do" class="navbar-brand">YD <span>Dosirak</span></a>
			<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
				<div class="navbar-nav ml-auto">			
					<a href="food.do" class="nav-item nav-link">메뉴</a>
					<a href="franchise.do" class="nav-item nav-link">창업</a>
					<a href="store.do" class="nav-item nav-link">매장</a>
					<a href="board.do" class="nav-item nav-link">게시판</a>
					<div class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" data-toggle="dropdown">브랜드</a>
						<div class="dropdown-menu">
							<a href="brand.do" class="dropdown-item">소개</a>
							<a href="feature.do" class="dropdown-item">특징</a>
							<a href="map.do" class="dropdown-item">오시는길</a>
						</div>
					</div>
					<c:if test="${admin eq null }">
					<div class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" data-toggle="dropdown">회원</a>
						<div class="dropdown-menu">
							<a href="createUser.do" class="dropdown-item">회원가입</a>
							<a href="#" class="dropdown-item" onclick="window.open
							('loginForm.do','_blank','height=500, width=600, location=no');return false">로그인</a>
						</div>
					</div>
					</c:if>
					<c:if test="${admin ne null }">
					<a href="logOut.do" class="nav-item nav-link">로그아웃</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	</c:if>
	<!-- 메뉴바 End -->
	<!-- 메뉴바(관리자) Start -->
	<c:if test="${admin eq 'Y' }">
	<div class="navbar navbar-expand-lg bg-light navbar-light">
		<div class="container-fluid">
			<a href="main.do" class="navbar-brand">YD <span>Dosirak</span></a>
			<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
				<div class="navbar-nav ml-auto">
					<div class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" data-toggle="dropdown">회원</a>
						<div class="dropdown-menu">
							<a href="memberList.do" class="dropdown-item">회원관리</a>
						</div>
					</div>
					<div class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" data-toggle="dropdown">메뉴</a>
						<div class="dropdown-menu">
							<a href="food.do" class="dropdown-item">메뉴</a>
							<a href="foodList.do" class="dropdown-item">메뉴관리</a>
						</div>
					</div>
					<div class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" data-toggle="dropdown">매장</a>
						<div class="dropdown-menu">
							<a href="store.do" class="dropdown-item">매장</a>
							<a href="storeList.do" class="dropdown-item">매장관리</a>
						</div>
					</div>
					<a href="board.do" class="nav-item nav-link">게시판</a>
					<a href="logOut.do" class="nav-item nav-link">로그아웃</a>
				</div>
			</div>
		</div>
	</div>
	</c:if>
	<!-- 메뉴바(관리자) End -->