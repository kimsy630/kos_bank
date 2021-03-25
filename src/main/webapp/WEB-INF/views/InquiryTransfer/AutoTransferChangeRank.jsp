<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>자동이체 순위결정</title>
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
<style>
	#td_1{
		text-align: center;
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
     <h2>자동이체 순위결정</h2>
          <br>
        </div>
      </section>
      <section class="section section-lg bg-default">
        <div class="container">
          <h4>계좌정보입력</h4>
          <br><hr>
          <div class="row row-offset-1" style="width:600px">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
                <table class="table-custom table-custom-bordered" style="margin-left: 300px">
                  <thead>
                    <tr>
                      <td style="width:150px" >출금 계좌번호</td>
                      <td><select id="account">
                      	<option>-계좌를 선택해주세요-</option>
                      	<option>계좌1 000-000000-0000</option>
                      	<option>계좌2 000-000000-00002</option>
                      	<option>계좌3 000-000000-0000</option>
                      	<option>계좌4 000-000000-0000</option>
                      	<option>계좌5 000-000000-0000</option>
                      </select></td>
                    </tr>
                  </thead>
                    <tr>
                    <td>계좌비밀번호</td>
                      <td><input type="text" id="accountPW" style="width: 100px"></td>
                    </tr>
                 </table>
                 </div>
                 </div>
                 </div>
                 </div>
                </section>
               </div>
          <div class="form-group" style="margin-left:700px">
             <div class="col-lg-offset-2 col-lg-10">
                <button type="submit" class="btn btn-primary" >계좌조회</button>
             </div>
        </div>
                  
    <br><br>    
    
    <div class="container">
          <h4>자동이체정보</h4>
          <br><hr>
          <div class="row row-offset-1" style="width:1400px">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
                <table class="table-custom table-custom-bordered">
                  <thead>
                    <tr>
                      <td id="td_1">금융기관</td>
                      <td id="td_1">출금계좌번호</td>
                      <td id="td_1">청구기관명</td>
                      <td id="td_1">연락처</td>
                      <td id="td_1">자동납부종류</td>
                      <td id="td_1">납부자번호</td>
                      <td id="td_1">자동납부 신청일자</td>
                    </tr>
                    <tr>
                      <td id="td_1">코스뱅크</td>
                      <td id="td_1">000-000000-0000</td>
                      <td id="td_1">삼성카드</td>
                      <td id="td_1">02-000-0000</td>
                      <td id="td_1">자동납부</td>
                      <td id="td_1">000000</td>
                      <td id="td_1">2021/00/00</td>
                    </tr>
                    <tr>
                      <td id="td_1">코스뱅크</td>
                      <td id="td_1">000-000000-0000</td>
                      <td id="td_1">신한카드</td>
                      <td id="td_1">02-000-0000</td>
                      <td id="td_1">자동납부</td>
                      <td id="td_1">000000</td>
                      <td id="td_1">2021/00/00</td>
                    </tr>
                  </thead>
                      
             	 </table>
              </div>
      		</div>
          </div>
        </div>   
      </section> 
<br><br>       
      <div class="form-group" style="margin-left:670px">
             <div class="col-lg-offset-2 col-lg-10">
                <button type="submit" class="btn btn-primary" >순위 변경</button>
             </div>
        </div>
      
  <br><br>          
	<%@ include file = "../footer.jsp" %>
</body>
</html>