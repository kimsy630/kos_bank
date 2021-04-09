
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
%>


<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<title>고객상담</title>
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
		    	<section class="section section-lg bg-default">
		        <div class="container">
		          <div class="row row-offset-1">
		            <div class="col-lg-10 col-xxl-12">
		              <form class="form" action="CounselingWriteAction.cc" method="post" role="form" >
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<div class="table-custom-responsive">
							<table class="table-custom table-custom-secondary table-custom-hovered">
			                  		<thead>
			                  			<tr>
			                  				<th width="10%">작성</th>
			                  				<th width="60%">&nbsp;</th>
			                  				<th width="10%">&nbsp;</th>
			                  				<th width="20%">&nbsp;</th>
			                  			</tr>
			                  		</thead>
									<tbody>
										<tr>
											<td>작성일:</td>
											<td>												
												<%= sf.format(nowTime) %>
											</td>
											<td >작성자:</td>
											<td >${sessionScope.id}</td>
										</tr>
										<tr>
											<td>분류:</td>
											<td><select id = "b_category" name="b_category">
				                      			<option value="선택안함">카테고리</option>
						              			<option value="이체">이체</option>
						              			<option value="대출">대출</option>
						              			<option value="예금">예금</option>
						              			<option value="적금">적금</option>
						              			<option value="환전">환전</option>
						              			<option value="펀드">펀드</option>
						              		</select></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td>제목:</td>
											<td><input type="text" class="form-control" id="b_title" name="b_title" placeholder="제목을 입력하세요." maxlength="200"></td>
											<td></td>
											<td></td>
										</tr>
									
									</tbody>
								
								</table>
							</div>
							
                          
                          <textarea  id="b_content" name="b_content" rows="15" style="width:100%;" placeholder="내용을 입력하세요."></textarea>
                          
                          <button class="button button-sm button-round button-primary" type="submit">글쓰기</button> 
                          <button class="button button-sm button-round button-primary" type="button" onclick="location.href='Counseling.cc'">취소</button> 
						</form>
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
