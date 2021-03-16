<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html>

<head>
  
  <!-- =======================================================
  * Template Name: FlexStart - v1.1.1
  * Template URL: https://bootstrapmade.com/flexstart-bootstrap-startup-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
<%@ include file="../header.jsp" %>
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero d-flex align-items-center">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center">
          <h1 data-aos="fade-up">KOS BANK</h1>
          <h2 data-aos="fade-up" data-aos-delay="400">Korea Online Special Bank</h2>
          <!-- The future of finance for customers  -->
          <div data-aos="fade-up" data-aos-delay="600">
            <div class="text-center text-lg-start">
              <!-- <a href="#about" class="btn-get-started scrollto d-inline-flex align-items-center justify-content-center align-self-center">
                <span>Get Started</span>
                <i class="bi bi-arrow-right"></i>
              </a> -->
            </div>
          </div>
        </div>
        <div class="col-lg-6 hero-img" data-aos="zoom-out" data-aos-delay="200">
          <img src="${path}assets/img/hero-img.png" class="img-fluid" alt="">
        </div>
      </div>
    </div>

  </section><!-- End Hero -->

<%@ include file="../footer.jsp" %>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="${path}assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
  <script src="${path}assets/vendor/aos/aos.js"></script>
  <script src="${path}assets/vendor/php-email-form/validate.js"></script>
  <script src="${path}assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="${path}assets/vendor/purecounter/purecounter.js"></script>
  <script src="${path}assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="${path}assets/vendor/glightbox/js/glightbox.min.js"></script>

  <!-- Template Main JS File -->
  <script src="${path}assets/js/main.js"></script>

</body>

</html>