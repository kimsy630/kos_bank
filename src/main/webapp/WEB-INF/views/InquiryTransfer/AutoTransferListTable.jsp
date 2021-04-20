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
  
  #td{
		text-align: center;
	}
	
  </style>
  <body>
           <br>
          <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive" style="width:1200px">
                <table class="table-custom table-custom-secondary table-custom-hovered">
                  <thead>
                    <tr>
                     <th>자동이체번호</th>
                      <th>금융기관</th>
                      <th>출금계좌번호</th>
                      <th>청구기관명</th>
                      <th>이체지정일</th>
                      <th>자동이체 시작일</th>
                      <th>자동이체 만료일</th>
                      <th></th>
                    </tr>
                  </thead>
                  <tbody>
                     <c:forEach var="list" items="${list}">
                    <tr>
	                      <td id="jd_key">${list.jd_key}</td>
	                      <td>코스뱅크</td>
	                      <td id="account">${list.account}</td>
	                      <td id="jd_inPlace">${list.jd_inPlace}</td>
	                      <td id="jd_outDate">매월 ${list.jd_outDate}일</td>
	                      <td id="jd_registDate">${list.jd_registDate}</td>
	                      <td id="jd_expirationDate">${list.jd_expirationDate}</td>
	                      <td>
	                      	<form action="AutoTransferDelete.cc" method="post"> 	
		                     	<button type="submit" class="button button-round" style= "padding:10px 20px; width:80px; height:40px; font-size:15px; text-align:center; background-color: #435ebe; color:#fff; ">해지</button>
		                     	<input type="hidden" value="${list.account}" name="account">
	                      		<input type="hidden" value="${list.jd_key}" name="jd_key">
								<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">
	                      	</form>
	                      </td>	
                    </tr>
	                  </c:forEach>    
                  </tbody>
                </table>
                
              </div>
            </div>
          </div>
  </body>
</html>

