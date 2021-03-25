<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
   	<%@ include file ="../header.jsp" %>
   	<section class="section section-bredcrumbs">
        <div class="container context-dark breadcrumb-wrapper">
          <h1>환율조회</h1>
        </div>
    </section>
    <br>
   	<!-- 여기에 작성하면됨 -->
   	<!-- 참고사이트
   		https://yjshin.tistory.com/entry/Python-%EC%9B%B9-%ED%81%AC%EB%A1%A4%EB%A7%81-%EB%84%A4%EC%9D%B4%EB%B2%84-%ED%99%98%EC%9C%A8-%EC%A0%95%EB%B3%B4-%EA%B0%80%EC%A0%B8%EC%98%A4%EA%B8%B0
   		
   		웹크롤링 할 주소
   		https://finance.naver.com/marketindex/ 
   		view-source:https://finance.naver.com/marketindex/
   	        -->
   	<div class="table-custom-responsive" style =" width:70%; margin: 0 auto;">
                <table class="table-custom table-custom-secondary table-custom-hovered" style=" text-align: center;">
                  <thead >
                    <tr >
                      <th rowspan="2">통화명</th>
                      <th rowspan="2">매매기준율</th>
                      <th colspan="2">현찰</th>
                      <th colspan="2">송금</th>
                      <th rowspan="2">미화환산율</th>
                    </tr>
                    <tr>
                    	<th>사실 때</th>
                    	<th>파실 때</th>
                    	<th>보내실 떄</th>
                    	<th>받으실 때</th>
                    </tr>
                  </thead>
                  <tbody>
                  	<tr>
                  		<td>미국 USD</td>
                  		<td>1,130.00</td>
                  		<td>1,149.77</td>
                  		<td>1,110.23</td>
                  		<td>1,141.00</td>
                  		<td>1,119.00</td>
                  		<td>1.000</td>
                  	</tr>
                  	
                  	<tr>
                  		<td>유럽연합 EUR</td>
                  		<td>1,344.00</td>
                  		<td>1,370.93</td>
                  		<td>1,317.45</td>
                  		<td>1,141.00</td>
                  		<td>1,330.75</td>
                  		<td>1.190</td>
                  	</tr>
                  	
                  	<tr>			
                  		<td>일본 JPY (100엔)</td>
                  		<td>1,038.03</td>
                  		<td>1,056.19</td>
                  		<td>1,019.87</td>
                  		<td>1,048.20</td>
                  		<td>1,027.86</td>
                  		<td>0.919</td>
                  	</tr>
                   </tbody>
                </table>
              </div>
   	<%@ include file ="../footer.jsp" %>
    </div>
</body>
</html>

