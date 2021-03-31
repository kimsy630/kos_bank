<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Home</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="${path}images/favicon.ico" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="pathtext/css" href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,700,900">
    <link rel="stylesheet" href="${path}css/bootstrap.css">
    <link rel="stylesheet" href="${path}css/fonts.css">
    <link rel="stylesheet" href="${path}css/style.css" id="main-styles-link">
  </head> 
  <style>
  	#accountInfo {
  		width: 1170px;
  		height: 130px;
  		background-color: gray;
		display: inline-block; 
		list-style: circle;
		padding:30px;
	
	}
	#accountInfo table td{
		width:360px;
		height:30px;
		font-size:18px;
	}
	#acc_table{
		width:1170px;
	}
	#acc_table th{
		width:300px;
		text-align: center;
	}
	#acc_table td{
		width:285px;
		text-align: center;
	}
	
	#tabs-1 li{
		width:140px;
	}
	
  </style>
  
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
		          	
			        <div class="row row-offset-1">
			            <div class="col-lg-10 col-xxl-9">
			            	<div class="table-custom-responsive">
				            	<h6>대출 계좌</h6>
					          	<div style="background-color: #435ebe; color:#fff; width:1170px; height:2px;"> </div>
					          	
					          	<br>
			                	
			                	<table class="table-custom table-custom-secondary table-custom-hovered" id="acc_table">
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
						                      		<div class="button button-round" style= "padding:10px 20px; width:60px; height:40px; font-size:15px; text-align:center; background-color: #435ebe; color:#fff; display:inline;" onclick="location.href='LoanAccountDetail.cc?account=${list.account}'">조회</div>
						                      	</td>
						                    </tr>
						                </c:forEach>
			                  		</tbody>
			                	</table>
			              	</div>
		            	</div>
			    	</div>
		    	</div>
          	</section>
          	
      		<%@include file="../footer.jsp" %>
      	</div>
  	</body>
</html>