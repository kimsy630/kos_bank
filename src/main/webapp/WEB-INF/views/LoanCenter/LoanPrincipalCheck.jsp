<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
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
		        	<h2>대출원금 조회/납부</h2><br>
		          	
		          	<ul class="breadcrumbs-custom">
		            	<li><a href="#">대출센터</a></li>
		            	<li><a href="#">대출납부</a></li>
		            	<li class="active">대출원금 조회/납부</li>
		          	</ul>
		        </div>
		    </section>
		    
		    <section class="section section-lg bg-default">
		    	<div class="container">
		        	<h3>대출원금 조회/납부</h3><br>
		        	
		        	<section class="section">
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
			                        		
										    <select id="ss" onchange="changeAccount()">
												<c:forEach var="list" items="${list}">
											    	<option value="${list.d_balance}">${list.account}[${list.d_name}(${list.d_repay})]</option>
											    	<option value="${list.d_balance}">${list.account}[${list.d_name}(${list.d_repay})]</option>
											    </c:forEach>
										    </select>
										    <script>
										    	function changeAccount(){
													$('#dd').html($('#ss').val());
										    	}
										    </script>
										</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col" class="borL">대출잔액</td>
			                        	<td scope="col" id="dd"></td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col">상환방법</td>
			                        	<td scope="col">
				                        	<div class="card-body">
				                        		<div class="form-check form-check-primary">
			                                        <input class="form-check-input" type="radio" name="Primary" id="Primary" checked>
			                                        <label class="form-check-label" for="Primary">
			                                        	전액상환
			                                        </label>
			                                        <input class="form-check-input" type="radio" name="Primary" id="Primary">
			                                        <label class="form-check-label" for="Primary">
			                                        	부분상환
			                                        </label>
	                                    		</div>
                                    		</div>
										</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col">상환원금</td>
			                        	<td scope="col">
			                        		<input type="text">원
										</td>
			                     	</tr>
			                     	<tr>
			                        	<td colspan="2" scope="col" class="borL">
			                        		<div class="row justify-content-lg-center">
												<a class="button button-round button-primary" href="LoanPrincipalCheckIn.cc" data-caption-animate="fadeInUp" data-caption-delay="450">조회</a>
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
			                        	<td scope="col">대출원금(원)</td>
			                        	<td scope="col">100,000,000</td>
			                        	<td scope="col">상환원금(원)</td>
			                        	<td scope="col">10,000,000</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col">중도상환 해약금(원)</td>
			                        	<td scope="col" colspan="3">100,000(중도상환 전액 납부할때만 뜨게)</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col">거래 후 대출잔액(원)</td>
			                        	<td scope="col" colspan="3">90,000,000</td>
			                     	</tr>
			                  	</tbody>
			               	</table>
			               	
			               	<div class="row justify-content-lg-center">
								<a class="button button-round button-primary" href="LoanPrincipalInfo.cc" data-caption-animate="fadeInUp" data-caption-delay="450">상환</a>
							</div>
			            </div>
		            </section>	          	
		        </div>
		    </section>
      
      		<%@include file="../footer.jsp" %>
      	</div>
  	</body>
</html>