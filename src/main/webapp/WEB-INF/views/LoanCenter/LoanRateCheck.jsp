<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Home</title>
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
		        	<h2>대출이자 조회</h2>
		          	
		          	<br>
		          	
		          	<ul class="breadcrumbs-custom">
		            	<li><a href="#">대출센터</a></li>
		            	<li><a href="#">대출납부</a></li>
		            	<li class="active">대출이자 조회</li>
		          	</ul>
		        </div>
		    </section>
		    
		    <section class="section section-lg bg-default">
		    	<div class="container">
		        	<h3>대출이자 조회</h3><br>
		        	<section class="section">
			            <div class="card">
			                <div class="card-body">
		                        <h5><p>안내 및 유의사항</p></h5>
		                        <hr>
		                        <p>이자납입종료일은 곡객께서 입력하신 날짜까지 포함되어 계산됩니다.</p>
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
			                        	<th scope="col">상품 구분</th>
			                        	<th scope="col">
											<select name="" lengthtype="length">
											    <option value="">대상계좌가 없습니다.</option>
											</select>											
											<button type="button" class="btn btn-outline-primary block" data-bs-toggle="modal"
								                data-bs-target="#default" onclick="document.location.href='#'">
								                	실행번호조회
								            </button>
										</th>
			                     	</tr>
			                     	<tr>
			                        	<th scope="col" class="borL">이자납부종료일</th>
			                        	<th scope="col"><input type="date" value="sysdate"></th>
			                     	</tr>
			                     	<tr>
			                        	<th colspan="2" scope="col" class="borL">
			                        		<div class="row justify-content-lg-center">
												<a class="button button-round button-primary" href="#" data-caption-animate="fadeInUp" data-caption-delay="450">조회</a>
											</div>
										</th>
			                     	</tr>
			                  	</tbody>
			               	</table>
			            </div>
		            </section>	          	
		        </div>
		    </section>
      
      		<%@include file="../footer.jsp" %>
      	</div>
  	</body>
</html>