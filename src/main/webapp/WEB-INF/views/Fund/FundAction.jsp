
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <body>
    <div class="preloader">
      <div class="preloader-body">
        <div class="cssload-container">
          <div class="cssload-speeding-wheel"></div>
        </div>
        <p>Loading...</p>
      </div>
    </div>
    <div class="page">
    	<%@ include file="../header.jsp" %>
    	<section class="section section-bredcrumbs">
	        <div class="container context-dark breadcrumb-wrapper">
	          <h2>펀드 구매 처리</h2>
	          <br>
	        </div>
	     </section>
			<main id="Chatbot" class="Chatbot">
			    <div class="container">
			    <br> <br> <br> <br> <br> <br> <br>
				<form class="form-signin" action="FundActionSuccess.cc" method="post" role="form" >
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					 <!-- Newsletter-->
				      <section class="section section-lg bg-default">
				        <div class="container">
				          <div class="row">
				            <div class="col-md-8 col-lg-6 col-xxl-3">
				              <h5>펀드 상품 이름</h5>
				              <p>펀드 상품 설명</p>
				              <!-- RD Mailform-->
				              <form class="rd-form form-sm rd-mailform" data-form-output="form-output-global" data-form-type="contact" method="post" action="FundActionSuccess.cc">
				                <div class="form-wrap">
				                  <input class="form-input" id="newsletter-email" type="text" name="text" data-constraints="@Price @Required">
				                  <label class="form-label" for="newsletter-email">펀딩액을 입력해주세요.</label>
				                </div>
				                <button class="button button-sm button-primary" type="submit">펀드 구매(성공처리)</button>
				                <button class="button button-sm button-primary" type="button"  Onclick="window.location='FundActionFail.cc'">펀드 구매(실패처리)</button>
				              </form>
				            </div>
				          </div>
				        </div>
				      </section>
					
			    	
				</form>
				</div>
				</main>
			    <br> <br> <br> <br> <br> <br> <br>
    	<%@ include file="../footer.jsp" %>
    </div>
  </body>
</html>
