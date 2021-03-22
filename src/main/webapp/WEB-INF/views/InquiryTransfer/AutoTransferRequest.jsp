<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>자동이체 신청</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="${csspath}images/favicon.ico" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="pathtext/css" href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,700,900">
    <link rel="stylesheet" href="${csspath}css/bootstrap.css">
    <link rel="stylesheet" href="${csspath}css/fonts.css">
    <link rel="stylesheet" href="${csspath}css/style.css" id="main-styles-link">
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
     <h2>자동이체신청</h2>
          <br>
          <ul class="breadcrumbs-custom">
            <li><a href="index.html">개인</a></li>
            <li><a href="#">자동이체</a></li>
            <li class="active">자동이체신청</li>
          </ul>
        </div>
      </section>
      <section class="section section-lg bg-default">
        <div class="container">
          <h4>약정정보입력</h4>
          <br><hr>
          <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
                <table class="table-custom table-custom-bordered" id="acc_table">
                  <thead>
                    <tr>
                      <th >약정구분</th>
                      	<td colspan="4">
                      		<input type="radio" name="Auto_check" value="add"> 약정
                      		<input type="radio" name="Auto_check" value="modify"> 정정
                      		<input type="radio" name="Auto_check" value="delete"> 해지
                     	 </td>
                    </tr>
                  </thead>
                    <tr>
                    <th >출금계좌</th>
                      <td colspan="4"><input type="text" id="account" style="width: 100px" placeholder="은행명"><input type="text" id="account" style="width: 200px"></td>
                    </tr>
                    <tr>
                    <th >은행 출금일</th>
                      <td>매월</td>
                      <td><select id="date">
                      	<option>선택</option>
                      	<option>01</option>
                      	<option>02</option>
                      	<option>03</option>
                      	<option>04</option>
                      	<option>05</option>
                      	<option>06</option>
                      	<option>07</option>
                      	<option>08</option>
                      	<option>09</option>
                      	<option>10</option>
                      	<option>11</option>
                      	<option>12</option>
                      	<option>13</option>
                      	<option>14</option>
                      	<option>15</option>
                      	<option>16</option>
                      	<option>17</option>
                      	<option>18</option>
                      	<option>19</option>
                      	<option>20</option>
                      	<option>21</option>
                      	<option>22</option>
                      	<option>23</option>
                      	<option>24</option>
                      	<option>25</option>
                      	<option>26</option>
                      	<option>27</option>
                      	<option>28</option>
                      	<option>29</option>
                      	<option>30</option>
                      	<option>31</option>
                      	
                      </select>일</td>
                      <td>최초이체월</td>
						<td>
						<select id="year">
						<option>선택</option>
						<option>2000</option>
						<option>2001</option>
						<option>2002</option>
						<option>2003</option>
						<option>2004</option>
						<option>2005</option>
						<option>2006</option>
						<option>2007</option>
						<option>2008</option>
						<option>2009</option>
						<option>2010</option>
						<option>2011</option>
						<option>2012</option>
						<option>2013</option>
						<option>2014</option>
						<option>2015</option>
						<option>2016</option>
						<option>2017</option>
						<option>2018</option>
						<option>2019</option>
						<option>2020</option>
						<option>2021</option>
						</select> 년
						<select id="month">
                      	<option>선택</option>
                      	<option>01</option>
                      	<option>02</option>
                      	<option>03</option>
                      	<option>04</option>
                      	<option>05</option>
                      	<option>06</option>
                      	<option>07</option>
                      	<option>08</option>
                      	<option>09</option>
                      	<option>10</option>
                      	<option>11</option>
                      	<option>12</option>
                      </select>
						월</td>
                    </tr>
                    <tr></tr>
                    <tr>
                    <th>이체금액</th>
                    	<td colspan="4"><input type="text" id="jd_outMoney" style="width: 200px" placeholder="1,000,000">
                    </tr>
                    <tr>
                    <th>이체 기관명</th>
                    	<td colspan="4"><input type="text" id="jd_inPlace" style="width: 200px" placeholder="기관명">
                    </tr>
                    <tr>
                    	<th>입금계좌번호</th>
                    	<td colspan="4"><input type="text" id="jd_account" style="width: 100px" placeholder="은행명"><input type="text" id="jd_account" style="width: 200px"></td>
                    	
                    </tr>
             	 </table>
              </div>
      		</div>
          </div>
        </div>   
      </section>
      
      			<div class="form-group" style="margin-left:600px">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button type="submit" class="btn btn-primary">신청하기</button>
                        <button type="reset" class="btn btn-primary">취소하기</button>
                    </div>
                </div>
              <img src="../teamProject/resources/testimage/자동이체신청.png">
	<br><br><br><br>
<%@ include file = "../footer.jsp" %>
</body>
</html>