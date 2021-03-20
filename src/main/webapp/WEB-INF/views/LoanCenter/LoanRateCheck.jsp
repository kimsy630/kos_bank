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
		            	<li><a href="#">대출관리</a></li>
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
		                        <p>고객님의 정보를 입력해주시면 상담원이 빠르게 연락드리겠습니다.</p>
		                    </div>
		                </div>
			        	
			          	<br><hr><br>
			          			          
			          	<div class="table-custom-responsive">
			            	<h4><b>대출모집 수수료율</b></h4>
			               	<table class="table-custom table-custom-bordered">
			                	<colgroup>
			                    	<col style="width: 14%;">
			                     	<col style="width: 30%;">
			                     	<col style="width: 28%;">
			                     	<col style="width: 28%;">
			                  	</colgroup>
			                  	<tbody>
			                    	<tr>
			                        	<th rowspan="2" scope="col">상품 구분</th>
			                        	<th rowspan="2" scope="col">지급 기준</th>
			                        	<th colspan="2" scope="col">대출모집 수수료율</th>
			                     	</tr>
			                     	<tr>
			                        	<th scope="col" class="borL">대출금액(취급액)</th>
			                        	<th scope="col">수수료율(VAT별도)</th>
			                     	</tr>
			                     	<tr>
			                        	<th rowspan="3" class="bor_R" scope="row">신용대출</th>
			                        	<td rowspan="3">대출모집인을 통해 대출을 취급하는 경우</td>
			                     	</tr>
			                     	<tr>
			                        	<td class="borL">5백만원 이하</td>
			                        	<td>대출금액(취급액)의 4%</td>
			                     	</tr>
			                     	<tr>
			                        	<td class="borL">5백만원 초과</td>
			                        	<td>500만원 초과 대출금액(취급액)의 3% + 20만원</td>
			                     	</tr>   
			                     	<tr>
			                        	<th rowspan="2" class="bor_R" scope="row">햇살론</th>
			                        	<td rowspan="2">대출모집인을 통해 대출을 취급하는 경우</td>
			                        	<!-- <td colspan="2" >수수료율(VAT별도)</td> -->
			                     	</tr>
			                     	<tr>
			                        	<td class="borL">-</td>
			                        	<td class="borL">대출금액의 2.0%</td>
			                     	</tr>
			                     	<tr>
			                        	<th rowspan="2" class="bor_R" scope="row">사잇돌2대출</th>
			                        	<td rowspan="2">대출모집인을 통해 대출을 취급하는 경우</td>
			                        	<!-- <td colspan="2" >수수료율(VAT별도)</td> -->
			                     	</tr>
			                     	<tr>
			                        	<!-- <td colspan="2" class="borL">대출금액의 2.0%</td> -->
			                        	<td class="borL">-</td>
			                        	<td class="borL">대출금액의 2.0%</td>
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