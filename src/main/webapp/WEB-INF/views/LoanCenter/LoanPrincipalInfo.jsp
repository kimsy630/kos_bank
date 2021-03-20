<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Home</title>
  </head>
  	<body>
		<div class="page">	    
		    <section class="section section-lg bg-default">
		    	<div class="container">
		        	<section class="section">
			          	<div class="table-custom-responsive">
			               	<br>
			               	
			               	<table class="table-custom table-custom-bordered">
			                	<colgroup>
			                    	<col style="width: 15%;">
			                     	<col style="width: 35%;">
			                     	<col style="width: 15%;">
			                     	<col style="width: 35%;">
			                  	</colgroup>
			                  	<tbody>
			                  		<tr>
			                        	<th scope="col">성명</th>
			                        	<th scope="col">홍길동</th>
			                        	<th scope="col">상환원금(원)</th>
			                        	<th scope="col">100,000,000</th>
			                     	</tr>
			                     	<tr>
			                        	<th scope="col">상환이자(원)</th>
			                        	<th scope="col">100,000</th>
			                        	<th scope="col">정상이자(원)</th>
			                        	<th scope="col">100,000</th>
			                     	</tr>
			                     	<tr>
			                        	<th scope="col">연체이자(원)</th>
			                        	<th scope="col">0</th>
			                        	<th scope="col">환출이자(원)</th>
			                        	<th scope="col">0</th>
			                     	</tr>
			                     	<tr>
			                        	<th scope="col">중도상환 해약금(원)</th>
			                        	<th scope="col">100,000</th>
			                        	<th scope="col">상환원금(원)</th>
			                        	<th scope="col">100,000,000</th>
			                     	</tr>
			                     	<tr>
			                        	<th scope="col">거래 후 대출잔액(원)</th>
			                        	<th scope="col" colspan="3">200,000</th>
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
      	</div>
  	</body>
</html>