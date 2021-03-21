
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
	          <h1>챗봇 상담</h1>
	        </div>
	     </section>
			<main id="Chatbot" class="Chatbot">
			    <div class="container">
			    <br> <br> <br> <br> <br> <br> <br>
				<form class="form-signin" action="ChatbotAction.cc" method="post" role="form" >
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					
			    	<!-- Buttons with Shadow-->
				      <section class="section section-lg bg-default">
				        <div class="container">
				          <h2>KOS BANK 챗봇이 편리하게 상담을 도와드립니다!</h2>
				          <div class="group-xl group-middle buttons-group">
				            <button class="button button-lg button-round button-block button-primary" type="submit">챗봇 상담 시작하기</button> 
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
