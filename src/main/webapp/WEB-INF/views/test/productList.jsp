<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Tabs and Accordions</title>
    <link rel="stylesheet" href="${path}css/productList.css" id="main-styles-link">
    <!--[if lt IE 10]>
    <div style="background: #212121; padding: 10px 0; box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3); clear: both; text-align:center; position: relative; z-index:1;"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <script src="js/html5shiv.min.js"></script>
    <![endif]-->
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
      <section class="inner-page">
          <div class="container">
            <h2>전체예금상품</h2><br>
               <section class="section">
                     <div class="card">
                         <div class="card-body">
                              <p>KOS뱅크의 모든 예금상품을 만나보세요.</p>
                          </div>
                      </div>
                </section>
            </div>         
        </section>
               <!-- Accordion-->
      <section class="section section-lg bg-default">
        <div class="container">
          <div class="row">
            <div class="col-lg-9 col-xl-8">
              <p>총<em>1</em>개의 상품</p>
              <!-- Bootstrap collapse-->
              <div class="card-group-custom card-group-corporate" id="accordion1" role="tablist" aria-multiselectable="false">
                <!-- Bootstrap card-->
                <article id="article" class="card card-custom card-corporate">
                 <div id="goods" class="goods">
                 <h4 data-prd-cd="1130313506" data-sys-ds-cd="01"><a href="#none">웰뱅 든든적금</a></h4>
                 <p class="desc">신용평점이 낮아도 우대금리를 제공해드리는 웰뱅만의 금융혜택!</p>
                 </div>
                 <div id="interests" class="interests">
				<em>연 <strong style="">6.00</strong><span>%</span></em>
				<p>(최대세전, 12개월 기준)</p>
				</div>
                 <div id="btns" class="button button-primary button-round">가입하기</div>
                </article>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- Page Footer-->
      <footer class="section footer-1">
        <div class="container">
          <div class="row row-40 wow fadeIn">
            <div class="col-md-6 col-lg-4">
              <h5 class="title">About Us</h5>
              <p>Dot Bank is the leading financial establishment providing high-quality international banking services. Our success is attributed to our loyal customers and to the talent and dedication of our professional and skilled employees. We are always ready to partner with you by offering full financial support to our clients worldwide.</p><a class="footer-logo" href="index.html"><img src="images/logo-inverse-145x39.png" alt="" width="145" height="39"/></a>
            </div>
            <div class="col-md-6 col-lg-4">
              <h5 class="title">Twitter Feed</h5>
              <!-- RD Twitter Feed-->
              <div class="twitter" data-twitter-username="templatemonster" data-twitter-date-hours=" hours ago" data-twitter-date-minutes=" minutes ago">
                <div class="tweet" data-twitter-type="tweet">
                  <div class="tweet-left">
                    <div class="icon fa-twitter"></div>
                  </div>
                  <div class="tweet-right">
                    <div class="twitter-text text-dark" data-tweet="text"></div>
                    <div class="twitter-meta">
                      <div class="twitter-name" data-screen_name="text"></div>
                    </div>
                  </div>
                </div>
                <div class="tweet" data-twitter-type="tweet">
                  <div class="tweet-left">
                    <div class="icon fa-twitter"></div>
                  </div>
                  <div class="tweet-right">
                    <div class="twitter-text text-dark" data-tweet="text"></div>
                    <div class="twitter-meta">
                      <div class="twitter-name" data-screen_name="text"></div>
                    </div>
                  </div>
                </div>
                <div class="tweet" data-twitter-type="tweet">
                  <div class="tweet-left">
                    <div class="icon fa-twitter"></div>
                  </div>
                  <div class="tweet-right">
                    <div class="twitter-text text-dark" data-tweet="text"></div>
                    <div class="twitter-meta">
                      <div class="twitter-name" data-screen_name="text"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-10 col-lg-4">
              <h5 class="title">Get in Touch</h5>
              <!-- RD Mailform-->
              <form class="rd-form rd-mailform" data-form-output="form-output-global" data-form-type="contact" method="post" action="bat/rd-mailform.php">
                <div class="form-wrap">
                  <input class="form-input" id="contact-name-footer" type="text" name="name" data-constraints="@Required">
                  <label class="form-label" for="contact-name-footer">Name</label>
                </div>
                <div class="form-wrap">
                  <input class="form-input" id="contact-email-footer" type="email" name="email" data-constraints="@Email @Required">
                  <label class="form-label" for="contact-email-footer">E-mail</label>
                </div>
                <div class="form-wrap">
                  <label class="form-label" for="contact-message-footer">Message</label>
                  <textarea class="form-input" id="contact-message-footer" name="message" data-constraints="@Required"></textarea>
                </div>
                <button class="button button-primary" type="submit">Send</button>
              </form>
            </div>
          </div>
          <!-- Rights-->
          <p class="rights"><span>&copy;&nbsp; </span><span class="copyright-year"></span><span>&nbsp;</span><span>All rights reserved</span><span>.&nbsp;</span><a href="privacy-policy.html">Privacy Policy</a></p>
        </div>
      </footer>
    </div>
    <!-- PANEL-->
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="${path}js/core.min.js"></script>
    <script src="${path}js/script.js"></script>
  </body>
</html>