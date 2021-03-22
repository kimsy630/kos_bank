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
	    <link rel="stylesheet" href="${path}css/productList.css" id="main-styles-link">
	   	<!-- 버튼이동 -->
	    <script type="text/javascript">
	    function regFDP() {
	    	location.href="regFDP.cc";
	    }
	    </script>
	    <!-- 버튼이동 -->
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
          <h1>정기예금</h1>
        </div>
     </section>
      <!-- 상품개요  -->
      <section class="inner-page">
          <div class="container">
               <section class="section">
                     <div class="card">
                         <div class="card-body">
                              <p>KOS뱅크의 모든 정기예금상품을 만나보세요.</p>
                          </div>
                      </div>
                </section>
            </div>         
        </section>
<!-- 금융상품란 -->
      <section class="section section-lg bg-default">
        <div class="container">
          <div class="row">
            <div class="col-lg-9 col-xl-8">
              <p>총<em>5</em>개의 상품</p>
              <!-- Bootstrap collapse-->
              <div class="card-group-custom card-group-corporate" id="accordion1" role="tablist" aria-multiselectable="false">
                <!-- Bootstrap card-->
                <article id="article" class="card card-custom card-corporate">
                 <div id="goods" class="goods">
                 <h4 data-prd-cd="1130313506" data-sys-ds-cd="01"><a href="FDPdetail.cc">m-정기예금(복리)</a></h4>
                 <p class="desc">이자획득을 목적으로 하는 목돈 운용의 대표상품</p>
                 </div>
                 <div id="interests" class="interests">
				<em>연 <strong style="">6.00</strong><span>%</span></em>
				<p>(최대세전, 12개월 기준)</p>
				</div>
                 <div id="btns" class="button button-primary button-round" onclick="regFDP()">가입하기</div>
                </article>
                <article id="article" class="card card-custom card-corporate">
                 <div id="goods" class="goods">
                 <h4 data-prd-cd="1130313506" data-sys-ds-cd="01"><a href="FDPdetail.cc">m-정기예금(단리)</a></h4>
                 <p class="desc">이자획득을 목적으로 하는 목돈 운용의 대표상품</p>
                 </div>
                 <div id="interests" class="interests">
				<em>연 <strong style="">5.00</strong><span>%</span></em>
				<p>(최대세전, 12개월 기준)</p>
				</div>
                 <div id="btns" class="button button-primary button-round" onclick="regFDP()">가입하기</div>
                </article>
                <article id="article" class="card card-custom card-corporate">
                 <div id="goods" class="goods">
                 <h4 data-prd-cd="1130313506" data-sys-ds-cd="01"><a href="FDPdetail.cc">e-정기예금(복리)</a></h4>
                 <p class="desc">이자획득을 목적으로 하는 목돈 운용의 대표상품</p>
                 </div>
                 <div id="interests" class="interests">
				<em>연 <strong style="">4.00</strong><span>%</span></em>
				<p>(최대세전, 12개월 기준)</p>
				</div>
                 <div id="btns" class="button button-primary button-round" onclick="regFDP()">가입하기</div>
                </article>
                <article id="article" class="card card-custom card-corporate">
                 <div id="goods" class="goods">
                 <h4 data-prd-cd="1130313506" data-sys-ds-cd="01"><a href="FDPdetail.cc">e-정기예금(단리)</a></h4>
                 <p class="desc">이자획득을 목적으로 하는 목돈 운용의 대표상품</p>
                 </div>
                 <div id="interests" class="interests">
				<em>연 <strong style="">3.00</strong><span>%</span></em>
				<p>(최대세전, 12개월 기준)</p>
				</div>
                 <div id="btns" class="button button-primary button-round" onclick="regFDP()">가입하기</div>
                </article>
                <article id="article" class="card card-custom card-corporate">
                 <div id="goods" class="goods">
                 <h4 data-prd-cd="1130313506" data-sys-ds-cd="01"><a href="FDPdetail.cc">KOS ISA 정기예금</a></h4>
                 <p class="desc">이자획득을 목적으로 하는 목돈 운용의 대표상품</p>
                 </div>
                 <div id="interests" class="interests">
				<em>연 <strong style="">2.00</strong><span>%</span></em>
				<p>(최대세전, 12개월 기준)</p>
				</div>
                 <div id="btns" class="button button-primary button-round" onclick="regFDP()">가입하기</div>
                </article>
              </div>
            </div>
          </div>
        </div>
      </section>
                <img src="../teamProject/resources/testimage/고객-예금상품조회.png">
      <%@ include file="../footer.jsp" %>
    </div>
  </body>
</html>
