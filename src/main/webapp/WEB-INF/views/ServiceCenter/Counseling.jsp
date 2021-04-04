
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
	          <h2>상담용 게시판</h2><br>
	        </div>
	     </section>
		    <div class="container">
		    <br> <br> 
			<form class="form-signin" action="loginAction.cc" method="post" role="form" >
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				
		    	<section class="section section-lg bg-default">
		        <div class="container">
		          <div class="row row-offset-1">
		            <div class="col-lg-12 col-xxl-12">
		              <div class="table-custom-responsive">
		                <table class="table-custom table-custom-secondary table-custom-hovered">
		                  <thead>
		                    <tr>
		                      <th width="10%">글번호</th>
		                      <th width="10%">분류</th>
		                      <th width="55%">제목</th>
		                      <th width="10%">작성자</th>
		                      <th width="15%">작성일</th>
		                    </tr>
		                  </thead>
		                  
		                  <tbody>
		                   <c:forEach var="vo" items="${list}">
		                   
		                    <tr>
		                      <td>${vo.b_num}</td>
		                      <td>
		                      	<font color="gray">[${vo.b_category}]</font>
		                      </td>
		                      <td>
		                      	<a href = "CounselingDetail.cc?b_num=${vo.b_num}" style="color:black">
		                      		<strong>${vo.b_title}</strong>
		                      		<c:if test="${vo.b_state == 1}"> 
		                      		<font color="red">&nbsp;&nbsp;&nbsp;-답변완료-</font>
		                      		</c:if>
		                      	</a>
		                      </td>
		                      <td>${vo.ID}</td>
		                      <td>${vo.b_date}</td>
		                    </tr>
		                    </c:forEach>
		                  </tbody>
		                </table>
		                <input type="button" value="글쓰기" class="button button-primary button-round" onclick="location.href='CounselingWrite.cc'">
		              </div>
		            </div>
		          </div>
		        </div>
		      </section>
			</form>
			</div>
			    <br> <br> <br> <br>
			    
    	<%@ include file="../footer.jsp" %>
    </div>
  </body>
</html>
