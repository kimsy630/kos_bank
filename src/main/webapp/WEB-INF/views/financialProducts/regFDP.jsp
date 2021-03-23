<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	    <script>
	    
	    function checkFDP() {
	    	if (document.fdpForm.months.value == '선택') {
	    		alert("가입기간을 선택하세요");
	    		return false;
	    	}
	    	
	    }
	    
	    /* 금액 직접 입력시 해당 input 태그 적용 메서드  */
		    var tmpNC = "";
	        function numberComma(obj) {
	            if (tmpNC == obj.value) return;
	            tmpNC = obj.value;
	            obj.value = numberComma2(tmpNC);
	        }
	        function numberComma2(s) {
	            s = s.replace(/\D/g, "");
	            l = s.length - 3;
	            while (l > 0) {
	                s = s.substr(0, l) + "," + s.substr(l);
	                l -= 3;
	            }
	            return s;
	        }
	    /* 금액 직접 입력시 적용 메서드  */
	        
	        
	        /* 비밀번호 입력란 문자입력 방지 메서드 */
	        function numberComma3(obj) {
	            if (tmpNC == obj.value) return;
	            tmpNC = obj.value;
	            obj.value = numberComma4(tmpNC);
	        }
	        function numberComma4(s) {
	            s = s.replace(/\D/g, "");
	            return s;
	        }
	        /* 비밀번호 입력란 문자입력 방지 메서드 */
	      
	        
	      /* 숫자버튼 누를시 적용 메서드  */
	        function numberComma100(obj) {
	        	var q = "";
	        	var w = "";
	        	var e = "";
	        	var r = "";
	        	var t = "";
	        	q = document.getElementById('money').value;
	        	if(!document.getElementById('money').value) {
	        		q = '0';
	        	}
	        	w = q.replace(/,/g ,"");
	        	e = parseInt(w);
	        	e += obj;
	        	r = e.toString();
	        	t = r.toString().length - 3;
	        	while (t > 0) {
	                r = r.substr(0, t) + "," + r.substr(t);
	                t -= 3;
	            }
	        	document.getElementById('money').value = r;
	        }
	    /* 숫자버튼 누를시 적용 메서드  */   
	    
	    /* 숫자버튼 위 마우스 올려놓을시 적용 메서드 */
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
	  	/* 숫자버튼 위 마우스 올려놓을시 적용 메서드 */
	  	
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
  <form name="fdpForm" method="POST" action="FDPAction.cc" onsubmit="return checkFDP()">
  <input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">
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
            <li><a href="FDP.cc">예금상품</a></li>
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
				<p style="display:inline; margin-right:190px;">이자율</p>
				<p style="display:inline;">6.0%</p>
				<br><br><hr></hr>
				<div style="display:inline; width:20%; text-align:center; margin-right:160px; vertical-align:70%">가입금액</div>
				<div style="display:inline-block; width:80%;">
					<div class="form-group" id="newAmount">
                    <div style="display:inline-block; padding-right:5px;" class="col-sm-2">
                        <br><input style="padding: 0 0; display:inline-block; text-align:right;" value="0" type="text" class="form-control" id="money" data-rule-required="true" maxlength="40" onkeyup="JavaScript:numberComma(this);">
                    </div>
                    	<p style="display:inline-block">원</p>
                	</div>
                	<div style="margin-left:15px">
                	<button type="button" id="hundred" class="btn-clipboard" data-bs-original-title="Copy to clipboard" onclick="JavaScript:numberComma100(1000000);">100만</button>
                	<button type="button" id="fifty" class="btn-clipboard" data-bs-original-title="Copy to clipboard" onclick="JavaScript:numberComma100(500000);">50만</button>
                	<button type="button" id="ten" class="btn-clipboard" data-bs-original-title="Copy to clipboard" onclick="JavaScript:numberComma100(100000);">10만</button>
                	<button type="button" id="five" class="btn-clipboard" data-bs-original-title="Copy to clipboard" onclick="JavaScript:numberComma100(50000);">5만</button>
                	<button type="button" id="one" class="btn-clipboard" data-bs-original-title="Copy to clipboard" onclick="JavaScript:numberComma100(10000);">1만</button>
                	</div>
				</div>
				<br><br><hr></hr><br>
                <p style="display:inline; margin-right:175px;">가입기간</p>
                <select name="months" class="form-select" aria-label="Default select example">
				  <option selected>선택</option>
				  <option value="1">1</option>
				  <option value="2">2</option>
				  <option value="3">3</option>
				  <option value="4">4</option>
				  <option value="5">5</option>
				  <option value="6">6</option>
				  <option value="7">7</option>
				  <option value="8">8</option>
				  <option value="9">9</option>
				  <option value="10">10</option>
				  <option value="11">11</option>
				  <option value="12">12</option>
				  <option value="13">13</option>
				  <option value="14">14</option>
				  <option value="15">15</option>
				  <option value="16">16</option>
				  <option value="17">17</option>
				  <option value="18">18</option>
				  <option value="19">19</option>
				  <option value="20">20</option>
				  <option value="21">21</option>
				  <option value="22">22</option>
				  <option value="23">23</option>
				  <option value="24">24</option>
				  <option value="25">25</option>
				  <option value="26">26</option>
				  <option value="27">27</option>
				  <option value="28">28</option>
				  <option value="29">29</option>
				  <option value="30">30</option>
				  <option value="31">31</option>
				  <option value="32">32</option>
				  <option value="33">33</option>
				  <option value="34">34</option>
				  <option value="35">35</option>
				  <option value="36">36</option>
				</select>&nbsp;개월&nbsp;&nbsp;&nbsp;<p style="color:#92969c; display:inline;">(계약월수는 1 ~ 36 개월 범위내에서 가능합니다.)</p>
				<br><br><hr></hr>
				<div style="display:inline; width:30%; text-align:center; margin-right:160px;">비밀번호</div>
				<div style="display:inline-block; width:70%;">
					<div class="form-group" id="newAmount">
                    <div style="display:inline-block;" class="col-sm-1">
                        <br><input style="padding: 0 0;" name="pw" type="password" class="form-control" id="pw" data-rule-required="true" maxlength="4" onkeyup="JavaScript:numberComma3(this);">
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
                        <br><input style="padding: 0 0;" type="password" class="form-control" name="pwChk" id="pwChk" data-rule-required="true" maxlength="4" onkeyup="JavaScript:numberComma3(this);">
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
                        <br><input style="padding: 0 0;" type="password" class="form-control" id="pwChk" data-rule-required="true" maxlength="4" onkeyup="JavaScript:numberComma3(this);">
                    </div>
                    <div style="display:inline-block;">
                    <p style="color:#92969c;">(숫자 4자리)</p>
                    </div>
                	</div>
				</div>
				<hr></hr><br>
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
				  <input class="form-check-input" type="radio" name="flexRadioDefault2" id="flexRadioDefault2" checked>
				  <label class="form-check-label" for="flexRadioDefault2">
				    신청
				  </label>
				</div>
				</div>
				<br><hr></hr><br><br>
				<div style="text-align:center;"><button id="btns" type="submit" class="button button-primary button-round">신청하기</button></div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <img src="../teamProject/resources/testimage/고객-예금상품신청.png">
      <%@ include file="../footer.jsp" %>
    </div>
    </form>
  </body>
</html>
