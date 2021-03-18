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
      <!-- Page Header-->
      <%@include file="../header.jsp" %>
      <!-- Swiper-->
      <section class="section swiper-container swiper-slider swiper-slider-3" data-loop="true" data-autoplay="false" data-simulate-touch="false" data-slide-effect="fade">
        <div class="swiper-wrapper">
          <div class="swiper-slide context-dark" data-slide-bg="${path}images/main1.jpg">
            <div class="swiper-slide-caption">
              <div class="container">
                <div class="row">
                  <div class="col-md-10 col-lg-7">
                    <h1 data-caption-animate="fadeInUp" data-caption-delay="100">Banking & Financial Theme</h1>
                    <p class="lead" data-caption-animate="fadeInUp" data-caption-delay="250">A universal solution for Banking and Financial establishments designed by professionals.</p><a class="button button-lg button-primary" href="#" data-caption-animate="fadeInUp" data-caption-delay="450">Buy It Now</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide context-dark" data-slide-bg="${path}images/main2.jpg" style="background-position: 50% 50%;">
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
          <div class="swiper-slide context-dark" data-slide-bg="${path}images/main3.png" style="background-position: 50% 50%;">
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
            <div class="col-sm-4 wow fadeInUp"><a class="gallery-item-1" href="index-1.html"><img src="${path}images/layout-1-370x550.jpg" alt="" width="370" height="550"/></a></div>
            <div class="col-sm-4 wow fadeInUp" data-wow-delay="0.1s"><a class="gallery-item-1" href="index-2.html"><img src="${path}images/layout-2-370x550.jpg" alt="" width="370" height="550"/></a></div>
            <div class="col-sm-4 wow fadeInUp" data-wow-delay="0.2s"><a class="gallery-item-1" href="index-3.html"><img src="${path}images/layout-3-370x550.jpg" alt="" width="370" height="550"/></a></div>
          </div>
        </div>
      </section>
      <!-- What You Get-->
      <section class="section section-lg bg-gray-100">
        <div class="container text-center">
          <h2 class="custom-title"><span>What You Get</span></h2>
          <div class="row row-30 row-flex">
            <div class="col-md-6 col-lg-3 wow fadeInRight">
              <div class="blurb-boxed-3">
                <div class="icon mdi mdi-television-guide"></div>
                <h6 class="title">Advanced UI Kit</h6>
                <p class="exeption">Make the pages of your website look more attractive with our new Advanced UI Kit.</p>
              </div>
            </div>
            <div class="col-md-6 col-lg-3 wow fadeInRight" data-wow-delay="0.1s">
              <div class="blurb-boxed-3">
                <div class="icon mdi mdi-sync"></div>
                <h6 class="title">Free Updates</h6>
                <p class="exeption">We provide all our customers with free lifetime updates for this template.</p>
              </div>
            </div>
            <div class="col-md-6 col-lg-3 wow fadeInRight" data-wow-delay="0.2s">
              <div class="blurb-boxed-3">
                <div class="icon mdi mdi-format-bold"></div>
                <h6 class="title">Bootstrap Toolkit</h6>
                <p class="exeption">Intuitive and powerful Bootstrap toolkit offers endless website customization.</p>
              </div>
            </div>
            <div class="col-md-6 col-lg-3 wow fadeInRight" data-wow-delay="0.3s">
              <div class="blurb-boxed-3">
                <div class="icon mdi mdi-cellphone-link"></div>
                <h6 class="title">Full Responsiveness</h6>
                <p class="exeption">This theme can be displayed on any device due to its responsive technology</p>
              </div>
            </div>
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
                  <div class="counter heading-2">24</div>
                  <div class="heading-2">+</div>
                </div>
                <div class="title heading-5">Years of Experience</div>
              </div>
            </div>
            <div class="col-sm-6 col-lg-3">
              <div class="counter-minimal">
                <div class="counter-wrap">
                  <div class="counter heading-2">3</div>
                </div>
                <div class="title heading-5">Different Layouts</div>
              </div>
            </div>
            <div class="col-sm-6 col-lg-3">
              <div class="counter-minimal">
                <div class="counter-wrap">
                  <div class="counter heading-2">30</div>
                  <div class="heading-2">+</div>
                </div>
                <div class="title heading-5">HTML Pages</div>
              </div>
            </div>
            <div class="col-sm-6 col-lg-3">
              <div class="counter-minimal">
                <div class="counter-wrap">
                  <div class="counter heading-2">4</div>
                </div>
                <div class="title heading-5">Blog Layouts</div>
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
            <div class="col-sm-6 col-md-4 col-lg-2 wow fadeIn"><a class="link-image" href="#"><img src="${path}images/variations-1-170x112.png" alt="" width="170" height="112"/></a></div>
            <div class="col-sm-6 col-md-4 col-lg-2 wow fadeIn"><a class="link-image" href="#"><img src="${path}images/variations-2-170x112.png" alt="" width="170" height="112"/></a></div>
            <div class="col-sm-6 col-md-4 col-lg-2 wow fadeIn"><a class="link-image" href="#"><img src="${path}images/variations-3-170x112.png" alt="" width="170" height="112"/></a></div>
            <div class="col-sm-6 col-md-4 col-lg-2 wow fadeIn"><a class="link-image" href="#"><img src="${path}images/variations-4-170x112.png" alt="" width="170" height="112"/></a></div>
            <div class="col-sm-6 col-md-4 col-lg-2 wow fadeIn"><a class="link-image" href="#"><img src="${path}images/variations-5-170x112.png" alt="" width="170" height="112"/></a></div>
            <div class="col-sm-6 col-md-4 col-lg-2 wow fadeIn"><a class="link-image" href="#"><img src="${path}images/variations-6-170x112.png" alt="" width="170" height="112"/></a></div>
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
            <div class="col-md-10 col-xl-8"><img src="${path}images/landing-1-748x531.png" alt="" width="748" height="531"/>
            </div>
          </div>
        </div>
      </section>
      <!-- Portfolio & Blog Layouts-->
      <section class="section section-md section-bottom-0 bg-gray-100">
        <div class="container text-center wow fadeIn">
          <h2 class="custom-title"><span>Portfolio & Blog Layouts</span></h2>
          <div class="row row-offset-4">
            <div class="col-12"><img src="${path}images/landing-2-1071x337.png" alt="" width="1071" height="337"/>
            </div>
          </div>
        </div>
      </section>
      <!-- Support-->
      <section class="section section-sm bg-primary-gradient">
        <div class="container">
          <div class="box-inline">
            <div class="box-inline-inner">
              <div class="icon mdi mdi-headphones"></div>
            </div>
            <div class="box-inline-inner">
              <div class="heading-2">Dedicated 24/7 Support</div>
            </div>
          </div>
        </div>
      </section>
      <!-- Page Footer-->
      <%@ include file="../footer.jsp" %>
    </div>
    
  </body>
</html>
