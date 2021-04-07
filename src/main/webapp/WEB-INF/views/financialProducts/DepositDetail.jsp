<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
             <h1>${vo.y_name}</h1>
             <ul class="breadcrumbs-custom">
               <li><a href="#">금융상품</a></li>
               <li><a href="DepositList.cc">예금상품</a></li>
               <li class="active">${vo.y_name}</li>
             </ul>
           </div>
         </section><!-- Breadcrumbs end -->
      <br>
       <section class="inner-page">
          <div class="container">
            <div class="card-body">
                  <p>
                        <h2><b>${vo.y_name}</b></h2><br>
                        <h5>${vo.y_summary}</h5>
                  </p>
                  <!-- ======= Button trigger for basic modal ======= -->
                  <button type="button" class="btn btn-outline-primary block" data-bs-toggle="modal" 
                  data-bs-target="#default" onclick="document.location.href='DepositRegistration.do?y_name=${vo.y_name}'">
                         	가입신청
                  </button>
                  <!-- Button trigger for basic modal end -->
               </div>
                <div><br>
	           <h5><b>${vo.y_explanation}</b></h5>
	           </div><br><hr><br><br>
            <!-- ======= Table with outer spacing ======= -->
                <div class="table-responsive">
                   <h4><b>상품안내</b></h4><br>
                    <table class="table table-lg">
                        <thead>
                            <tr>
                                <td class="text-bold-500">예금종류</td>
                                <td>예치식</td>
                            </tr>
                        </thead>
                        <tbody>
                      		  <tr>
                                <td class="text-bold-500">최소예치금액</td>
                                <td><fmt:formatNumber value="${vo.y_min_price}" pattern="###,###"/>원</td>

                            </tr>
                            <tr>
                                <td class="text-bold-500">가입기간</td>
                                <td>${vo.y_min_date}개월 ~ ${vo.y_max_date}개월</td>

                            </tr>
                            <tr>
                                <td class="text-bold-500">적금금리</td>
                                <td>${vo.y_type}</td>
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
                        <td style="text-align:center">약정기간의 80% 이상<fmt:parseNumber var= "month" integerOnly= "true" value= "${vo.y_max_date*0.8}" />(${month}달~)</td>
                        <td style="text-align:center"><fmt:formatNumber var="fmt" value="${vo.y_interest_rate}" pattern="0.0"/>${fmt}%</td>
                     </tr>
                     <tr>
                        <td style="text-align:center">약정기간의 60% 이상<fmt:parseNumber var= "month" integerOnly= "true" value= "${vo.y_max_date*0.6}" />(${month}달~)</td>
                        <td style="text-align:center"><fmt:formatNumber var="fmt" value="${vo.y_interest_rate*0.9}" pattern="0.0"/>${fmt}%</td>
                     </tr>
                     <tr>
                        <td style="text-align:center">약정기간의 40% 이상<fmt:parseNumber var= "month" integerOnly= "true" value= "${vo.y_max_date*0.4}" />(${month}달~)</td>
                        <td style="text-align:center"><fmt:formatNumber var="fmt" value="${vo.y_interest_rate*0.6}" pattern="0.0"/>${fmt}%</td>
                     </tr>
                     <tr>
                        <td style="text-align:center">약정기간의 20% 이상<fmt:parseNumber var= "month" integerOnly= "true" value= "${vo.y_max_date*0.2}" />(${month}달~)</td>
                        <td style="text-align:center"><fmt:formatNumber var="fmt" value="${vo.y_interest_rate*0.3}" pattern="0.0"/>${fmt}%</td>
                     </tr>
                     <tr>
                        <td style="text-align:center">20% 미만<fmt:parseNumber var= "month" integerOnly= "true" value= "${vo.y_max_date*0.2-1}" />(~${month}달)</td>
                        <td style="text-align:center"><fmt:formatNumber var="fmt" value="${vo.y_interest_rate*0.1}" pattern="0.0"/>${fmt}%</td>
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