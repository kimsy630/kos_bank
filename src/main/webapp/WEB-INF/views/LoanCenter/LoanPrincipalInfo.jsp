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
		        	<h2>대출원금 조회</h2><br>
		          	
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
			                        	<td scope="col">대출계좌번호</td>
			                        	<td scope="col">555-555-555555</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col" class="borL">상환원금(원)</td>
			                        	<td scope="col">100,000,000</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col">해약금(원)</td>
			                        	<td scope="col">100,000</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col">상환합계금액(원)</td>
			                        	<td scope="col">100,000</td>
			                     	</tr>
			                     	<tr>
			                        	<td scope="col">출금계좌번호</td>
			                        	<td scope="col">
											<select name="" lengthtype="length">
											    <option value="111-111-111111">111-111-111111[신한 주거래 우대···]</option>
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
			                  	</tbody>
			               	</table>
			               	
			               	<div class="row justify-content-lg-center">
			               		<a style="display:none"></a>
								<a class="button button-round button-primary" href="#" data-caption-animate="fadeInUp" data-caption-delay="450">취소</a>
								<a class="button button-round button-primary" href="LoanPrincipalPay.cc" data-caption-animate="fadeInUp" data-caption-delay="450" >다음</a>
							</div>
			            </div>
		            </section>	          	
		        </div>
		    </section>
      
      		<%@include file="../footer.jsp" %>
      	</div>
  	</body>
</html>