<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Home</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="${path}images/favicon.ico" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="pathtext/css" href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,700,900">
    <link rel="stylesheet" href="${path}css/bootstrap.css">
    <link rel="stylesheet" href="${path}css/fonts.css">
    <link rel="stylesheet" href="${path}css/style.css" id="main-styles-link">
    <!--[if lt IE 10]>
    <div style="background: #212121; padding: 10px 0; box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3); clear: both; text-align:center; position: relative; z-index:1;"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <script src="js/html5shiv.min.js"></script>
    <![endif]-->
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
    <form style="align:center">
    
 	<section class="section section-bredcrumbs">
     	<div class="container context-dark breadcrumb-wrapper">
     		<h2>계좌이체</h2>
          <br>
        </div>
      </section>
      <div class="container">
   		 <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive" style="width:1100px">
                <table class="table-custom table-custom-secondary table-custom-hovered">
                  <thead>
                  <br><br>
                  <h4>이체가 완료되었습니다</h4>
                    <tr>
                      <th>출금계좌번호 </th>
                      <th>입금은행</th>
                      <th>입금계좌번호</th>
                      <th>보내는분<br>통장표시내용</th>
                      <th>받는분</th>
                      <th>이체금액(원)</th>
                      <th>수수료(원)</th>
                      <th>받는분<br>통장표시내용</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
	                      <td id="account"><%=request.getParameter("account")%></td>
	                      <td>코스뱅크</td>
	                      <td id="sender_account"><%=request.getParameter("sender_account")%></td>
	                      <td id="out_comment"><%=request.getParameter("out_comment")%></td>
	                      <td id="sender_name"><%=request.getParameter("sender_name")%></td>
	                      <td id="money"><%=request.getParameter("money")%></td>
	                      <td>0원</td>
	                      <td id="in_comment"><%=request.getParameter("in_comment")%></td>
                    </tr>
                  </tbody>
                </table>
                
              </div>
            </div>
          </div>
          <br><br><br>
          <div class="form-group" style="margin-left:400px">
		          <div class="col-lg-offset-2 col-lg-10">
		             <button type="button" class="btn btn-primary" onclick="location.href='AccountTransfer.cc'" >이체 계속하기</button>
		             <button type="button" class="btn btn-primary" onclick="location.href='main.cc'">홈으로</button>
		          </div>
		       </div>
    	</div>
  	</form>
  	</div>
      
	<br><br><br>
<%@ include file = "../footer.jsp" %>
</body>
</html>