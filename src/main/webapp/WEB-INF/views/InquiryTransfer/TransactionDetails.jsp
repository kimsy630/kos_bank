<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
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
    <!--[if lt IE 10]>
    <div style="background: #212121; padding: 10px 0; box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3); clear: both; text-align:center; position: relative; z-index:1;"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <script src="js/html5s hiv.min.js"></script>
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
      
      <!-- 주석 친 부분에 사용하고싶은 <section> 긁어와서 쓰면 됩니다ㅋ!! -->
      <!--  -->

 	<section class="section section-bredcrumbs">
        <div class="container context-dark breadcrumb-wrapper">
          <h2>거래내역조회</h2>
          <br>
         
        
        </div>
      </section>
      
      <section class="section section-lg bg-default">
        <div class="container">
          <h3>거래내역조회</h3>
          <br><hr><br>
          
           <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
                <table class="table-custom table-custom-bordered">
                  <thead>
                    <tr>
                      <th>Column 1</th>
                      <th>Column 2</th>
                      <th>Column 3</th>
                      <th>Column 4</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Item #1</td>
                      <td>Description</td>
                      <td>Subtotal</td>
                      <td>$3.00</td>
                    </tr>
                    <tr>
                      <td>Item #2</td>
                      <td>Description</td>
                      <td>Discount</td>
                      <td>$3.00</td>
                    </tr>
                    <tr>
                      <td>Item #3</td>
                      <td>Description</td>
                      <td>Shipping</td>
                      <td>$3.00</td>
                    </tr>
                    <tr>
                      <td>Item #4</td>
                      <td>Description</td>
                      <td>Tax</td>
                      <td>$4.00</td>
                    </tr>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td>All Items</td>
                      <td>Description</td>
                      <td>Your Total</td>
                      <td>$13.00</td>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
          </div>
        </div>
      </section>
	
       
      
      <%@include file="../footer.jsp" %>
      </div>
 <!-- PANEL-->
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="${csspath}js/core.min.js"></script>
    <script src="${csspath}js/script.js"></script>
  </body>
</html>