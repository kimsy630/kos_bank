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
	    <script>
	    
	    window.onload = function() {
	    	var ton = document.getElementById("payment");
	    	var con = document.getElementById("withdraw");
	    	var pon = document.getElementById("monthPW");
	    	con.style.display = 'none';
	    	ton.style.display = 'none';
	    	pon.style.display = 'none';
	    }
	    
	    function selectMethod() {
	    	var bon = document.getElementById("withdraw");
	    	var ton = document.getElementById("payment");
	    	var pon = document.getElementById("monthPW");
	    	if(document.ispForm.method.value == '정액적립') {
	    		ton.style.display = 'block';
	    		bon.style.display = 'block';
	    		pon.style.display = 'block';
	    		document.ispForm.j_method.value = '정액적립';
	    		
	    	}else if(document.ispForm.method.value == '자유적립') {
	    		bon.style.display = 'none';
	    		ton.style.display = 'none';
	    		pon.style.display = 'block';
	    		document.ispForm.j_method.value = '자유적립';
	    	}else if(document.ispForm.method.value == '선택') {
	    		bon.style.display = 'none';
	    		ton.style.display = 'none';
	    		pon.style.display = 'none';
	    	}
		    	
	    }
	    
	    
		function checkISP() {
	    	
			if (document.ispForm.method.value == '선택') {
	    		alert("적립방법을 선택하세요");
	    		return false;
	    	}
			
	    	if (document.getElementById("payment").style.display == 'block' && !document.ispForm.money.value) {
	    		alert("적금금액을 입력해주세요.");
				return false;
	    	}
	    	
	    	if (document.ispForm.months.value == '선택') {
	    		alert("가입기간을 선택하세요");
	    		document.ispForm.months.focus();
	    		return false;
	    	}
	    	if (document.ispForm.pw.value.length != 4) {
	    		alert("4자리 비밀번호로 입력해주세요.");
	    		document.ispForm.pw.focus();
	    		return false;
	    	}
	    	if (document.ispForm.pw.value != document.ispForm.pwChk.value) {
	    		alert('가입 비밀번호를 확인해주세요.');
	    		document.ispForm.pw.focus();
	    		return false;
	    	}
	    	if (document.getElementById("withdraw").style.display == 'block' && document.ispForm.accounts.value == '선택') {
	    		alert('자동이체할 계좌번호를 선택하세요.');
	    		return false;
	    	}
	    	if (document.getElementById("withdraw").style.display == 'block' && document.ispForm.pwWithdraw.value.length != 4) {
	    		alert("자동이체용 비밀번호 4자리를 입력해주세요.");
	    		document.ispForm.pwWithdraw.focus();
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
            q = parseInt(s);
            document.ispForm.j_money.value = q;
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
        	document.ispForm.j_money.value = e;
        	r = e.toString();
        	t = r.toString().length - 3;
        	while (t > 0) {
                r = r.substr(0, t) + "," + r.substr(t);
                t -= 3;
            }
        	document.getElementById('money').value = r;
        }
    /* 숫자버튼 누를시 적용 메서드  */   
    
    /* 취소버튼 누를시 적용 메서드 */
    	function numberComma0() {
    		document.getElementById('money').value=0;
    		document.ispForm.j_money.value=0;
    	}
    	/* 취소버튼 누를시 적용 메서드 */
    	
    
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
  			$("#cancel").on({
  				"mouseover" : function() {
  					$("#cancel").css({"background-color":"#0d6efd"});
  					$("#cancel").css({"color":"white"});
  				},
  				"mouseout" : function() {
  					$("#cancel").css({"background-color":"white"});
  					$("#cancel").css({"color":"#0d6efd"});
  				}
  			});
  		});
  	/* 숫자버튼 위 마우스 올려놓을시 적용 메서드 */
  	
  	function changeAccount(){
           
         <c:forEach items="${list}" var="item">
            if ("${item.account}"== $('#account').val()){
                 var q = "";
                 var w = "";
                 var e = "";
                 var r = "";
                 var t = "";
                 var a = "";
                 var b = "";
                 var c = "";
                 var d = "";
                 var f = "";
                 var h = "";
                 var k = "";
                 var i = "";
                 
                 q = "${item.balance}"; 
                 if(!"${item.balance}") {
                    q = '0';
                 }
                 w = q.replace(/,/g ,"");
                 e = parseInt(w);
                 r = e.toString();
                 t = r.toString().length - 3;
                 while (t > 0) {
                      r = r.substr(0, t) + "," + r.substr(t);
                      t -= 3;
                  }
               $('#select_balance').html("잔액 :"+r+"원");
            }
         </c:forEach>
          
       }
  	
  	
  	function changeRate() {
  		
  		var month = document.ispForm.months.value;
  		
  		if(month >= parseInt(${vo.j_max_date}*0.8)) {
  			$('#rate').html(${vo.j_interest_rate}.toFixed(1)+"%");
  			document.ispForm.j_rate.value=${vo.j_interest_rate}.toFixed(1);
  		}else if(month >= parseInt(${vo.j_max_date}*0.6)) {
  			$('#rate').html(${vo.j_interest_rate*0.9}.toFixed(1)+"%");
  			document.ispForm.j_rate.value=${vo.j_interest_rate*0.9}.toFixed(1);
  		}else if(month >= parseInt(${vo.j_max_date}*0.4)) {
  			$('#rate').html(${vo.j_interest_rate*0.6}.toFixed(1)+"%");
  			document.ispForm.j_rate.value=${vo.j_interest_rate*0.6}.toFixed(1);
  		}else if(month >= parseInt(${vo.j_max_date}*0.2)) {
  			$('#rate').html(${vo.j_interest_rate*0.3}.toFixed(1)+"%");
  			document.ispForm.j_rate.value=${vo.j_interest_rate*0.3}.toFixed(1);
  		}else if(month < parseInt(${vo.j_max_date}*0.2)) {
  			$('#rate').html(${vo.j_interest_rate*0.1}.toFixed(1)+"%");
  			document.ispForm.j_rate.value=${vo.j_interest_rate*0.1}.toFixed(1);
  		}
  		return;
  	}
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
  <form name="ispForm" method="POST" action="SavingsAction.do" onsubmit="return checkISP()">
  <input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">
  <input type="hidden" name="j_money" id="j_money" value="0">
  <input type="hidden" name="j_type" value="${vo.j_type}">
  <input type="hidden" name="ID" value="${sessionScope.id}">
  <input type="hidden" name="j_rate" value="${vo.j_interest_rate}">
  <input type="hidden" name="j_name" value="${vo.j_name}">
  <input type="hidden" name="j_method" value="">
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
            <li><a href="SavingsList.cc">적금상품</a></li>
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
                <h3>${vo.j_name}</h3><br>
                <hr></hr><br>
				<p style="display:inline">비과세종합저축 구분</p>           
                <div style="display:inline; margin-left:100px;" class="form-check">
	  			 <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
				</div>
				<br><br><hr></hr><br>
				<p style="display:inline; margin-right:190px;">이자율</p>
				<p id="rate" style="display:inline;">${vo.j_interest_rate}%</p>
				<br><br><hr></hr><br>
                <p style="display:inline; margin-right:175px;">적립방법</p>
                <select class="form-select" aria-label="Default select example" name="method" onchange="selectMethod();">
				  <option selected>선택</option>
				  <option value="자유적립">자유적립식</option>
				  <option value="정액적립">정액적립식</option>
				</select>
				<br><br><hr></hr><br>
				<div id="payment">
				<div style="display:inline; width:20%; text-align:center; margin-right:160px; vertical-align:100%">적금금액</div>
				<div style="display:inline-block; width:80%;">
					<div class="form-group" id="newAmount">
                    <div style="display:inline-block; padding-right:5px;" class="col-sm-2">
                        <br><input style="padding: 0 0; display:inline-block; text-align:right;" type="text" value="0" class="form-control" name="money" id="money" data-rule-required="true" maxlength="40" onkeyup="numberComma(this);">
                    </div>
                    	<p style="display:inline-block">원</p>
                	</div>
                	<div style="margin-left:15px">
                	<button type="button" id="hundred" class="btn-clipboard" data-bs-original-title="Copy to clipboard" onclick="numberComma100(1000000);">100만</button>
                	<button type="button" id="fifty" class="btn-clipboard" data-bs-original-title="Copy to clipboard" onclick="numberComma100(500000);">50만</button>
                	<button type="button" id="ten" class="btn-clipboard" data-bs-original-title="Copy to clipboard" onclick="numberComma100(100000);">10만</button>
                	<button type="button" id="five" class="btn-clipboard" data-bs-original-title="Copy to clipboard" onclick="numberComma100(50000);">5만</button>
                	<button type="button" id="one" class="btn-clipboard" data-bs-original-title="Copy to clipboard" onclick="numberComma100(10000);">1만</button>
                	<button type="button" id="cancel" class="btn-clipboard" data-bs-original-title="Copy to clipboard" onclick="numberComma0();">정정</button>
                	</div>
				</div>
				<br><br><hr></hr><br>
				</div>
				<div id="monthPW">
                <p style="display:inline; margin-right:175px;">가입기간</p>
                <c:set var="j_min_date" value="${vo.j_min_date}" ></c:set>
                <c:set var="j_max_date" value="${vo.j_max_date}" ></c:set>
                <select name="months" class="form-select" aria-label="Default select example" onchange="changeRate()">
				  <option selected>선택</option>
				  <% 
				  	for(int i=(int)pageContext.getAttribute("j_min_date"); i<=(int)pageContext.getAttribute("j_max_date"); i++) {
				  %>
				  <option value="<%=i%>"><%=i%></option>
				  <%
				  }
				  %>
				</select>&nbsp;개월&nbsp;&nbsp;&nbsp;<p style="color:#92969c; display:inline;">(계약월수는 ${vo.j_min_date} ~ ${vo.j_max_date} 개월 범위내에서 가능합니다.)</p>
				<br><br><hr></hr>
				<div style="display:inline; width:30%; text-align:center; margin-right:160px;">비밀번호</div>
				<div style="display:inline-block; width:70%;">
					<div class="form-group" id="newAmount">
                    <div style="display:inline-block;" class="col-sm-1">
                        <br><input style="padding: 0 0; " type="password" class="form-control" name="pw" id="pw" data-rule-required="true" maxlength="4" onkeyup="JavaScript:numberComma3(this);">
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
                        <br><input style="padding: 0 0;" type="password" class="form-control" id="pwChk" data-rule-required="true" maxlength="4" onkeyup="JavaScript:numberComma3(this);">
                    </div>
                	</div>
				</div>
				<hr></hr><br><br>
				</div>
				<div>
				<div id="withdraw">
				<h3 style="display:inline;">자동이체 계좌정보</h3><p style="color:#92969c; display:inline;"></p><br><br>
				<hr></hr><br>
				<p style="display:inline; margin-right:110px;">자동이체 계좌번호</p>
                <select name="accounts" id="account" class="form-select form-select-lg mb-4" aria-label="Default select example" onchange="changeAccount()">
				  <option selected>선택</option>
				  <c:forEach items="${list}" var="item">
				  <option value="${item.account}">${item.account}</option>
				  </c:forEach>
				</select>&nbsp
				<div id="select_balance" style="display:inline; color:#0d6efd"></div>
				<br><hr></hr>
				<div style="display:inline; width:30%; text-align:center; margin-right:65px;">자동이체계좌 비밀번호</div>
				<div style="display:inline-block; width:70%;">
					<div class="form-group" id="newAmount">
                    <div style="display:inline-block;" class="col-sm-1">
                        <br><input style="padding: 0 0;" type="password" class="form-control" name="pwWithdraw" id="pwWithdraw" data-rule-required="true" maxlength="4" onkeyup="JavaScript:numberComma3(this);">
                    </div>
                    <div style="display:inline-block;">
                    <p style="color:#92969c;">(숫자 4자리)</p>
                    </div>
                	</div>
				</div>
				<hr></hr><br>
				  	<div style="display:inline; width:30%; text-align:center; margin-right:155px;">자동이체일</div>
					<div class="display_table" style="display:inline-block; width:10%;">
						<div class="input-group mb-3">
							<select name="jd_outDate" class="custom-select"
								aria-label="Example select with button addon">
								<option value="" selected>이체일</option>
								<option class="" value="1">1</option>
								<option class="" value="2">2</option>
								<option class="" value="3">3</option>
								<option class="" value="4">4</option>
								<option class="" value="5">5</option>
								<option class="" value="6">6</option>
								<option class="" value="7">7</option>
								<option class="" value="8">8</option>
								<option class="" value="9">9</option>
								<option class="" value="10">10</option>
								<option class="" value="11">11</option>
								<option class="" value="12">12</option>
								<option class="" value="13">13</option>
								<option class="" value="14">14</option>
								<option class="" value="15">15</option>
								<option class="" value="16">16</option>
								<option class="" value="17">17</option>
								<option class="" value="18">18</option>
								<option class="" value="19">19</option>
								<option class="" value="20">20</option>
								<option class="" value="21">21</option>
								<option class="" value="22">22</option>
								<option class="" value="23">23</option>
								<option class="" value="24">24</option>
								<option class="" value="25">25</option>
								<option class="" value="26">26</option>
								<option class="" value="27">27</option>
								<option class="" value="28">28</option>
							</select>
						</div>
					</div>
					<hr></hr><br>
				</div>
				<div style="text-align:center;"><button id="btns" class="button button-primary button-round">신청하기</button></div>
              </div>
            </div>
          </div>
        </div>
        </div>
      </section>
      <%@ include file="../footer.jsp" %>
    </div>
    </form>
  </body>
</html>
