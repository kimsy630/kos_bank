<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
   <meta content="width=device-width, initial-scale=1.0" name="viewport">

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
      <!-- 주석 친 부분에 사용하고싶은 <section> 긁어와서 쓰면 됩니다!! -->
           <br>
          <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
              	<h6>펀드</h6>
		          <div style="background-color: #435ebe; color:#fff; width:1170px; height:2px;"> </div>
		          <br>
                <table class="table-custom table-custom-secondary table-custom-hovered" id="acc_table">
                  <thead>
                    <tr>
                      <th>계좌명</th>
                      <th>계좌번호</th>
                      <th>펀딩목표액</th>
                      <th>펀딩종료일</th>
                      <th>잔액(원)</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="dto" items="${list}">
                    <tr>
                    <c:set var="vo" value="${dto.getAccountVO()}"/>
                      <td>${vo.accountType}</td>
                      <td>${vo.account }</td>
                      <td><fmt:formatNumber value="${dto.f_target_money }" pattern="#,###" />원</td>
                      <td><fmt:formatDate pattern="YYYY-MM-dd" value="${dto.f_end_date }" /></td>
                      <td><fmt:formatNumber value="${vo.balance }" pattern="#,###" />원</td>
                      
                    </tr>
                     </c:forEach>
                 </table>
              </div>
            </div>
          </div>
  </body>
</html>