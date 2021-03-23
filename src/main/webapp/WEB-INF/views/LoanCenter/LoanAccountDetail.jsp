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
		        	<h2>대출계좌 상세조회</h2>
		          	<br>
		        </div>
		    </section>
		    
		    <section class="section section-lg bg-default">
		    	<div class="container">
		        	<h3>대출계좌 상세조회</h3>
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
	                        	<td scope="col" colspan="3"><가계>직장인 신용대출(만기일시)</td>
	                     	</tr>
	                     	<tr>
	                        	<td scope="col">성명</td>
	                        	<td scope="col">홍길동</td>
	                        	<td scope="col">대출원금(원)</td>
	                        	<td scope="col">100,000,000</td>
	                     	</tr>
	                     	<tr>
	                        	<td scope="col">계좌번호</td>
	                        	<td scope="col">555-555-555555</td>
	                        	<td scope="col">대출잔액(원)</td>
	                        	<td scope="col">100,000,000</td>
	                     	</tr>
	                     	<tr>
	                        	<td scope="col">적용이율</td>
	                        	<td scope="col" colspan="3">5.9%[금융채수익률(3일평균)6개월 기준금리0.88%+가산금리5.02]</td>
	                     	</tr>
	                     	<tr>
	                        	<td scope="col">신규일자</td>
	                        	<td scope="col">2020.05.01</td>
	                        	<td scope="col">만기일자</td>
	                        	<td scope="col">2023.05.01</td>
	                     	</tr>
	                     	<tr>
	                        	<td scope="col">이자자동이체계좌</td>
	                        	<td scope="col">555-555-555555</td>
	                        	<td scope="col">다음이자내는날</td>
	                        	<td scope="col">2021.05.01</td>
	                     	</tr>
	                     	<tr>
	                        	<td scope="col">담보계좌번호</td>
	                        	<td scope="col"></td>
	                        	<td scope="col">관리점</td>
	                        	<td scope="col">서울금융센터</td>
	                     	</tr>
	                  	</tbody>
	               	</table>
	               	
	               	<ul>
	               		<li>변동금리대출의 경우 적용이율이 변경될 수 있습니다.</li>
	               		<li>납입할 이자는 매일매일의 적용이율을 기준으로 계산되므로 현재의 적용이율로 적용하여 계산한 금액과는 다를 수 있습니다.</li>
	               	</ul>
	               	
	               	<br><br>
	               	
	               	<h6>이자내역</h6>
		          	<div style="background-color: blue; width:1170px; height:2px;"> </div>
		          	
		          	<table class="table-custom table-custom-bordered">
	                	
	                  	<tbody>
	                  		<tr>
	                        	<td scope="col">거래일자</td>
	                        	<td scope="col">거래내용</td>
	                        	<td scope="col">이자종류</td>
	                        	<td scope="col">거래금액<br>(원금+이자)(원)</td>
	                        	<td scope="col">원금(원)</td>
	                        	<td scope="col">이자(원)</td>
	                        	<td scope="col">이자기간</td>
	                        	<td scope="col">대출잔액(원)</td>
	                        	<td scope="col">이율</td>
	                     	</tr>
	                     	<tr>
	                        	<td scope="col">2021.03.05</td>
	                        	<td scope="col">대출이자납부</td>
	                        	<td scope="col"></td>
	                        	<td scope="col">100,000</td>
	                        	<td scope="col">0</td>
	                        	<td scope="col">0</td>
	                        	<td scope="col">~</td>
	                        	<td scope="col">100,000,000</td>
	                        	<td scope="col">0.00%</td>
	                     	</tr>
	                     	<tr>
	                        	<td scope="col">2021.03.05</td>
	                        	<td scope="col"></td>
	                        	<td scope="col">약정이자</td>
	                        	<td scope="col">0</td>
	                        	<td scope="col">0</td>
	                        	<td scope="col">100,000</td>
	                        	<td scope="col">2021.02.06~<br>2021.03.05</td>
	                        	<td scope="col">0</td>
	                        	<td scope="col">3.14%</td>
	                     	</tr>
	                  	</tbody>
	               	</table>
		        </div>
		    </section>
      
      		<%@include file="../footer.jsp" %>
      	</div>
  	</body>
</html>