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
		        	<h2>대출원금 조회/납부</h2><br>
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
											<select name="" lengthtype="length">
											    <option value="555-555-555555">555-555-555555[<가계>직장인 신용대출(만기일시)]</option>
											</select>
										</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col" class="borL">실행번호</td>
			                        	<td scope="col">
			                        		<select name="" lengthtype="length">
											    <option value="1">실행번호:1, 실행금액:100,000,000, 대출잔액:100,000,000</option>
											</select>
			                        	</td>
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
			                        		<input type="text" value="100,000,000" readonly>원 일억 원
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
			                        	<td scope="col">성명</td>
			                        	<td scope="col">홍길동</td>
			                        	<td scope="col">상환원금(원)</td>
			                        	<td scope="col">100,000,000</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col">상환이자(원)</td>
			                        	<td scope="col">100,000</td>
			                        	<td scope="col">정상이자(원)</td>
			                        	<td scope="col">100,000</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col">연체이자(원)</td>
			                        	<td scope="col">0</td>
			                        	<td scope="col">환출이자(원)</td>
			                        	<td scope="col">0</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col">중도상환 해약금(원)</td>
			                        	<td scope="col">100,000</td>
			                        	<td scope="col">상환원금(원)</td>
			                        	<td scope="col">100,000,000</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col">거래 후 대출잔액(원)</td>
			                        	<td scope="col" colspan="3">200,000</td>
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