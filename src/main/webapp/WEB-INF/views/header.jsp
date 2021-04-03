<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="setting.jsp" %>
<!DOCTYPE html>
<meta charset="utf-8">
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
      <header class="section page-header">
        <!-- RD Navbar-->
        <div class="rd-navbar-wrap rd-navbar-absolute">
          <nav class="rd-navbar rd-navbar-transparent" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-lg-stick-up-offset="20px" data-xl-stick-up-offset="20px" data-xxl-stick-up-offset="20px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
            <div class="rd-navbar-main-outer">
              <div class="rd-navbar-main">
                <!-- RD Navbar Panel-->
                <div class="rd-navbar-panel">
                  <!-- RD Navbar Toggle-->
                  <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                  <!-- RD Navbar Brand-->
                  <div class="rd-navbar-brand"><a class="brand" href="main.cc"><img class="brand-logo-dark" src="${path}images/logo-84x23.png" alt="" width="84" height="23"/><img class="brand-logo-light" src="${path}images/kosbanklogo.png" alt="" width="150" height="50"/></a>
                  </div>
                </div>
                <div class="rd-navbar-main-element">
                  <div class="rd-navbar-nav-wrap">
                    <!-- RD Navbar Nav-->
                    <ul class="rd-navbar-nav">
                      <li class="rd-nav-item"><a class="rd-nav-link" href="about.html">등록/해지</a>
                        <!-- RD Navbar Dropdown-->
                        <ul class="rd-menu rd-navbar-dropdown">
                          <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="AccountRegistration.do">계좌등록</a></li>
                          <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="AccountTermination.do">계좌해지</a></li>
                        </ul>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="#">조회/이체</a>
                        <!-- RD Navbar Megamenu-->
                        <ul class="rd-menu rd-navbar-megamenu">
                          <li class="rd-megamenu-item">
                            <h6 class="rd-megamenu-title">계좌조회</h6>
                            <ul class="rd-megamenu-list">
                              <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="AccountCheck.do">보유계좌조회</a></li>
                              <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="AccountCheck.do">거래내역 조회</a></li>
                              <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="AccountCheck.cc">해지계좌 조회</a></li>
                              <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="AccountCheck.cc">휴면계좌조회</a></li>
                            </ul>
                          </li>
                          <li class="rd-megamenu-item">
                            <h6 class="rd-megamenu-title">이체</h6>
                            <ul class="rd-megamenu-list">
                              <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="AccountTransfer.cc">계좌이체</a></li>
                              <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="MultiAccountTransfer.cc">다 계좌이체</a></li>
                              <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="ISPAdd.cc">적금추가납입</a></li>
                            </ul>
                          </li>
                          <li class="rd-megamenu-item">
                            <h6 class="rd-megamenu-title">자동이체</h6>
                            <ul class="rd-megamenu-list">
                              <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="AutoTransferList.cc">조회/해지</a></li>
                              <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="AutoTransferRequest.cc">자동이체 신청</a></li>
                              <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="AutoTransferChangeRank.cc">자동이체 우선순위변경</a></li>
                              <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="#">자동이체 통합관리</a></li>
                            </ul>
                          </li>
                        </ul>
                      </li>

                      <!-- 박서하 수정 -->
                      <li class="rd-nav-item"><a class="rd-nav-link" href="#">대출센터</a>
						<ul class="rd-menu rd-navbar-megamenu">
                        	<li class="rd-megamenu-item">
                            	<h6 class="rd-megamenu-title">대출관리</h6>
                            	<ul class="rd-megamenu-list">
	                            	<li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="LoanAccountCheck.cc">대출계좌 조회</a></li>
	                              	<li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="LoanCloseCheck.cc">대출해지현황 조회</a></li>
	                              	<li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="#">신규대출</a></li>
	                            </ul>
                          	</li>
                          	<li class="rd-megamenu-item">
                            	<h6 class="rd-megamenu-title">대출납부</h6>
                            	<ul class="rd-megamenu-list">
	                            	<li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="LoanRateCheck.cc">대출이자 조회/납부</a></li>
	                              	<li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="LoanPrincipalCheck.cc">대출원금 조회/상환</a></li>
	                            </ul>
                          	</li>
                      	</ul>
                      </li>
                      <!-- 박서하 수정 종료 -->
                      <li class="rd-nav-item"><a class="rd-nav-link" href="#">금융상품</a>

	                       <ul class="rd-menu rd-navbar-megamenu">
	                          <li class="rd-megamenu-item">
	                            <h6 class="rd-megamenu-title">예금상품</h6>
	                            <ul class="rd-megamenu-list">
	                              <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="SavingsList.cc">적금상품</a></li>
	                              <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="DepositList.cc">정기예금</a></li>
	                            </ul>
	                          </li>
	                          <li class="rd-megamenu-item">
	                            <h6 class="rd-megamenu-title">대출상품</h6>
	                            <ul class="rd-megamenu-list">
	                              <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="LoansProducts.cc">대출상품</a></li>
	                            </ul>
	                          </li>
                          </ul>
                      </li>
                      
                      <li class="rd-nav-item"><a class="rd-nav-link" href="#">환전</a>
                        <!-- RD Navbar Dropdown-->
                        <ul class="rd-menu rd-navbar-dropdown">
                          <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="exchange.cc">환전서비스</a></li>
                          <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="exchangeCalculator.cc">환율계산기</a></li>
                          <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="exchangeList.cc">환율정보</a></li>
                        </ul>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="#">펀딩</a>
                        <!-- RD Navbar Dropdown-->
                        <ul class="rd-menu rd-navbar-dropdown">
                          <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="FundList.cc">펀드조회</a></li>
                          <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="FundAdd.cc">펀드등록</a></li>
                          <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="AdminFund.cc">(관리자)펀드승인요청리스트</a></li>
                        </ul>
                      </li>
                      <li class="rd-nav-item">
	                     <a class="rd-nav-link" href="#">고객센터</a>
                        <!-- RD Navbar Dropdown-->
                        <ul class="rd-menu rd-navbar-dropdown">
                          <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="Notice.cc">공지사항</a></li>
                          <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="Counseling.cc">고객상담</a></li>
                          <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="Chatbot.cc">챗봇상담</a></li>
                          
                          
                          <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="AdminChatbot.cc">(관리자)챗봇</a></li>
                          <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="SendEmailCounseling.cc">(관리자)이메일 상담 리스트</a></li>
                          <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="ReminderMail.cc">(관리자)대출상품</a></li>
                        </ul>
                      </li>
                      <c:if test="${id==null}">
                      	<li class="rd-nav-item"><a class="rd-nav-link" href="login.cc">로그인</a>
                      </c:if>
			         <c:if test="${id!=null}">
                      	<li class="rd-nav-item">
                      		<a class="rd-nav-link" href="" onclick="document.logoutForm.submit()">로그아웃</a>
			          		<form action = "logout.cc" name="logoutForm" method = 'post'>
								<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }"/>
							</form>
			          	</li>
			          </c:if>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </nav>
        </div>
      </header>