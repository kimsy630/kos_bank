
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
	          <h2>채무 불이행자 목록</h2><br>
	        </div>
	     </section>
			<main id="main" class="main">
			    <div class="container">
			    <br> <br> <br> <br> <br> <br> <br>
				<form class="form-signin" action="loginAction.cc" method="post" role="form" >
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					<img src="resources/images/debtorlist.jpg" />
			    	
				</form>
				</div>
				</main>
			    <br> <br> <br> <br> <br> <br> <br>
    	<%@ include file="../footer.jsp" %>
    </div>
  </body>
</html>