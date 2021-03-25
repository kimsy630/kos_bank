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
		        </div>
		    </section>
		    
		    <section class="section section-lg bg-default">
		    	<div class="container">
		        	<h3>대출이자 조회/납부</h3><br>
		        	
		        	<div class="col-sm-12 d-flex justify-content-end">1 정보입력 2 3</div>
		        	
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
											<select name="" lengthtype="length">
											    <option value="555-555-555555">555-555-555555[<가계>직장인 신용대출(만기일시)]</option>
											</select>											
											<button type="button" class="btn btn-outline-primary block" data-bs-toggle="modal"
								                data-bs-target="#default" onclick="document.location.href='#'">
								                	잔액조회
								            </button>
										</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col" class="borL">계좌비밀번호</td>
			                        	<td scope="col"><input type="text" placeholder="숫자4자리"></td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col" class="borL">대출계좌번호</td>
			                        	<td scope="col">555-555-555555</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col" class="borL">실행번호</td>
			                        	<td scope="col"></td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col" class="borL">이자납입기준일</td>
			                        	<td scope="col">2021.05.01</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col" class="borL">정상이자(원)</td>
			                        	<td scope="col">100,000</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col" class="borL">정상이자(원)</td>
			                        	<td scope="col">0</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col" class="borL">이자합계(원)</td>
			                        	<td scope="col">100,000</td>
			                     	</tr>
			                  	</tbody>
			               	</table>
			               	
			               	<div class="row justify-content-lg-center">
								<a class="button button-round button-primary" href="LoanRatePay.cc" data-caption-animate="fadeInUp" data-caption-delay="450">다음</a>
							</div>
			            </div>
		            </section>	          	
		        </div>
		    </section>
      
      		<%@include file="../footer.jsp" %>
      	</div>
  	</body>
</html>