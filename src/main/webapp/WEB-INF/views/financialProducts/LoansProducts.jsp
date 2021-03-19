<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}css/productList.css" id="main-styles-link">
</head>
<body>
<%@ include file = "../header.jsp" %>

	<main id="main">
	
		<!-- ======= Breadcrumbs ======= -->
      	<section class="section section-bredcrumbs">
	        <div class="container context-dark breadcrumb-wrapper">
	          <h1>전체대출상품</h1>
	          <ul class="breadcrumbs-custom">
	            <li><a href="#">금융상품</a></li>
	            <li><a href="LoansProducts.cc">대출상품</a></li>
	            <li class="active">전체대출상품</li>
	          </ul>
	        </div>
      	</section><!-- Breadcrumbs end -->
		
		<br>
		
	    <section class="inner-page">
	    	<div class="container">
				<h2>전체대출상품</h2><br>
				<section class="section">
		            <div class="card">
		                <div class="card-body">
	                        <p>코스모뱅크의 모든 대출상품을 만나보세요.</p>
	                        <p>대출상품에 대한 상세설명은 대출상품명을 클릭해주세요.</p>
	                    </div>
	                </div>
				    
				    <!-- ======= Table head options ======= -->
					<section class="section section-lg bg-default">
				    	<div class="container">
				        	<div class="row">
				            	<div class="col-lg-9 col-xl-8">
				              		<p>총<em>1</em>개의 상품</p>
				              		<!-- Bootstrap collapse-->
				              		<div class="card-group-custom card-group-corporate" id="accordion1" role="tablist" aria-multiselectable="false">
				                		<!-- Bootstrap card-->
				                		<article id="article" class="card card-custom card-corporate">
					                 		<div id="goods" class="goods">
					                 			<h4 data-prd-cd="1130313506" data-sys-ds-cd="01"><a href="LoansDetail.cc">직장인 신용대출</a></h4>
					                 			<p class="desc">방문 없이 전화로 간편하게 대출가능. 복잡한 신용대출 절차를 바꾸다!</p>
					                 		</div>
					                		<div id="interests" class="interests">
												<em>최대 <strong style="">1</strong><span>억원</span></em>
											</div>
					                 		<div id="btns" class="button button-primary button-round"><a href="LoanApplication.cc">신청하기</a></div>
					                 		<div id="btns" class="button button-primary button-round"><a href="#">상담하기</a></div>
				                		</article>
				              		</div>
				            	</div>
				          	</div>
				        </div>
				    </section>
				    <!-- End Table head options -->
				</section>
			</div>
		</section>

	</main><!-- End #main -->
	
	<br><br>

<%@ include file = "../footer.jsp" %>
</body>
</html>