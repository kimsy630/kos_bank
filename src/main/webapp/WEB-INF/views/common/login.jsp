
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
			<main id="main" class="main">
			    <div class="container">
			    <br> <br> <br> <br> <br> <br> <br>
				<form class="form-signin" action="loginAction.cc" method="post" role="form" >
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			    	<div style="width: 30%; min-width:300px; float:none; margin:0 auto">
						<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">
						<div class="form-group justify-content-center text-dark">		 	
							<h2>Login</h2>
						</div>
						<c:if test="${errMsg!=null}">
							<div class="form-group justify-content-center text-info">
									${errMsg}
							</div>
						</c:if>
						<label for="id" class="sr-only">ID</label> 
						<input type="text" id="id" class="form-control"  name="id" placeholder="ID" required autofocus> 
						<label for="pw" class="sr-only">Password</label> 
						<input type="password" id="pw" class="form-control" name="pw" placeholder="Password" required>
						<input type="submit" value="로그인" class="btn-dark btn-block form-control ">
						<input type="button" value="회원가입" class="btn-dark btn-block form-control" onclick="location.href='signUp.cc'">
						<input type="reset" value="취소" class="btn-dark btn-block form-control "  onclick="location.href='main.cc'">
					</div>
				</form>
				</div>
				</main>
			    <br> <br> <br> <br> <br> <br> <br>
    	<%@ include file="../footer.jsp" %>
    </div>
  </body>
</html>
