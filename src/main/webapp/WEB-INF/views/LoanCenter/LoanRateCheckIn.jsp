<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Home</title>
  </head>
  
	<body>
       	<table class="table-custom table-custom-bordered">
        	<colgroup>
            	<col style="width: 15%;">
             	<col style="width: 85%;">
          	</colgroup>
          	<tbody>
          		<tr>
                	<td scope="col">이자(원)</td>
                	<td scope="col"><fmt:formatNumber value="${vo.d_tran_rate}" pattern="#,###" /></td>
             	</tr>
          	</tbody>
       	</table>
             	
       	<div class="row justify-content-lg-center">
			<a class="button button-round button-primary" href="LoanRatePay.cc" data-caption-animate="fadeInUp" data-caption-delay="450">이자납입</a>
		</div>
  	</body>
</html>