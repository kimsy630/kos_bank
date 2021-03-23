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
		        	<h2>대출해지현황 상세조회</h2><br>
		          	
		          	<ul class="breadcrumbs-custom">
		            	<li><a href="#">대출센터</a></li>
		            	<li><a href="#">대출관리</a></li>
		            	<li class="active">대출해지현황 상세조회</li>
		          	</ul>
		        </div>
		    </section>
		    
		    <section class="section section-lg bg-default">
		    	<div class="container">
		        	<h3>대출해지현황 상세조회</h3>
		          	<br><hr><br>
	               	
		          	<h6>대출계좌 조회</h6>
		          	<div style="background-color: blue; width:1170px; height:2px;"> </div>
		          	
		          	<table class="table-custom table-custom-bordered">
	                	<colgroup>
	                    	<col style="width: 15%;">
	                     	<col style="width: 35%;">
	                     	<col style="width: 15%;">
	                     	<col style="width: 35%;">
	                  	</colgroup>
	                  	<tbody>
	                  		<tr>
	                        	<td scope="col">대출종류</td>
	                        	<td scope="col" colspan="3">직장인 신용대출(만기일시)</td>
	                     	</tr>
	                     	<tr>
	                        	<td scope="col">대출원금(원)</td>
	                        	<td scope="col" colspan="3">100,000,000</td>
	                     	</tr>
	                     	<tr>
	                        	<td scope="col">계좌번호</td>
	                        	<td scope="col">444-444-444444</td>
	                        	<td scope="col">적용이율</td>
	                        	<td scope="col">5.9%</td>
	                     	</tr>
	                     	<tr>
	                        	<td scope="col">실행일자</td>
	                        	<td scope="col">2010.05.01</td>
	                        	<td scope="col">만기일자</td>
	                        	<td scope="col">2015.05.01</td>
	                     	</tr>
	                  	</tbody>
	               	</table>
		        </div>
		    </section>
      
      		<%@include file="../footer.jsp" %>
      	</div>
  	</body>
</html>