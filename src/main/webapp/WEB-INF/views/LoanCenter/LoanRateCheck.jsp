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
		        	<h2>대출이자 조회/납부</h2><br>
		          	
		          	<ul class="breadcrumbs-custom">
		            	<li><a href="#">대출센터</a></li>
		            	<li><a href="#">대출납부</a></li>
		            	<li class="active">대출이자 조회/납부</li>
		          	</ul>
		        </div>
		    </section>
		    
		    <section class="section section-lg bg-default">
		    	<div class="container">
		        	<h3>대출이자 조회/납부</h3><br>
		        	
		        	<section class="section">
			            <div class="card">
			                <div class="card-body">
		                        <h5><p>안내 및 유의사항</p></h5>
		                        <hr>
		                        <p>이자납입종료일은 고객께서 입력하신 날짜까지 포함되어 계산됩니다.</p>
		                    </div>
		                </div>
			        	
			          	<br>
			          				          			          
			          	<div class="table-custom-responsive">
			               	<table class="table-custom table-custom-bordered">
			                	<colgroup>
			                    	<col style="width: 15%;">
			                     	<col style="width: 85%;">
			                  	</colgroup>
			                  	<tbody>
			                    	<tr>
			                        	<td scope="col">조회계좌</td>
			                        	<td scope="col">
											<select name="" lengthtype="length">
											    <option value="555-555-555555">555-555-555555[직장인 신용대출(만기일시)]</option>
											</select>
										</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col" class="borL">이자납부종료월</td>
			                        	<td scope="col"><input type="month" value="month"></td>
			                     	</tr>
			                     	<tr>
			                        	<td colspan="2" scope="col" class="borL">
			                        		<div class="row justify-content-lg-center">
												<a class="button button-round button-primary" href="LoanRateCheckIn.cc" data-caption-animate="fadeInUp" data-caption-delay="450">조회</a>
											</div>
										</td>
			                     	</tr>
			                  	</tbody>
			               	</table>
			               	
			               	<br><br>
			               	
			               	<table class="table-custom table-custom-bordered">
			                	<colgroup>
			                    	<col style="width: 15%;">
			                     	<col style="width: 35%;">
			                     	<col style="width: 15%;">
			                     	<col style="width: 35%;">
			                  	</colgroup>
			                  	<tbody>
			                  		<tr>
			                        	<td scope="col">이자납부월</td>
			                        	<td scope="col">2021.05</td>
			                        	<td scope="col">이자(원)</td>
			                        	<td scope="col">100,000</td>
			                     	</tr>
			                  	</tbody>
			               	</table>
			               	
			               	<div class="row justify-content-lg-center">
								<a class="button button-round button-primary" href="LoanRateInfo.cc" data-caption-animate="fadeInUp" data-caption-delay="450">이자납입</a>
							</div>
			            </div>
		            </section>	          	
		        </div>
		    </section>
      
      		<%@include file="../footer.jsp" %>
      	</div>
  	</body>
</html>