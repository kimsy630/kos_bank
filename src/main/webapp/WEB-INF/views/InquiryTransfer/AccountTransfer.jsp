<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
 <title>Home</title>
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
	<title>계좌이체</title>
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
     <h2>계좌이체</h2>
          <br>
          <ul class="breadcrumbs-custom">
            <li><a href="index.html">개인</a></li>
            <li><a href="#">이체</a></li>
            <li class="active">계좌이체</li>
          </ul>
        </div>
      </section>
     <section class="section section-lg bg-default">
        <div class="container">
          <h4>출금계좌정보</h4>
          <br><hr>
          <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
                <table class="table-custom table-custom-bordered" id="acc_table">
                  <thead>
                    <tr>
                      <th>출금 계좌번호</th>
                      <td><select id="account" name="account">
						<option value="">선택</option>
						<c:forEach items="${list }" var="item">
								<option value="${item.account}" onchange="(${item.balance})">${item.account}</option>
						</c:forEach>
						</select></td>
                    </tr>
                  </thead>
                   <tr>
                    <th>계좌비밀번호</th>
                      <td><input type="text" id="accountPW" style="width: 100px"></td>
                    </tr>
                    <tr>
                    <th>이체금액</th>
                      <td><input type="text" id="money" style="width: 150px">
                      <button input="AddMoney100">100만</button>
                      <button input="AddMoney50">50만</button>
                      <button input="AddMoney10">10만</button>
                      <button input="AddMoney5">5만</button>
                      <button input="AddMoney1">1만</button>
                      <button input="AddAllMoney">전액</button><br><br>
                      <input type="text" id="limitMoney" style="width: 300px">
                      <button input="limitMoney">이체한도조회</button>
                      </td>
                    	</tr>
             		 </table>
             	 	</div>
              </div>
      		</div>
          </div>
        </div>   
      </section>
        <div class="container">
          <h4>입금계좌정보</h4>
          <br><hr>
          <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
                <table class="table-custom table-custom-bordered" id="acc_table">
                  <thead>
                    <tr>
                      <th>입금은행<br>입금계좌정보</th>
                      <td>대상 계좌가 없습니다.</td>
                    </tr>
                  </thead>
                    <tr>
                    <th>받는분 통장 표시내용</th>
                      <td><input type="text" id="sendMsg" style="width: 300px">
                      </td>
                    </tr>
             	 </table>
              </div>
      		</div>
          </div>
        </div>  
        <br><br>
        
        <div class="form-group" style="margin-left:700px">
             <div class="col-lg-offset-2 col-lg-10">
                <button type="submit" class="btn btn-primary" >이체추가</button>
             </div>
        </div>
         <section class="section section-lg bg-default">
        <div class="container">
          <h4>이체정보</h4>
          <br><hr>
          <div class="row row-offset-1" style="width:1400px">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
                <table class="table-custom table-custom-bordered">
                  <thead>
                    <tr>
                      <td>출금계좌번호 </td>
                      <td>입금은행</td>
                      <td>입금계좌번호</td>
                      <td>받는분</td>
                      <td>이체금액(원)</td>
                      <td>수수료(원)</td>
                      <td>받는분통장표시내용</td>
                      <td>이체지정일</td>
                     	<td>취소</td>
                    </tr>
                    <tr>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                     	<td><button type="reset">취소</button></td>
                    </tr>
                  </thead>
             	 </table>
              </div>
      		</div>
          </div>
        </div>   
      </section>
      
      <div class="form-group" style="margin-left:700px">
             <div class="col-lg-offset-2 col-lg-10">
                <button type="submit" class="btn btn-primary" >이체실행</button>
             </div>
        </div>
        
	<br><br><br>
<%@ include file = "../footer.jsp" %>
</body>
</html>