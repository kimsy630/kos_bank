
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<title>챗봇상담</title>
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
	          <h2>챗봇 상담</h2><br>
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
				          <h3>KOS BANK 챗봇이 편리하게 상담을 도와드립니다!</h3>
				        </div>
				      </section>
				      <!-- Start of UiPath Chatbot widget -->
				    <script>
				  window.addEventListener("message", function (event) {
				      if (event.data.hasOwnProperty("frameSize")) {
				          const size = event.data.frameSize;
				          document.getElementById("uipath-chatbot-iframe").style.height = size.height;
				          document.getElementById("uipath-chatbot-iframe").style.width = size.width;
				      }
				  });
				</script>
				<iframe src="https://chatbot.uipath.com/web-channel?connectionId=d540286e-65b0-4b90-8c76-7e4aa7a6cd6b"
				  id="uipath-chatbot-iframe"
				  style="
				      z-index: 9999;
				      position: fixed;
				      bottom: 0;
				      right: 0;
				      height: 212px;
				      width: 220px;
				      border: 0;">
				</iframe>
				<!-- End of UiPath Chatbot widget -->
				</form>
				</div>
				</main>
			    <br> <br> <br> <br> <br> <br> <br>
    	<%@ include file="../footer.jsp" %>
    </div>
  </body>
</html>
