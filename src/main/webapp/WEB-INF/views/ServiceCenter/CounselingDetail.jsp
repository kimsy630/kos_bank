
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
	          <h2>상담용 게시판</h2><br>
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
		                  <h2>${vo.b_title}</h2>
		                  
		                  <ul class="list-dotted">
		                    <li>
		                      <div class="post-author">
		                      	작성자:&nbsp;
		                        <div class="author-name">${vo.ID}</div>
		                      </div>
		                    </li>
		                    <li>
		                      <div class="post-time">작성일: ${vo.b_date}</div>
		                    </li>
		                    <li>
		                      <div class="post-time">분류: <font color="gray">[${vo.b_category}]</font></div>
		                    </li>
		                  </ul>
		                  <p>&nbsp;</p>
		                  <p>&nbsp;</p>
		                  <p style="font-size:18px; font-family:'돋음'">${vo.b_content}</p>
		                  <p>&nbsp;</p>
		                  <p>&nbsp;</p>
		                </div>
		                <c:if test="${vo.b_state == 1}">
		                <div class="post-item">
		                  <h3>답변</h3>
		                  <ul class="comment-list">
		                    <li>
		                      <div class="box-comment">
		                        <div class="box-comment-body">
		                          <div class="title">${vo.b_name}</div>
		                          <div class="date">${vo.b_answer_date}</div>
		                          <div class="comment">${vo.b_answer_content}</div>
		                        </div>
		                      </div>
		                    </li>
		                  </ul>
		                </div>
		                </c:if>
		                <c:if test="${sessionScope.id == vo.ID}">
		                	<button class="button button-sm button-round button-primary" type="button" onclick="location.href='CounselingModify.cc?b_num=${vo.b_num}'">수정</button>
		                	<button class="button button-sm button-round button-primary" type="button" onclick="location.href='CounselingDeleteAction.cc?b_num=${vo.b_num}'">삭제</button>
		                </c:if>
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
