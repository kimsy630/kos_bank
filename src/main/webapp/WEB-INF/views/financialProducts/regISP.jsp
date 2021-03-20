<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
	<head>
	    <title>Tabs and Accordions</title>
	    <meta name="format-detection" content="telephone=no">
	    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta charset="utf-8">
	    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
	    <!-- Stylesheets-->
	    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,700,900">
	    <link rel="stylesheet" href="${path}css/bootstrap.css">
	    <link rel="stylesheet" href="${path}css/fonts.css">
	    <link rel="stylesheet" href="${path}css/style.css" id="main-styles-link">
	    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	    <script src="http://code.jquery.com/jquery.js"></script>
	    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	    <script type="text/javascript">
	    
	    </script>
	    <script>
	  		$(function() {
	  			$("#hundred").on({
	  				"mouseover" : function() {
	  					$("#hundred").css({"background-color":"#0d6efd"});
	  					$("#hundred").css({"color":"white"});
	  				},
	  				"mouseout" : function() {
	  					$("#hundred").css({"background-color":"white"});
	  					$("#hundred").css({"color":"#0d6efd"});
	  				}
	  			});
	  			$("#fifty").on({
	  				"mouseover" : function() {
	  					$("#fifty").css({"background-color":"#0d6efd"});
	  					$("#fifty").css({"color":"white"});
	  				},
	  				"mouseout" : function() {
	  					$("#fifty").css({"background-color":"white"});
	  					$("#fifty").css({"color":"#0d6efd"});
	  				}
	  			});
	  			$("#ten").on({
	  				"mouseover" : function() {
	  					$("#ten").css({"background-color":"#0d6efd"});
	  					$("#ten").css({"color":"white"});
	  				},
	  				"mouseout" : function() {
	  					$("#ten").css({"background-color":"white"});
	  					$("#ten").css({"color":"#0d6efd"});
	  				}
	  			});
	  			$("#five").on({
	  				"mouseover" : function() {
	  					$("#five").css({"background-color":"#0d6efd"});
	  					$("#five").css({"color":"white"});
	  				},
	  				"mouseout" : function() {
	  					$("#five").css({"background-color":"white"});
	  					$("#five").css({"color":"#0d6efd"});
	  				}
	  			});
	  			$("#one").on({
	  				"mouseover" : function() {
	  					$("#one").css({"background-color":"#0d6efd"});
	  					$("#one").css({"color":"white"});
	  				},
	  				"mouseout" : function() {
	  					$("#one").css({"background-color":"white"});
	  					$("#one").css({"color":"#0d6efd"});
	  				}
	  			});
	  		});
	    </script>
	    <style>
    	.btn-clipboard {
	    color: #0d6efd;
	    background-color: #fff;
	    border: 1px solid;
	    border-radius: .25rem;
		}
	    </style>
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
      <!-- Page Header-->
      <%@include file="../header.jsp" %>
      <section class="section section-bredcrumbs">
        <div class="container context-dark breadcrumb-wrapper">
          <h2>가입정보</h2>
          <br>
          <ul class="breadcrumbs-custom">
            <li><a href="index.html">금융상품</a></li>
            <li><a href="#">적금상품</a></li>
            <li class="active">가입정보</li>
          </ul>
        </div>
      </section>
      <!-- Page Header 끝-->
      
      	 <section class="section section-lg bg-default">
        <div class="container">
          <div class="row">
            <div class="col-lg-9 col-xl-8">
              <!-- Bootstrap collapse-->
              <div class="card-group-custom card-group-corporate" id="accordion1" role="tablist" aria-multiselectable="false">
                <!-- Bootstrap card-->
                <h3>가입정보</h3><br>
                <hr></hr><br>
				<p style="display:inline">비과세종합저축 구분</p>           
                <div style="display:inline; margin-left:100px;" class="form-check">
	  			 <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
				</div>
				<br><br><hr></hr><br>
                <p style="display:inline; margin-right:175px;">적립방법</p>
                <select class="form-select" aria-label="Default select example">
				  <option selected>선택</option>
				  <option value="1">자유적립식</option>
				  <option value="2">정액적립식</option>
				</select>
				<br><br><hr></hr><br>
				<p style="display:inline; margin-right:90px;">월 적립 가능 한도금액</p>
				<p style="display:inline;"><fmt:formatNumber value="1231231" pattern="#,###" />원</p>
				<br><br><hr></hr>
				<div style="display:inline; width:20%; text-align:center; margin-right:160px; vertical-align:70%">신규금액</div>
				<div style="display:inline-block; width:80%;">
					<div class="form-group" id="newAmount">
                    <div class="col-sm-2">
                        <br><input style="padding: 0 0;" type="email" class="form-control" id="email" data-rule-required="true" maxlength="40">
                    </div>
                	</div>
                	<div style="margin-left:15px">
                	<button type="button" id="hundred" class="btn-clipboard" data-bs-original-title="Copy to clipboard">100만</button>
                	<button type="button" id="fifty" class="btn-clipboard" data-bs-original-title="Copy to clipboard">50만</button>
                	<button type="button" id="ten" class="btn-clipboard" data-bs-original-title="Copy to clipboard">10만</button>
                	<button type="button" id="five" class="btn-clipboard" data-bs-original-title="Copy to clipboard">5만</button>
                	<button type="button" id="one" class="btn-clipboard" data-bs-original-title="Copy to clipboard">1만</button>
                	</div>
				</div>
				<br><br><hr></hr><br>
                <p style="display:inline; margin-right:175px;">가입기간</p>
                <select class="form-select" aria-label="Default select example">
				  <option selected>선택</option>
				  <option value="1">6</option>
				  <option value="2">7</option>
				  <option value="3">8</option>
				  <option value="4">9</option>
				  <option value="5">10</option>
				  <option value="6">11</option>
				  <option value="6">12</option>
				</select>&nbsp;개월&nbsp;&nbsp;&nbsp;<p style="color:#92969c; display:inline;">(계약월수는 6 ~ 12 개월 범위내에서 가능합니다.)</p>
				<br><br><hr></hr>
				<div style="display:inline; width:30%; text-align:center; margin-right:160px;">비밀번호</div>
				<div style="display:inline-block; width:70%;">
					<div class="form-group" id="newAmount">
                    <div style="display:inline-block;" class="col-sm-1">
                        <br><input style="padding: 0 0; " type="password" class="form-control" id="pw" data-rule-required="true" maxlength="30">
                    </div>
                    <div style="display:inline-block;">
                    <p style="color:#92969c;">(숫자 4자리)</p>
                    </div>
                	</div>
				</div>
				<hr></hr>
				<div style="display:inline; width:30%; text-align:center; margin-right:130px;">비밀번호확인</div>
				<div style="display:inline-block; width:70%;">
					<div class="form-group" id="newAmount">
                    <div class="col-sm-1">
                        <br><input style="padding: 0 0;" type="password" class="form-control" id="pwChk" data-rule-required="true" maxlength="30">
                    </div>
                	</div>
				</div>
				<hr></hr><br><br>
				<h3>출금정보</h3><br>
				<hr></hr><br>
				<p style="display:inline; margin-right:140px;">출금계좌번호</p>
                <select class="form-select form-select-lg mb-4" aria-label="Default select example">
				  <option selected>계좌번호를 선택해주세요.</option>
				  <option value="1">123 - 456 - 789012 KOS</option>
				</select>
				<br><hr></hr>
				<div style="display:inline; width:30%; text-align:center; margin-right:100px;">출금계좌비밀번호</div>
				<div style="display:inline-block; width:70%;">
					<div class="form-group" id="newAmount">
                    <div style="display:inline-block;" class="col-sm-1">
                        <br><input style="padding: 0 0;" type="password" class="form-control" id="pwChk" data-rule-required="true" maxlength="30">
                    </div>
                    <div style="display:inline-block;">
                    <p style="color:#92969c;">(숫자 4자리)</p>
                    </div>
                	</div>
				</div>
				<hr></hr><br>
				<p style="display:inline; margin-right:140px;">자동이체여부</p>
                <select class="form-select" aria-label="Default select example">
				  <option selected>선택하세요</option>
				  <option value="1">신청</option>
				  <option value="2">미신청</option>
				</select>
				<br><br><hr></hr>
				<br><br><h3>만기시 해지방법</h3><br>
				<hr></hr><br>
				<p style="display:inline">만기자동해지 신청여부</p><br>          
                <div style="display:inline; margin-left:100px;" class="form-check">
	  			 <div class="form-check">
				  <input class="form-check-input" type="radio" name="flexRadioDefault2" id="flexRadioDefault1">
				  <label class="form-check-label" for="flexRadioDefault1">
				    미신청
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="flexRadioDefault3" id="flexRadioDefault2" checked>
				  <label class="form-check-label" for="flexRadioDefault2">
				    신청
				  </label>
				</div>
				</div>
				<br><hr></hr><br><br>
				<div style="text-align:center;"><button id="btns" class="button button-primary button-round" onclick="regISP()">신청하기</button></div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <%@ include file="../footer.jsp" %>
    </div>
  </body>
</html>
