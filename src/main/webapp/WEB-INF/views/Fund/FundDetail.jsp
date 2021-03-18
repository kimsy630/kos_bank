
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
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
    	<%@ include file="../header.jsp" %>
    	<section class="section section-bredcrumbs">
	        <div class="container context-dark breadcrumb-wrapper">
	          <h1>펀드 상세정보</h1>
	        </div>
	     </section>
			<main id="Chatbot" class="Chatbot">
			    <div class="container">
			    <br> <br> <br> <br> <br> <br> <br>
				<form class="form-signin" action="loginAction.cc" method="post" role="form" >
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					 <!-- Swiper-->
				      <section class="section swiper-container swiper-slider swiper-slider-3" data-loop="true" data-autoplay="false" data-simulate-touch="false" data-slide-effect="fade">
				        <div class="swiper-wrapper">
				          <div class="swiper-slide context-dark" data-slide-bg="resources/images/slider-1-1920x879.jpg">
				            <div class="swiper-slide-caption">
				              <div class="container">
				                <div class="row">
				                  <div class="col-md-10 col-lg-7">
				                    <h1 data-caption-animate="fadeInUp" data-caption-delay="100">'마사지+스트레칭+운동' 이 모든 기능을 한번에 3 IN 1</h1>
				                    <p class="lead" data-caption-animate="fadeInUp" data-caption-delay="250">안녕하세요, 마스터핏 이코치 입니다.</p><a class="button button-lg button-primary" href="FundAction.cc" data-caption-animate="fadeInUp" data-caption-delay="450">펀딩 바로하기</a>
				                  </div>
				                </div>
				              </div>
				            </div>
				          </div>
				          <div class="swiper-slide context-dark" data-slide-bg="images/slider-2-1920x879.jpg" style="background-position: 50% 50%;">
				            <div class="swiper-slide-caption">
				              <div class="container">
				                <div class="row">
				                  <div class="col-md-10 col-lg-7">
				                    <h1 data-caption-animate="fadeInUp" data-caption-delay="100">Fully Customizable Web Solution</h1>
				                    <p class="lead" data-caption-animate="fadeInUp" data-caption-delay="250">Built on Bootstrap Framework, .Bank offers a variety of ways to customize your future website.</p><a class="button button-lg button-primary button-icon button-icon-left" href="#" data-caption-animate="fadeInUp" data-caption-delay="450">Buy It Now</a>
				                  </div>
				                </div>
				              </div>
				            </div>
				          </div>
				          <div class="swiper-slide context-dark" data-slide-bg="images/slider-3-1920x879.jpg" style="background-position: 50% 50%;">
				            <div class="swiper-slide-caption">
				              <div class="container">
				                <div class="row">
				                  <div class="col-md-10 col-lg-7">
				                    <h1 data-caption-animate="fadeInUp" data-caption-delay="100">Flawless Design & Useful Features</h1>
				                    <p class="lead" data-caption-animate="fadeInUp" data-caption-delay="250">This theme offers everything you may need - from responsiveness to free updates and even more!</p><a class="button button-lg button-primary button-icon button-icon-left" href="#" data-caption-animate="fadeInUp" data-caption-delay="450">Buy It Now</a>
				                  </div>
				                </div>
				              </div>
				            </div>
				          </div>
				        </div>
				        <!-- Swiper Pagination-->
				        <div class="container swiper-pagination-wrap">
				          <div class="swiper-pagination"></div>
				        </div>
				      </section>
				      <!-- Layouts-->
				      <section class="section section-md">
				        <div class="container text-center">
				          <h2 class="custom-title"><span>Layouts</span></h2>
				          <div class="row row-30" data-lightgallery="group">
				            <div class="col-sm-4 wow fadeInUp"><a class="gallery-item-1" href="index-1.html"><img src="resources/images/layout-1-370x550.jpg" alt="" width="370" height="550"/></a></div>
				            <div class="col-sm-4 wow fadeInUp" data-wow-delay="0.1s"><a class="gallery-item-1" href="index-2.html"><img src="resources/images/layout-2-370x550.jpg" alt="" width="370" height="550"/></a></div>
				            <div class="col-sm-4 wow fadeInUp" data-wow-delay="0.2s"><a class="gallery-item-1" href="index-3.html"><img src="resources/images/layout-3-370x550.jpg" alt="" width="370" height="550"/></a></div>
				          </div>
				        </div>
				      </section>
				      <!-- What You Get-->
				      <section class="section section-sm bg-primary-gradient">
				        <div class="container text-center text-lg-left">
				          <div class="row row-30 justify-content-center">
				            <div class="col-sm-6 col-lg-3">
				              <div class="counter-minimal">
				                <div class="counter-wrap">
				                  <div class="counter heading-2">14,750,000</div>
				                  <div class="heading-2">원</div>
				                </div>
				                <div class="title heading-5">펀딩 금액</div>
				              </div>
				            </div>
				            <div class="col-sm-6 col-lg-3">
				              <div class="counter-minimal">
				                <div class="counter-wrap">
				                  <div class="counter heading-2">30</div>
				                </div>
				                <div class="title heading-5">펀딩 인원</div>
				              </div>
				            </div>
				            <div class="col-sm-6 col-lg-3">
				              <div class="counter-minimal">
				                <div class="counter-wrap">
				                  <div class="counter heading-2">300</div>
				                  <div class="heading-2">+</div>
				                </div>
				                <div class="title heading-5">조회수</div>
				              </div>
				            </div>
				            <div class="col-sm-6 col-lg-3">
				              <div class="counter-minimal">
				                <div class="counter-wrap">
				                  <div class="counter heading-2">7</div>
				                </div>
				                <div class="title heading-5">남은 일수</div>
				              </div>
				            </div>
				          </div>
				        </div>
				      </section>
				      <!-- Different Header and Footer Variations-->
				      <section class="section section-md bg-primary-dark">
				        <div class="container text-center">
				          <h2 class="custom-title"><span>Different Header and Footer Variations</span></h2>
				          <div class="row row-30">
				            <div class="col-sm-6 col-md-4 col-lg-2 wow fadeIn"><a class="link-image" href="#"><img src="images/variations-1-170x112.png" alt="" width="170" height="112"/></a></div>
				            <div class="col-sm-6 col-md-4 col-lg-2 wow fadeIn"><a class="link-image" href="#"><img src="images/variations-2-170x112.png" alt="" width="170" height="112"/></a></div>
				            <div class="col-sm-6 col-md-4 col-lg-2 wow fadeIn"><a class="link-image" href="#"><img src="images/variations-3-170x112.png" alt="" width="170" height="112"/></a></div>
				            <div class="col-sm-6 col-md-4 col-lg-2 wow fadeIn"><a class="link-image" href="#"><img src="images/variations-4-170x112.png" alt="" width="170" height="112"/></a></div>
				            <div class="col-sm-6 col-md-4 col-lg-2 wow fadeIn"><a class="link-image" href="#"><img src="images/variations-5-170x112.png" alt="" width="170" height="112"/></a></div>
				            <div class="col-sm-6 col-md-4 col-lg-2 wow fadeIn"><a class="link-image" href="#"><img src="images/variations-6-170x112.png" alt="" width="170" height="112"/></a></div>
				          </div>
				        </div>
				      </section>
				      <!-- Niche Adapted Pages-->
				      <section class="section">
				        <div class="container text-center text-xl-left wow fadeIn">
				          <div class="row row-fix justify-content-center align-items-end">
				            <div class="col-md-10 col-xl-4">
				              <div class="section-lg">
				                <h2>Niche Adapted Pages</h2>
				                <p class="text-gray-600">We have prepared different pages for your website that  will perfectly fit any niche of financial & banking business. You can use them to describe your services, special offers, or any benefits you have for your potential clients and regular customers.</p><a class="button button-lg button-primary" href="#">Buy Theme Now</a>
				              </div>
				            </div>
				            <div class="col-md-10 col-xl-8"><img src="images/landing-1-748x531.png" alt="" width="748" height="531"/>
				            </div>
				          </div>
				        </div>
				      </section>
				      <!-- Portfolio & Blog Layouts-->
				      <section class="section section-md section-bottom-0 bg-gray-100">
				        <div class="container text-center wow fadeIn">
				          <h2 class="custom-title"><span>Portfolio & Blog Layouts</span></h2>
				          <div class="row row-offset-4">
				            <div class="col-12"><img src="images/landing-2-1071x337.png" alt="" width="1071" height="337"/>
				            </div>
				          </div>
				        </div>
				      </section>
					
			    	
				</form>
				</div>
				</main>
			    <br> <br> <br> <br> <br> <br> <br>
    	<%@ include file="../footer.jsp" %>
    </div>
  </body>
</html>
