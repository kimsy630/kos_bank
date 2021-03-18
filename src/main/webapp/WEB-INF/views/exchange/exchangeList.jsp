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
   	<div class="table-custom-responsive">
                <table class="table-custom table-custom-secondary table-custom-hovered" style="margin: 0 auto; width: :50%; text-align: center;">
                  <thead >
                    <tr >
                      <th rowspan="2">구분</th>
                      <th rowspan="2">통화표시</th>
                      <th rowspan="2">매매기준율</th>
                      <th colspan="2" style=" border-left: solid 1px; border-right: solid 1px;">송금</th>
                      <th colspan="4" style=" border-right: solid 1px;">현찰</th>
                      <th rowspan="2">대미환산율</th>
                    </tr>
                    <tr>
                      <th>받으실 때</th>
                      <th>보내실 때</th>
                      <th>파실 때</th>
                      <th>파실 때<br>스프레드</th>
                      <th>사실 떄</th>
                      <th>사실 때 <br>스프레드</th>
                    </tr>
                  </thead>
                  <tbody>
                  		<td>미국달러</td>
                  		<td>USD</td>
                  		<td>1,125.50</td>
                  		<td>1,114.70</td>
                  		<td>1,136.30</td>
                  		<td>1,105.81</td>
                  		<td>1.75</td>
                  		<td>1,145.19</td>
                  		<td>1.75</td>
                  		<td>1.0000</td>
                   </tbody>
                </table>
              </div>
   	<%@ include file ="../footer.jsp" %>
    </div>
</body>
</html>

