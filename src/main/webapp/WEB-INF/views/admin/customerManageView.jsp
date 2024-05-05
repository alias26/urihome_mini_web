<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/admin/productManageView.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- jquery -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<!-- user script-->
<script>
	
</script>
<style>
</style>
</head>
<body id="wrap" style="overflow-x: hidden">
	<div class="row">
		<div class="col-xl-2 col-lg-3">
			<%@ include file="/WEB-INF/views/admin/adminHeader.jsp"%>
		</div>
		<!--  -->
		<div class="col-xl-10 col-lg-9 table-responsive-lg"
			style="padding-left: 8px;">
			<!-- Dashboard 헤더 -->
			<div class="content-header mb-5 ms-0" style="height: 65px;">
					<h4 class="text-light text-uppercase mb-0">고객관리</h4>
					<a href="${pageContext.request.contextPath}/logout"><i
						class="fas fa-sign-out-alt text-danger fa-lg me-0"></i></a>
			</div>
			<div class="card" style="width:95%; margin: 0 auto;">
				<div class="card-body">
					<table class="table table-bordered table-striped table-hover"
						id="productInfoTable">
						<thead class="table-secondary">
							<tr>
								<th scope="col">상품 번호</th>
								<th scope="col">상품 이미지</th>
								<th scope="col">상품 이름</th>
								<th scope="col">상품 가격</th>
								<th scope="col">상품 재고</th>
								<th scope="col">상품 판매량</th>
								<th scope="col">상품 판매 금액</th>
								<th scope="col">상품 추가 날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="product" items="${productList}">
									<tr>
										<td>${product.pid}</td>
										<td><img
											src=""
											width="90px" height="90px"></td>
										<td><a href=""></a></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="d-flex justify-content-between">
						<nav class="ms-auto me-auto" aria-label="">
							<ul class="pagination pagination-sm">
								<c:if test="${pager.groupNo>1}">
									<li class="page-item"><a class="page-link" href="productList?pageNo=1"><<</a></li>
									<li class="page-item"><a class="page-link" href="productList?pageNo=${pager.startPageNo-1}"><</a></li>
								</c:if>
								<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
									<li class="page-item">
									<a class="page-link ${pager.pageNo==i ?'active':''}" href="productManageView?pageNo=${i}">${i}</a></li>
								</c:forEach>
								<c:if test="${pager.groupNo<pager.totalGroupNo}">
									<li class="page-item"><a class="page-link" href="productList?pageNo=1">></a></li>
									<li class="page-item"><a class="page-link" href="productList?pageNo=${pager.startPageNo-1}">>></a></li>
								</c:if>
							</ul>
						</nav>
						<a href="" class="btn btn-info"
							id="">등록</a>
						<a href="" class="btn btn-info"
							id="">삭제</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>