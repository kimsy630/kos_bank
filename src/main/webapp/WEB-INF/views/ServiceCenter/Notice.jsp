
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>


<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
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
			              <div class="table-custom-responsive">
			                <table class="table-custom table-custom-secondary table-custom-hovered">
			                  <thead>
			                    <tr>
			                      <th width="10%">글번호</th>
			                      <th width="55%">제목</th>
			                      <th width="10%">작성자</th>
			                      <th width="15%">작성일</th>
			                      <th width="10%">조회</th>
			                    </tr>
			                  </thead>
			                  
			                  <tbody>
			                   <c:forEach var="vo" items="${list}">
			                   
			                    <tr>
			                      <td>${vo.n_num}</td>
			                      <td><a href = "NoticeDetail.cc?n_num=${vo.n_num}" style="color:black"><strong>${vo.n_title}</strong></a></td>
			                      <td>${vo.n_name}</td>
			                      <td>${vo.n_date}</td>
			                      <td>${vo.n_views}</td>
			                    </tr>
			                    </c:forEach>
			                  </tbody>
			                </table>
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
