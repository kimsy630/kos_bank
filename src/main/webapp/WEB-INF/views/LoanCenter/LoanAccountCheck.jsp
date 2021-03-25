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
		          	
		          	<ul class="breadcrumbs-custom">
		            	<li><a href="#">대출센터</a></li>
		            	<li><a href="#">대출관리</a></li>
		            	<li class="active">대출계좌조회</li>
		          	</ul>
		        </div>
		    </section>
		    
		    <section class="section section-lg bg-default">
		    	<div class="container">
		        	<h3>대출계좌조회</h3>
		          	<br><hr><br>
		          			          
		          	<h6>대출 계좌</h6>
		          	<div style="background-color: blue; width:1170px; height:2px;"> </div>
		          	
		          	<div>
		          		조회건수 | 총[${count}건]
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
			                <c:forEach var="list" items="${list}">
			                	<tr>
			                    	<td>${list.d_name}</td>
			                      	<td>${list.account}</td>
			                      	<td><fmt:formatNumber value="${list.d_amount}" pattern="#,###" />원</td>
			                      	<td><fmt:formatDate value="${list.d_end_date}" pattern="yyyy.MM.dd" /></td>
			                      	<td><fmt:formatNumber value="${list.d_balance}" pattern="#,###" />원</td>
			                      	<td> 
			                      		<div class="button button-round" style= "padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color:olive; display:inline;" onclick="location.href='LoanAccountDetail.cc?d_name=${list.d_name}'">조회</div>
			                      	</td>
			                    </tr>
			                </c:forEach>
	                  	</tbody>
                	</table>
		        </div>
		    </section>
      
      		<%@include file="../footer.jsp" %>
      	</div>
  	</body>
</html>