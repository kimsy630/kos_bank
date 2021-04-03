<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Home</title>
    
    <!-- ajax 스크립트 -->
    <script src="/teamProject/resources/js/request.js"></script>
    <script type="text/javascript">
    
    	function load(url){
    					//서버로 요청 후 콜백함수로 돌려받음
    		sendRequest(load_AccCheck, url, "post", null);
    	}
    	
    	// 콜백함수
    	function load_AccCheck(){
    		var result = document.getElementById("acc_result");
    		
    		if(httpRequest.readyState == 4){ // 4 : completed => 전체 데이터 취득 완료된 상태
    			if(httpRequest.status == 200){ // 200 : 정상종료
    				//result.innerHTML = "정상종료";
    		
    				//응답결과가 html이면 responseText로 받고 XML이면 responseXML로 받는다.
    				result.innerHTML= httpRequest.responseText;
    				
    			}else{
    				result.innerHTML = "에러발생";
    			}
    		}/* else{
    			result.innerHTML = "상태 : "	+ httpRequest.readyState;
    		} */
    	}
    	
    </script>
    
    <!-- ajax 스크립트 끝 -->
    
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
    <script src="js/html5shiv.min.js"></script>
    <![endif]-->
  </head>
  <style>
  	#accountInfo {
  		width: 1170px;
  		height: 130px;
  		background-color:#E0FFFF;
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
  
  <body onload="load('AccountTable.do')">
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
      
      <!-- 주석 친 부분에 사용하고싶은 <section> 긁어와서 쓰면 됩니다!! -->
      <!--  -->

 	<section class="section section-bredcrumbs">
        <div class="container context-dark breadcrumb-wrapper">
          <h2>계좌조회</h2>
          <br>
         
          <ul class="breadcrumbs-custom">
            <li><a href="index.html">개인</a></li>
            <li><a href="#">조회</a></li>
            <li class="active">계죄조회</li>
          </ul>
        </div>
      </section>
      <section class="section section-lg bg-default">
        <div class="container">
          <h3>계좌조회</h3>
          <br><hr><br>
          
           <div id="accountInfo" style="background-color: #F6F9FE; border:1px solid gray;">
           <table>
				<tr>
					<td>출금 계좌번호 : 110-451-550731</td>
					<td>최종 접속일자 : 2021-03-18 13:20</td>
					<td>계좌 상태 : 정상</td>
				</tr>
				<tr>
					<td>최종 거래일자 : 2021-03-18 09:20</td>
					<td></td>
					<td></td>
				</tr>
           </table>
          </div>
          <br>
          <br>
       		<div class="tabs-custom tabs-horizontal tabs-line" id="tabs-1">
	           <ul class="nav nav-tabs">
	             <li class="nav-item" role="presentation"><a class="nav-link active" href="#tabs-1-1" data-toggle="tab" onclick="load('AccountTable.do')">입/출금</a></li>
	             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-2" data-toggle="tab" onclick="load('LoansTable.do')">대출</a></li>
	             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-3" data-toggle="tab" onclick="load('IS_Table.do')">적금</a></li><!-- Installment_SavingsTable -->
	             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-4" data-toggle="tab" onclick="load('FundTable.do')">펀드</a></li>
	             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-5" data-toggle="tab" onclick="load('DepositTable.do')">예금</a></li>
	             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-7" data-toggle="tab" onclick="load('StopSleepTable.do')">정지/휴면</a></li>
	             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-8" data-toggle="tab" onclick="load('AllTable.do')">전체계좌</a></li>
	           </ul>
           </div>
           <br>
        	<div id="acc_result">
        		
        	</div>
          
        </div>
      </section>
      

      
      <%@include file="../footer.jsp" %>
      </div>

  </body>
</html>