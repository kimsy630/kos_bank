
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
	          <h2>펀드 등록</h2>
	          <br>
	        </div>
	     </section>
			<main id="Chatbot" class="Chatbot">
			    <div class="container">
			    <br> <br> <br> <br> <br> <br> <br>
				<form class="form-signin" action="loginAction.cc" method="post" role="form" >
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					<div class="form-wrap">
                            <input class="form-input" id="register-name" type="text" name="text" data-constraints="@Required">
                            <label class="form-label" for="register-name">목표금액</label>
                          </div>
                          <div class="form-wrap">
                            <input class="form-input" id="register-email" type="text" name="text" data-constraints="@Required">
                            <label class="form-label" for="register-email">목표일</label>
                          </div>
                          <div class="form-wrap">
                            <input class="form-input" id="register-password" type="text" name="text" data-constraints="@Required">
                            <label class="form-label" for="register-password">펀드제목</label>
                          </div>
                          <div class="form-wrap">
                            <input class="form-input" id="register-confirm-password" type="text" name="text" data-constraints="@Required">
                            <label class="form-label" for="register-confirm-password">펀드내용</label>
                          </div>
                          <button class="button button-lg button-round button-block button-primary" type="submit">펀드 등록</button> 
					
			    	
				</form>
				</div>
				</main>
                <img src="../teamProject/resources/testimage/펀드_펀드등록.JPG">
			    <br> <br> <br> <br> <br> <br> <br>
    	<%@ include file="../footer.jsp" %>
    </div>
  </body>
</html>
