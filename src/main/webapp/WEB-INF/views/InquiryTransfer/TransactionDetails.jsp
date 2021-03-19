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
	#Transaction_table{
		width:1170px;
	}
	#Transaction_table th{
		width: 170px;
	}
	#Transaction_table td{
		width: 1000px;
	}
	
  </style>
  
  <body>
   
        <section class="section section-lg bg-default">
        <div class="container">
          <h6>거래내역 조회</h6>
          <div style="background-color: blue; width:1170px; height:2px;"> </div>
          
          <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
              	 <section class="section section-lg bg-default">
              	 <form>
	                <table class="table-custom table-custom-bordered" id="Transaction_table">
	                  	<tr>
	                      <th>조회계좌번호</th>
	                      <td>
			                  
	                    </tr>
	                    <tr>
	                     <th>조회기간</th>
	                      <td></td>
	                    </tr>
	                    <tr>
	                   <th>조회내용</th>
	                      <td></td>
	                    </tr>
	                    <tr>
	                    <th>조회계좌번호</th>
	                      <td></td>
	                    </tr>
	                    <tr>
	                    <th>조회결과 순서</th>
	                      <td></td>
	                    </tr>
	                    <tr>
	                      <td colspan="2" style="text-align: center;">
	                      		<div class="button button-round" style= "padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color:olive; display:inline;">조회</div>  
                      	<div class="button button-round" style="padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color: orange; display:inline;">이체</div>
	                      </td>
	                    </tr>
	                </table>
                </form>
                </section>
              </div>
            </div>
          </div>
        </div>
      </section>
          
          
       
  </body>
</html>