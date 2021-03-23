<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Home</title>
  </head> 
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
    		<%@include file="../header.jsp" %>
      
		 	<section class="section section-bredcrumbs">
		    	<div class="container context-dark breadcrumb-wrapper">
		        	<h2>대출계좌조회</h2><br>
		        </div>
		    </section>
		    
		    <section class="section section-lg bg-default">
		    	<div class="container">
		        	<h3>대출계좌조회</h3>
		          	<br><hr><br>
		          			          
		          	<h6>대출 계좌</h6>
		          	<div style="background-color: blue; width:1170px; height:2px;"> </div>
		          	
		          	<div>
		          		조회건수 | 총[1건]
		          	</div>
		          	
		          	<table class="table-custom table-custom-bordered">
	                  	<thead>
		                	<tr>
		                    	<th>대출명</th>
		                    	<th>계좌번호</th>
		                      	<th>승인한도</th>
		                      	<th>만기일</th>
		                      	<th>대출잔액(원)</th>
		                      	<th>업무</th>
		                    </tr>
		                </thead>
		                <tbody>
		                	<tr>
		                    	<td>직장인 신용대출</td>
		                      	<td>555-555-555555</td>
		                      	<td>1억원</td>
		                      	<td>2030.03.18</td>
		                      	<td><fmt:formatNumber value="1231231" pattern="#,###" />원</td>
		                      	<td> 
		                      		<div class="button button-round" style= "padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color:olive; display:inline;" onclick="location.href='LoanAccountDetail.cc'">조회</div>
		                      	</td>
		                    </tr>
	                  	</tbody>
                	</table>
		        </div>
		    </section>
      
      		<%@include file="../footer.jsp" %>
      	</div>
  	</body>
</html>