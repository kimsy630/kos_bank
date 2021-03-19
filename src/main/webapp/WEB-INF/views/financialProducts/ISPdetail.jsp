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
             <h1>입출금자유</h1>
             <ul class="breadcrumbs-custom">
               <li><a href="#">금융상품</a></li>
               <li><a href="LoansProducts.cc">입출금자유</a></li>
               <li class="active">WELCOME 직장인사랑 보통예금</li>
             </ul>
           </div>
         </section><!-- Breadcrumbs end -->
      
      <br>
      
       <section class="inner-page">
          <div class="container">
            <div class="card-body">
                  <p>
                        <h2><b>WELCOME 직장인사랑 보통예금</b></h2>
                        <h5>조건충족 시 우대금리를 드리는 직장인 전용 보통예금</h5>
                  </p>
                  <!-- ======= Button trigger for basic modal ======= -->
                  <button type="button" class="btn btn-outline-primary block" data-bs-toggle="modal"
                      data-bs-target="#default">
                         상담신청
                  </button>
                  <button type="button" class="btn btn-outline-primary block" data-bs-toggle="modal"
                      data-bs-target="#default">
                         가입신청
                  </button>
                  <!-- Button trigger for basic modal end -->
               </div>
                  
            <br><hr><br><br>
            
            <!-- ======= Table with outer spacing ======= -->
                <div class="table-responsive">
                   <h4><b>상품안내</b></h4><br>
                    <table class="table table-lg">
                        <thead>
                            <tr>
                                <td class="text-bold-500">예금종류</td>
                                <td>저축예금</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="text-bold-500">가입대상</td>
                                <td>만 19세 이상 실명의 개인</td>

                            </tr>
                            <tr>
                                <td class="text-bold-500">가입기간</td>
                                <td>제한없음</td>

                            </tr>
                            <tr>
                                <td class="text-bold-500">납입금액</td>
                                <td>제한없음</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">이자지급방법</td>
                                <td>매월 셋째주(토요일 기준) 토요일의 직전 영업일에 결산 후 익일에 지급</td>
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
                        <td style="background-color:#d9d9d9"></td>
                        <td style="text-align:center; background-color:#d9d9d9">구분</td>
                     </tr>
                     <tr>
                        <td style="text-align:center">기본금리</td>
                        <td style="text-align:center">연 0.5% (변동금리)</td>
                     </tr>
                  </tbody>
               </table>
            </div>
            <br>
            <!-- What You Get -->
            <div class="table-custom-responsive">
                   <h4><b>금리안내 - 약정금리 </b></h4><br>
               <table class="table-custom table-custom-bordered">
                  <colgroup>
                     <col style="width: 20%;">
                     <col style="width: 80%;">
                  </colgroup>
                  <tbody>
                     <tr>
                        <td style="text-align:center; background-color:#d9d9d9">중도해지이율</td>
                        <td style="text-align:center">해당없음</td>
                     </tr>
                     <tr>
                        <td style="text-align:center; background-color:#d9d9d9">만기 후 이율</td>
                        <td style="text-align:center">해당없음</td>
                     </tr>
                  </tbody>
               </table>
               <ul>
               	<li>준법감시인 심의필(공) 제67호, 심의일 (2021.02.24), 유효기간 현재</li>
               	<li>상품가입 후 의문사항 또는 불만(민원)이 있을 경우 고객상담센터 또는 인터넷 홈페이지에 문의할 수 있고, 분쟁이 발생한 경우에는 금융감독원(국번 없이 1332)등에 도움을 요청 할 수 있습니다.</li>
               </ul>
            </div>
            <br>
            
            <section>
               <h4><b>약관 및 특약 다운로드</b></h4><br>
               <div class="box_agree">
                  <ul>   
                     <li>
                        <span class="fl">예금거래기본약관(2020.12.03)</span>
                        <button type="button" class="btn_i_bg fR" data-download="btnDownload" title="여신거래기본약관(2020.12.03) 첨부파일 다운로드"><span class="excel"></span>다운로드</button>
                        <input type="hidden" id="fileName" name="fileName" value="여신거래기본약관(2020.12.03).pdf">
                     </li>                  
                     <li>
                        <span class="fl">예금상품설명서(고객용)</span>
                        <button type="button" class="btn_i_bg fR" data-download="btnDownload" title="대출상품설명서(고객용) 첨부파일 다운로드"><span class="excel"></span>다운로드</button>
                        <input type="hidden" id="fileName" name="fileName" value="대출상품설명서(고객용).pdf">
                     </li>
                  </ul>
               </div>
            </section>
         </div>
      </section>
   </main>
   
   <br><br>

<%@ include file = "../footer.jsp" %>
</body>
</html>