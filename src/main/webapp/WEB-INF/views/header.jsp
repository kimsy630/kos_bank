<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="setting.jsp" %>
<!DOCTYPE html>
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>FlexStart Bootstrap Template - Index</title>
  <meta content="" name="description">

  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="${path}assets/img/favicon.png" rel="icon">
  <link href="${path}assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${path}assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${path}assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${path}assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="${path}assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="${path}assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="${path}assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${path}assets/css/style.css" rel="stylesheet">

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <a href="main.cc" class="logo d-flex align-items-center">
       <%--  <img src="${path}assets/img/logo.png"> --%>
        <img src="${path}assets/img/logo2.png">
        <!-- <span>FlexStart</span> -->
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li class="dropdown"><a href="#"><span>등록/해지.</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="AccountRegistration.cc">계좌등록</a></li>
              <li><a href="AccountTermination.cc">계좌해지</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href="#"><span >조회/이체.</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
            	<li class="dropdown"><a href="AccountCheck.cc"><span>계좌조회</span> <i class="bi bi-chevron-right"></i></a>
	                <ul>
	                  <li><a href="#">보유계좌조회.</a></li>
	                  <li><a href="#">거래내역 조회.</a></li>
	                  <li><a href="#">해지계좌 조회.</a></li>
	                  <li><a href="#">휴면계좌조회.</a></li>
	                </ul>
              	</li>
              <li class="dropdown"><a href="#"><span>이체.</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="AccountTransfer.cc">계좌이체</a></li>
                  <li><a href="MultiAccountTransfer.cc">다 계좌이체</a></li>
                  <li><a href="#">적금추가납입.</a></li>
                </ul>
              </li>
              <li class="dropdown"><a href="#"><span>자동이체.</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="#">조회/해지.</a></li>
                  <li><a href="#">자동이체 신청.</a></li>
                  <li><a href="#">자동이체 우선순위변경.</a></li>
                  <li><a href="#">자동이체 통합관리.</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li class="dropdown"><a href="#"><span>대출센터.</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
            	<li class="dropdown"><a href="#"><span>대출관리.</span> <i class="bi bi-chevron-right"></i></a>
	                <ul>
	                  <li><a href="#">대출조회.</a></li>
	                  <li><a href="#">대출이자/원금상환/약정해지.</a></li>
	                  <li><a href="#">예적금담보대출.</a></li>
	                  <li><a href="#">대출자동이체.</a></li>
	                </ul>
              	</li>
            </ul>
          </li>
          <li class="dropdown"><a href="#"><span>금융상품.</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
            	<li class="dropdown"><a href="DepositProduct.cc"><span>예금상품</span> <i class="bi bi-chevron-right"></i></a>
	                <ul>
	                  <li><a href="ISP.cc">적금상품</a></li>
	                  <li><a href="FixedDeposit.cc">정기예금</a></li>
	                </ul>
              	</li>
              	<li class="dropdown"><a href="LoansProducts.cc"><span>대출상품</span> <i class="bi bi-chevron-right"></i></a>
	                <ul>
	                  <li><a href="personalLoan.cc">개인대출</a></li>
	                </ul>
              	</li>
            </ul>
          </li>
           <li class="dropdown"><a href="#"><span>펀딩.</span> <i class="bi bi-chevron-down"></i></a>
	            <ul>
	            	<li class="dropdown"><a href="#"><span>펀드조회.</span> </a></li>
	              	<li class="dropdown"><a href="#"><span>펀드등록.</span></a></li>
	            </ul>
          </li>
          </li>
           <li class="dropdown"><a href="#"><span>고객센터.</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
            	<li class="dropdown"><a href="#"><span>챗봇상담.</span> </a></li>
              	<li class="dropdown"><a href="#"><span>채팅상담.</span> </a></li>
            	<li class="dropdown"><a href="#"><span>이메일 상담.</span> </a></li>
            </ul>
          </li>
          <!-- <li><a class="nav-link scrollto" href="#contact">Contact</a></li> -->
         <c:if test="${id==null}">
          	<li><a class="getstarted scrollto" href="login.cc">Login</a></li>
          </c:if>
          
         <c:if test="${id!=null}">
          	<li>
          		<a class="getstarted scrollto" href="#" onclick="document.logoutForm.submit()">Logout</a>
          		<form action = "logout.cc" name="logoutForm" method = 'post'>
					<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }"/>
				</form>
          	</li>
          	
              	
          </c:if>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
