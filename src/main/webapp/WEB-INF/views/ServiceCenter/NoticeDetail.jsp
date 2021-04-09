
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>


<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<title>공지사항</title>
  <body>
    <div class="preloader" >
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
	          <h2>공지사항</h2><br>
	        </div>
	     </section>
		    <div class="container">
		    <br> <br>
				<section class="section section-lg bg-default">
		        <div class="container">
		          <div class="row row-offset-1">
		            <div class="col-lg-12 col-xxl-12">
		              <div class="post-single-wrap">
		              <c:forEach var="vo" items="${list}">
		                <div class="post-item">
		                  <h2>${vo.n_title}</h2>
		                  
		                  <ul class="list-dotted">
		                    <li>
		                      <div class="post-author">
		                      	작성자:&nbsp;
		                        <div class="author-name">${vo.n_name}</div>
		                      </div>
		                    </li>
		                    <li>
		                      <div class="post-time">작성일: ${vo.n_date}</div>
		                    </li>
		                    <li>
		                      <div class="post-time">조회: ${vo.n_views}</div>
		                    </li>
		                  </ul>
		                  <p>&nbsp;</p>
		                  
		                  <p style="font-size:18px; font-family:'돋음'">${vo.n_content}</p>
		                  <p>&nbsp;</p>
		                </div>
		                </c:forEach>
		                
		              </div>
		            </div>
		          </div>
		        </div>
		      </section>
			</div>
		    <br> <br> <br> <br> 
    	<%@ include file="../footer.jsp" %>
    </div>
  </body>
</html>
