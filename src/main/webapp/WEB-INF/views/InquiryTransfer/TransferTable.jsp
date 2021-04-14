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
  <body>
           <br>
          <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive" style="width:1200px">
                <table class="table-custom table-custom-secondary table-custom-hovered">
                  <thead>
                    <tr>
                      <th>출금계좌번호 </th>
                      <th>입금은행</th>
                      <th>입금계좌번호</th>
                      <th>보내는분<br>통장표시내용</th>
                      <th>받는분</th>
                      <th>이체금액(원)</th>
                      <th>받는분<br>통장표시내용</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
	                      <td id="account" style="width:15%">${vo.account }</td>
	                      <td style="width:10%" >코스뱅크</td>
	                      <td id="sender_account" style="width:15%">${vo.sender_account }</td>
	                      <td id="out_comment" style="width:15%">${vo.out_comment }</td>
	                      <td id="sender_name" style="width:10%">${vo.sender_name}</td>
	                      <td id="money" style="width:10%"><fmt:formatNumber value="${vo.money }" pattern="#,###" /></td>
	                      <td id="in_comment" style="width:15%">${vo.in_comment }</td>	                 
                    </tr>
                  </tbody>
                </table>
                
              </div>
            </div>
          </div>
  </body>
</html>

