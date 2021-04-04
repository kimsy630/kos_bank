<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "../header.jsp" %>

   <main id="main">
   		
   		
   		
      <!-- ======= Breadcrumbs ======= -->
         <section class="section section-bredcrumbs">
           <div class="container context-dark breadcrumb-wrapper">
             <h1>${vo.j_name}</h1>
             <ul class="breadcrumbs-custom">
               <li><a href="#">금융상품</a></li>
               <li><a href="SavingsList.cc">적금상품</a></li>
               <li class="active">${vo.j_name}</li>
             </ul>
           </div>
         </section><!-- Breadcrumbs end -->
      
      <br>
      
       <section class="inner-page">
          <div class="container">
            <div class="card-body">
                  <p>
                        <h2><b>${vo.j_name}</b></h2><br>
                        <h5>${vo.j_summary}</h5>
                  </p>
                  <!-- ======= Button trigger for basic modal ======= -->
                  <button type="button" class="btn btn-outline-primary block" data-bs-toggle="modal"
                      data-bs-target="#default" onclick="document.location.href='SavingsRegistration.do?j_name=${item.j_name}'">
                         	가입신청
                  </button>
                  <!-- Button trigger for basic modal end -->
               </div>
                <div><br>
	           <h4>${vo.j_explanation}</h4><br><hr><br>
	           <h4>${vo.j_notice}</h4>
	           </div><br><hr><br><br>
            
            <!-- ======= Table with outer spacing ======= -->
                <div class="table-responsive">
                   <h4><b>상품안내</b></h4><br>
                    <table class="table table-lg">
                        <thead>
                            <tr>
                                <td class="text-bold-500">적금종류</td>
                                <td>자유적립/정액적립식</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="text-bold-500">가입기간</td>
                                <td>${vo.j_min_date}개월 ~ ${vo.j_max_date}개월</td>

                            </tr>
                            <tr>
                                <td class="text-bold-500">적금금리</td>
                                <td>${vo.j_type}</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">이자지급방법</td>
                                <td>만기일시지급식</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            <!-- Table with outer spacing end -->
            
            <div class="table-custom-responsive">
                   <h4><b>금리안내 - 약정금리 </b></h4><br>
               <table class="table-custom table-custom-bordered">
                  <colgroup>
                     <col style="width: 40%;">
                     <col style="width: 60%;">
                  </colgroup>
                  <tbody>
                     <tr>
                        <td style="background-color:#d9d9d9; text-align:center;">기간</td>
                        <td style="text-align:center; background-color:#d9d9d9">금리(연이율)</td>
                     </tr>
                     <tr>
                        <td style="text-align:center">${vo.j_min_date}개월~${vo.j_max_date}개월</td>
                        <td style="text-align:center">${vo.j_interest_rate}%</td>
                     </tr>
                  </tbody>
               </table>
            </div>
         </div>
      </section>
   </main>
   <br><br>
<%@ include file = "../footer.jsp" %>
</body>
</html>