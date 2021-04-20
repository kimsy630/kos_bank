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
		text-align: center;
	}
	#acc_table td{
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
	              <h6>입/출금 계좌</h6>
		          <div style="background-color: #435ebe; color:#fff; width:1170px; height:2px;"> </div>
		          <br>
                <table class="table-custom table-custom-secondary table-custom-hovered" id="acc_table">
                  <thead>
                    <tr>
                      <th style="width: 10%;">계좌명</th>
                      <th style="width: 10%;">상태</th>
                      <th style="width: 15%;">계좌번호</th>
                      <th style="width: 10%;">신규일</th>
                      <th style="width: 15%;">최근거래일자</th>
                      <th style="width: 10%;">잔액(원)</th>
                      <th style="width: 15%;">업무</th>
                    </tr>
                  </thead>
                  <c:forEach var="dto" items="${list}">
                  <c:set var="vo" value="${dto.getAccountVO()}"/>
                    <tr>
                      <td>${vo.accountType}</td>
                      <td>${vo.accountState }</td>
                      <td>${vo.account}</td>
                      <td><fmt:formatDate pattern="YYYY-MM-dd" value="${vo.new_date}" /></td>
                      <td><fmt:formatDate pattern="YYYY-MM-dd" value="${dto.in_outDate}" />&nbsp;<fmt:formatDate pattern="HH:mm" value="${dto.in_outDate}" /></td>
                      <td><fmt:formatNumber value="${vo.balance}" pattern="#,###" />원</td>
                      <td> 
                      	<div class="btn btn-primary" style= "padding:10px 15px; font-size:15px; text-align:center; background-color:#fff; color:#000; display:inline;" onclick="location.href='TransactionDetails.do?account=${vo.account}&state=${vo.accountState}'">조회</div>&nbsp;&nbsp;
                      	<c:if test="${vo.accountState eq '정상' }">
                      		<div class="btn btn-primary" style= "padding:10px 15px; font-size:15px; text-align:center; background-color: #435ebe; color:#fff; display:inline; border: black solid 1px ; " onclick="location.href='AccountTransfer.do'">이체</div>
                      	</c:if>
                      </td>
                     </tr>
                  </c:forEach>
                </table>
                
              </div>
            </div>
          </div>
  </body>
</html>

