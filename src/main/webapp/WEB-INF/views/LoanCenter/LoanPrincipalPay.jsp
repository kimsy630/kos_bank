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
		        	<h2>대출원금 상환</h2><br>
		          	
		          	<ul class="breadcrumbs-custom">
		            	<li><a href="#">대출센터</a></li>
		            	<li><a href="#">대출납부</a></li>
		            	<li class="active">대출원금 상환</li>
		          	</ul>
		        </div>
		    </section>
		    
		    <section class="section section-lg bg-default">
		    	<div class="container">
		        	<h3>대출원금 상환</h3><br>
		        	
		        	<div class="col-sm-12 d-flex justify-content-end"><h5>1 정보입력 2 3</h5></div><br>
		        	
		        	<section class="section">
			          	<div class="table-custom-responsive">
			               	<table class="table-custom table-custom-bordered">
			                	<colgroup>
			                    	<col style="width: 15%;">
			                     	<col style="width: 85%;">
			                  	</colgroup>
			                  	<tbody>
			                  		<tr>
			                        	<th scope="col">대출계좌번호</th>
			                        	<th scope="col">555-555-555555</th>
			                     	</tr>
			                     	<tr>
			                        	<th scope="col" class="borL">상환원금</th>
			                        	<th scope="col">대출잔액:100,000,000</th>
			                     	</tr>
			                     	<tr>
			                        	<th scope="col">출금계좌번호</th>
			                        	<th scope="col">
			                        		<select name="" lengthtype="length">
											    <option value="111-111-111111">111-111-111111[코스모 주거래 우대···]</option>
											</select>
											<input type="button" value="잔액조회">
										</th>
			                     	</tr>
			                     	<tr>
			                        	<th scope="col" class="borL">계좌비밀번호</th>
			                        	<th scope="col"><input type="text" placeholder="숫자4자리"></th>
			                     	</tr>
			                  	</tbody>
			               	</table>
			               	
					        <div class="row justify-content-lg-center">
								<a class="button button-round button-primary" href="#" data-caption-animate="fadeInUp" data-caption-delay="450">취소</a>
								<a class="button button-round button-primary" href="LoanPrincipalPay.cc" data-caption-animate="fadeInUp" data-caption-delay="450">다음</a>
							</div>
			            </div>
		            </section>	          	
		        </div>
		    </section>
      
      		<%@include file="../footer.jsp" %>
      	</div>
  	</body>
</html>