
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
	          <h1>이메일 상담</h1>
	        </div>
	     </section>
			<main id="main" class="main">
			    <div class="container">
			    <br> <br> <br> <br> <br> <br> <br>
				<form class="form-signin" action="loginAction.cc" method="post" role="form" >
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					
			    	<!-- Breadcrumbs -->
				      <section class="section section-lg bg-default">
				        <div class="container">
				          <div class="row row-50 justify-content-between">
				            
				            <div class="col-md-12 col-lg-12">
				              <h4>이메일 상담</h4>
				              <!-- RD Mailform-->
				              <form class="rd-form rd-mailform"	 data-form-output="form-output-global" data-form-type="contact" method="post" action="bat/rd-mailform.php">
				                <div class="form-wrap">
				                  <input class="form-input" id="contact-name" type="text" name="name" data-constraints="@Required">
				                  <label class="form-label" for="contact-name">Name</label>
				                </div>
				                <div class="form-wrap">
				                  <input class="form-input" id="contact-email" type="email" name="email" data-constraints="@Email @Required">
				                  <label class="form-label" for="contact-email">E-mail</label>
				                </div>
								<div class="form-wrap">
									<label class="form-label" for="contact-message">Message</label>
									<textarea class="form-input" id="contact-message"
										name="message" data-constraints="@Required"></textarea>
								</div>
								<button class="button button-primary" type="submit">Send</button>
				              </form>
				            </div>
				          </div>
				        </div>
				      </section>
				</form>
				</div>
				</main>
                <img src="../teamProject/resources/testimage/이메일상담하기.JPG">
			    <br> <br> <br> <br> <br> <br> <br>
    	<%@ include file="../footer.jsp" %>
    </div>
  </body>
</html>
