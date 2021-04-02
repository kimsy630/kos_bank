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
	                        	<td scope="col" colspan="3">${vo.d_name}(${vo.d_repay})</td>
	                     	</tr>
	                     	<tr>
	                        	<td scope="col">대출원금(원)</td>
	                        	<td scope="col"><fmt:formatNumber value="${vo.d_amount}" pattern="#,###" /></td>
	                        	<td scope="col">대출잔액(원)</td>
	                        	<td scope="col"><fmt:formatNumber value="${vo.d_balance}" pattern="#,###" /></td>
	                     	</tr>
	                     	<tr>
	                        	<td scope="col">계좌번호</td>
	                        	<td scope="col">${vo.account}</td>
	                        	<td scope="col">적용이율</td>
	                        	<td scope="col" colspan="3">${vo.d_rate}%</td>
	                     	</tr>
	                     	<tr>
	                        	<td scope="col">신규일자</td>
	                        	<td scope="col"><fmt:formatDate value="${vo.d_start_date}" pattern="yyyy.MM.dd" /></td>
	                        	<td scope="col">만기일자</td>
	                        	<td scope="col"><fmt:formatDate value="${vo.d_end_date}" pattern="yyyy.MM.dd" /></td>
	                     	</tr>
	                     	<tr>
	                        	<td scope="col">원금실행번호</td>
	                        	<td scope="col">${vo.d_loan_balance}</td>
	                        	<td scope="col">이자실행번호</td>
	                        	<td scope="col">${vo.d_loan_rate}</td>
	                     	</tr>
	                     	<tr>
	                        	<td scope="col">출금 계좌번호</td>
	                        	<td scope="col" colspan="3">${vo.d_auto_account}</td>
	                     	</tr>
	                  	</tbody>
	               	</table>
	               	
	               	<br><br>
	               	
	               	<h6>거래내역</h6>
		          	<div style="background-color: blue; width:1170px; height:2px;"> </div>
		          	
	               	<table class="table-custom table-custom-bordered">
	                  	<tbody>
	                     	<tr>
	                        	<td scope="col">거래일자</td>
	                        	<td scope="col">거래내용</td>
	                        	<td scope="col">원금(원)</td>
	                        	<td scope="col">이자(원)</td>
	                        	<td scope="col">대출잔액(원)</td>
	                        	<td scope="col">이자누계(원)</td>
	                     	</tr>
	                     	<c:forEach var="list" items="${list}">
	                     		<tr>
		                        	<td scope="col">${list.}</td>
		                        	<td scope="col">이자납부</td>
		                        	<td scope="col"></td>
		                        	<td scope="col">100,000</td>
		                        	<td scope="col">100,000,000</td>
		                        	<td scope="col">100,000</td>
		                     	</tr>
	                     	</c:forEach>
	                  	</tbody>
	               	</table>
		        </div>
		    </section>
      
      		<%@include file="../footer.jsp" %>
      	</div>
  	</body>
</html>