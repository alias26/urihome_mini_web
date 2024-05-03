<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css" type="text/css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">

<div id="header" class="header">
	<nav class="navbar navbar-expand-lg fixed-top bg-light">
		<div class="logo">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/">
			<img src="${pageContext.request.contextPath}/resources/image/common/LOGO.png" width="90" height="50"></a>
		</div>
		<button class="navbar-toggler ms-auto" type="button"
			data-bs-toggle="collapse"
			data-bs-target="#navbarDropdownCenter,#navbarDropdownEnd">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-center bg-light"
			id="navbarDropdownCenter">
			<ul class="navbar-nav">
				<li class="nav-item dropdown ms-3 me-3">
					<button class="btn" aria-expanded="false" 
					onclick="location.href = '${pageContext.request.contextPath}/product/product_list'">전체</button>
					
				</li>
				<li class="nav-item dropdown ms-3 me-3">
					<button class="btn" aria-expanded="false">신상품</button>
				</li>
				<li class="nav-item dropdown ms-3 me-3">
					<button class="btn" aria-expanded="false">BEST</button>
				</li>
				<li class="nav-item dropdown ms-3 me-3">
					<button class="btn" aria-expanded="false">그릇</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">소파 전체</a></li>
						<li><a class="dropdown-item" href="#">다인용 소파</a></li>
						<li><a class="dropdown-item" href="#">1인용 소파</a></li>
					</ul>
				</li>
				<li class="nav-item dropdown ms-3 me-3">
					<button class="btn" aria-expanded="false">접시</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">테이블 전체</a></li>
						<li><a class="dropdown-item" href="#">식탁</a></li>
						<li><a class="dropdown-item" href="#">책상</a></li>
						<li><a class="dropdown-item" href="#">사이드테이블</a></li>
						<li><a class="dropdown-item" href="#">소파테이블</a></li>
					</ul>
				</li>
				<li class="nav-item dropdown ms-3 me-3">
					<button class="btn" aria-expanded="false">수저세트</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">의자 전체</a></li>
						<li><a class="dropdown-item" href="#">인테리어 의자</a></li>
						<li><a class="dropdown-item" href="#">사무용 의자</a></li>
						<li><a class="dropdown-item" href="#">라운지체어</a></li>
						<li><a class="dropdown-item" href="#">스톨</a></li>
						<li><a class="dropdown-item" href="#">벤치</a></li>
					</ul>
				</li>
				<li class="nav-item dropdown ms-3 me-3">
					<button class="btn" aria-expanded="false">커뮤니티</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">공지사항</a></li>
						<li><a class="dropdown-item" href="#">자주 묻는 질문</a></li>
						<li><a class="dropdown-item" href="#">1대1 문의</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="d-flex">
			<div class="collapse navbar-collapse justify-content-end bg-light"
				id="navbarDropdownEnd">

				<ul class="navbar-nav">
					<li class="nav-item dropdown">
						<button class="btn" aria-expanded="false">
							<i class="bi bi-person-circle fs-5"></i>
						</button>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">주문조회</a></li>
							<li><a class="dropdown-item" href="#">관심상품</a></li>
							<li><a class="dropdown-item" href="#">최근 본 상품</a></li>
							<li><a class="dropdown-item" href="#">적립금</a></li>
							<li><a class="dropdown-item" href="#">쿠폰</a></li>
							<li><a class="dropdown-item" href="#">쓰임포인트</a></li>
							<li><a class="dropdown-item" href="#">나의정보</a></li>
							<sec:authorize access="isAnonymous()">
								<li class="text-center d-grid m-2"><a href="${pageContext.request.contextPath}/member/login" class="btn btn-dark btn-sm" aria-expanded="false">로그인</a></li>
								<li class="text-center d-grid m-2"><a href="${pageContext.request.contextPath}/member/joinForm"
									class="btn btn-sm" aria-expanded="false">회원가입</a></li>
							</sec:authorize>
							<sec:authorize access="isAuthenticated()">
								<!-- 사이트간 요청 위조 방지 설정이 비활성화되어 있을 경우 GET 방식으로 요청 가능 -->
								<!-- <b class="text-white me-2">
									<sec:authentication property="principal.username"/>
								</b> -->
								<li class="text-center d-grid m-2"><a href="${pageContext.request.contextPath}/logout"
									class="btn btn-sm btn-danger">로그아웃</a></li>
							</sec:authorize>
						</ul>
					</li>
					<li class="nav-item dropdown">
						<button class="btn" aria-expanded="false">
							<i class="bi bi-bag fs-5"></i>
						</button>
						<ul class="dropdown-menu">
							<li><p id="cartInfo">장바구니가 비어있습니다.</p></li>
							<hr>
							<li id="cartMoveButton" class="text-center">
								<button onclick="location.href = '${pageContext.request.contextPath}/cart'" class="btn btn-dark btn-sm" aria-expanded="false">
									장바구니로 이동</button>
							</li>
						</ul>
					</li>
					<li class="nav-item dropdown">
						<button class="btn" aria-expanded="false">
							<i class="bi bi-search fs-5"></i>
						</button>
						<ul class="dropdown-menu">
							<li>
								<form class="form-inline">
									<input class="form-control" type="search" placeholder="Search">
								</form>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
</div>
