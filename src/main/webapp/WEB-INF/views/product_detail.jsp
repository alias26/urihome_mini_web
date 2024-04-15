<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <!-- Bootstrap 5를 위한 외부 라이브러리 설정 -->
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	  <!-- jQuery 외부 라이브러리 설정 -->
	  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	  <link href="${pageContext.request.contextPath}/resources/css/product_detail.css" rel="stylesheet">
	  
	  <!-- 사용자 정의 자바스크립트 -->
	  <script>
	   // tab-menu
	  	$(function(){
		  $('.tabcontent > div').hide();
		  $('.tabnav a').click(function () {
		    $('.tabcontent > div').hide().filter(this.hash).fadeIn();
		    $('.tabnav a').removeClass('active');
		    $(this).addClass('active');
		    return false;
		  }).filter(':eq(0)').click();
		  });
	  </script>
	  <script>
		  $(".que").click(function() {
			   $(this).next(".anw").stop().slideToggle(300);
			  $(this).toggleClass('on').siblings().removeClass('on');
			  $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
			});
	  </script>
	  
   </head>
   	<!-- css 적용 -->
   	<link href="${pageContext.request.contextPath}/resources/css/product_detail.jsp" rel="stylesheet">
   <body>
   <%@ include file="/WEB-INF/views/common/header.jsp" %>
   <div class ="container">
	<!-- 상품 상세 페이지 상단 -->
	   	<div class="d-flex" style="align-items: center;">	
			<!-- 이미지 -->
			<div class= "image-box" style="flex:1; text-align : center;">
				<img id="key-product" 
					src="https://ssueim.com/web/product/big/202305/d066a2cc427364ba14a7bface9bef1ae.jpg"
					style="border-radius:3%; ">
			</div>
			

	   		<!-- 상품 정보 -->
	   		<div style="flex:1; ">
		   		<div class="text-box" style=" width:500px; margin: auto; margin-top: 40px;">
		   			<div id="info" style="margin-top: 80px;"> 
		   				<div id="name">굿바이브 머그 2P (2color)</div>
		   				<div id="price">25% 30,200원</div>
		   			</div>	   				
		   			
		   			<div id="detail">
		   				<div class="d-flex" style="margin-top: 30px;">
		   					<p style="margin-right: 30px;">상품코드</p>
		   					<p>P0000MCV</p>
		   				</div>
		   				<div class="d-flex" >
		   					<p style="margin-right: 45px;">배송비</p>
		   					<p>3000원(50,000원 이상 구매 시 무료)</p>
		   				</div>
		   				<div class="d-flex" >
		   					<p style="margin-right: 45px;">브랜드</p>
		   					<p>쓰임</p>
		   				</div>
		   			</div>
		   			<hr/>
		   			
		   			<!-- 옵션 선택 -->
		   			<div id="option" style="margin-top: 20px; margin-bottom: 20px;">
		   			  <label for="color" class="form-label">색상1</label>
	                  <select id="color" name="color" class="form-control">
	                  <option selected value ="select">- [필수] 옵션을 선택해 주세요. -</option>
	                  <option value="vertical">------------------</option>
	                  <option value="white">화이트</option>
	                  <option value="light-purple">라이트퍼플</option>
	                </select> 
		   			</div>
		   			
		   			<div id="option" style="margin-bottom: 60px;">
		   			  <label for="color" class="form-label">색상2</label>
	                  <select id="color" name="color" class="form-control">
	                  <option selected value ="select">- [필수] 옵션을 선택해 주세요. -</option>
	                  <option value="vertical">------------------</option>
	                  <option value="white">화이트</option>
	                  <option value="light-purple">라이트퍼플</option>
	                </select>
		   			</div>
		   		
		   			<hr/>
		   			
		   			<!-- 총 상품금액 -->
		   			<div id="total">
		   				<div id="total-price" class="d-flex" style="justify-content: space-between; margin-bottom: 50px;">
		   					<p>총 상품금액</p>
		   					<p>0 원</p>
		   				</div>
		   				
			   			<!-- 버튼 -->
			   		<div class="d-flex">
	   				    <button type="button" class="btn btn-lg product_btn me-1" style="border: solid 0.5px; flex:1;">
	   				    	<img src="${pageContext.request.contextPath}/resources/image/star.png" width="27px;">
	   				    </button>
	   					<button type="button" class="btn btn-lg product_btn me-1" style="border: solid 0.5px; flex:3;">장바구니</button>
	   					<button type="button" class="btn btn-lg product_btn btn-dark me-1" style="border: solid 0.5px; flex:3;">구매하기</button>
		   			</div>	
		   		 </div>
		   		</div>
	   		</div>
	   	</div>   
	   
	   <!-- tap 메뉴  -->
	   	<div id="tab-menu" style="margin-top: 200px;">
	   		 <div class="tab" >
			    <ul class="tabnav" style="text-align: center; ">
			      <li><a href="#tab01">상세정보</a></li>
			      <li><a href="#tab02">구매안내</a></li>
			      <li><a href="#tab03">구매후기</a></li>
			      <li><a href="#tab04">Q&A</a></li>
			      <li><a href="#tab05">관련상품</a></li>
			    </ul>
			 </div> 
		</div>
		    <!-- 상세정보 -->
		    <div class="tabcontent" style="height:100%; margin-top: 100px;">
		      <div id="tab01" style="text-align: center;">
		      	<img alt="info" src="/urihome_mini_web/resources/image/info.png">
		      </div>
		    </div>
		    <!-- 상세정보 -->
			    
		    <!-- 구매안내 -->
		    <div class="tabcontent">
		    	<div id="tab02">
		    	<!-- 아코디언 -->
				  <div class="accordion-item">
				    <h2 class="accordion-header" style="margin-bottom: 20px;">
				      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" >
				       	결제
				      </button>
				    </h2>
				    <div id="collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
				      <div class="accordion-body" style="margin-bottom: 20px;"> 
				      	<div id="accordion-text" class= "d-flex flex-column">
				      		<span>고액결제의 경우 안전을 위해 카드사에서 확인전화를 드릴 수도 있습니다. 확인과정에서 도난 카드의 사용이나 타인 명의의 주문등 정상적인 주문이 아니라고 판단될 경우 임의로 주문을 보류 또는 취소할 수 있습니다.</span>  
							<span>무통장 입금은 상품 구매 대금은 PC뱅킹, 인터넷뱅킹, 텔레뱅킹 혹은 가까운 은행에서 직접 입금하시면 됩니다.</span>
							<span>주문시 입력한 입금자명과 실제입금자의 성명이 반드시 일치하여야 하며, 7일 이내로 입금을 하셔야 하며 입금되지 않은 주문은 자동취소 됩니다.</span>
				      	</div>
				      </div>
				    </div>
				  </div>
				  
				  <hr/>
					  
				  <div class="accordion-item">
				    <h2 class="accordion-header"  style="margin-bottom: 20px;">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">배송
				      </button>
				    </h2>
				    <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
				      <div class="accordion-body d-flex flex-column"id ="accordion-text">
				      		<span>배송 방법 : 택배</span>
				      		<span>배송 지역 : 전국지역</span>
				      		<span>배송 비용 : 3,000원</span>
				      		<span>배송 기간 : 1일 ~ 3일</span>
				      		<span>배송 안내 : - 산간벽지나 도서지방은 별도의 추가금액을 지불하셔야 하는 경우가 있습니다.</span>
				      		<span>고객님께서 주문하신 상품은 입금 확인후 배송해 드립니다. 다만, 상품종류에 따라서 상품의 배송이 다소 지연될 수 있습니다.</span>
				      </div>
				    </div>
				  </div>
				  
				  <hr/>
					  
				  <div class="accordion-item">
				    <h2 class="accordion-header"style="margin-bottom: 20px;">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
				        	교환/반품
				      </button>
				    </h2>
				    <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
				      <div class="accordion-body d-flex flex-column" id="accordion-text">
				      		<strong>교환 및 반품이 가능한 경우</strong>
							<span>- 상품을 공급 받으신 날로부터 7일이내 단, 가전제품의
							  경우 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우에는 교환/반품이 불가능합니다.</span>
							<span>- 공급받으신 상품 및 용역의 내용이 표시.광고 내용과
							  다르거나 다르게 이행된 경우에는 공급받은 날로부터 3월이내, 그사실을 알게 된 날로부터 30일이내</span>
							
							<strong>교환 및 반품이 불가능한 경우</strong>
							<span>- 고객님의 책임 있는 사유로 상품등이 멸실 또는 훼손된 경우. 단, 상품의 내용을 확인하기 위하여
							  포장 등을 훼손한 경우는 제외</span>
							<span>- 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우
							  (예 : 가전제품, 식품, 음반 등, 단 액정화면이 부착된 노트북, LCD모니터, 디지털 카메라 등의 불량화소에
							  따른 반품/교환은 제조사 기준에 따릅니다.</span>
							<span>- 고객님의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우 단, 화장품등의 경우 시용제품을
							  제공한 경우에 한 합니다.</span>
							<span>- 시간의 경과에 의하여 재판매가 곤란할 정도로 상품등의 가치가 현저히 감소한 경우</span>
							<span>- 복제가 가능한 상품등의 포장을 훼손한 경우
							  (자세한 내용은 고객만족센터 1:1 E-MAIL상담을 이용해 주시기 바랍니다.)</span>
							
							※ 고객님의 마음이 바뀌어 교환, 반품을 하실 경우 상품반송 비용은 고객님께서 부담하셔야 합니다.
							  (색상 교환, 사이즈 교환 등 포함)
				      </div>
				    </div>
				  </div>
				 </div>
				</div>
			 <!-- 구매 안내 -->
					  
		  <!-- REVIEW -->
		  <div class="tabcontent" style="margin-top: 100px; margin-bottom: 100px;">
		  	<div id="tab03">
			<div class="d-flex" id="review-top" style="justify-content: space-between;">
				<h6><strong>REVIEW (2)</strong></h6>
				<div>
				<button type="button" class="btn btn-sm" style="border: solid 0.5px;">리뷰등록</button>
				<button type="button" class="btn btn-sm" style="border: solid 0.5px;">모두보기</button>
			 	</div>
			</div>
			<hr/>
			
			<div id="review">
		  	 <div id="review1">
		  		<div id="review-title" style="margin-bottom: 10px;"><strong>좋아요.</strong></div>
		  		<div id="review-content">색상이 차분하고 무게도 생각보다 너무 무겁지 않아서 사용하기 좋아요.</div>
		  		<div id="review-writer" style="color: gray; margin-top: 30px;">
		  		 	<p>y**** | 2024.04.14</p>
		  		</div>
		  	</div>
		  	<hr/>
		  	
		  	<div id="review2">
		  		<div id="review-title" style="margin-bottom: 10px;"><strong>넘고급스러워요~</strong></div>
		  		<div id="review-content">기존에 있는 컵들 종류가여러개라 짝맞춰교체햇는데 마음에들어요~~!!</div>
		  		<div id="review-writer" style="color: gray; margin-top: 30px;">
		  		 	<p>A**** | 2024.04.01</p>
		  		</div>
		  	</div>
		  	</div>
		  	<hr/>
		  	
		  	<!-- pagination bootstrap
		  	<nav aria-label="page">
			  <ul class="pagination">
			    <li class="page-item"><a class="page-link" href="tabcontent03"><</a></li>
			    <li class="page-item"><a class="page-link" href="#">1</a></li>
			    <li class="page-item"><a class="page-link" href="#">2</a></li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item"><a class="page-link" href="#">></a></li>
			  </ul>
			</nav>
			-->

		  	</div>
		  </div>
		  <!-- Review -->
					
			<!-- QnA -->
			<div class="tabcontent" style="margin-bottom: 100px;">
			 <div id="tab04">
			 	<div class="d-flex" id="qna-top" style="justify-content: space-between;">
				 	<h6><strong>Q&A (1)</strong></h6>
				 	<div>
				 	<button type="button" class="btn btn-sm" style="border: solid 0.5px;">문의등록</button>
					<button type="button" class="btn btn-sm" style="border: solid 0.5px;">모두보기</button>
					</div>
				</div>
			 	<hr/>
			 	
			 	<div id="qna" style="font-size: 12px;">
			 	  <div id="qna-title"><strong>배송관련문의</strong></div>
			 	  <div id="qna-writer" style="color: gray; margin-top: 20px;">b*** | 2023.08.29</div>
			 	</div>
			 	<hr/>
			 	
			 </div>
			</div>
			  <!-- QnA -->
			<div class="tabcontent">
			 <div id="tab05">
			  <div id="relatedproduct">
			  	<div id="relatedproduct-title" style="margin-bottom: 30px; ">관련상품</div>
			  	  <div class="d-flex" id="relatedproduct-detail" style="margin-bottom: 50px;">
				  	  <div id="relatedproduct-detail1" style="margin-right: 20px;">
					  	<img alt="" src="https://ssueim.com/web/product/medium/202304/95d9ef876f63d90403281c44a7f51b9a.jpg"
					  			width="200px;" style="border-radius: 10px; margin-bottom: 20px;">
					  	<div id="name" style="font-size: 14px;">데일리 빅머그 2p (5colors)</div>
					  	<div id="price">16,500원</div>
					  </div>
					  
					  <div id="relatedproduct-detail2" style="margin-right: 20px;">
						<img alt="" src="https://ssueim.com/web/product/medium/201705/3889_shop1_482721.jpg"
					  		width="200px"; style="border-radius: 10px; margin-bottom: 20px;">
					  	<div id="name" style="font-size: 14px;">루이즈 에디션 머그 (핑크)</div>
					  	<div id="price">8,500원</div>
				  	</div>
				  	
				  	<div id="relatedproduct-detail3" style="margin-right: 20px;">
					  	<img alt="" src="https://ssueim.com/web/product/big/202207/fff205f05c28f519a6a765833eec68f7.jpg"
					  		width="200px"; style="border-radius: 10px; margin-bottom: 20px;">
					  	<div id="name" style="font-size: 14px;">어라운드 머그 (3color)</div>
					  	<div id="price">10,900원</div>
				  	</div>
				  	
				 </div>
			  	</div>
			 </div>
			</div>
			
			
		</div>
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>
   </body>
</html>