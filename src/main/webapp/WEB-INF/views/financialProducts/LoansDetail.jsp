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
	          <h2>대출상품</h2>
	        </div>
      	</section><!-- Breadcrumbs end -->
		
		<br>
		
	    <section class="inner-page">
		    <div class="container">
				<div class="card-body">
		            <p>
						<h6>대출상품</h6>
		               	<h2><b>${vo.d_name}</b></h2>
		               	<h5>${vo.d_summary}</h5>
		            </p>
		            <!-- ======= Button trigger for basic modal ======= -->
		            <button type="button" class="btn btn-outline-primary block" data-bs-toggle="modal"
		                data-bs-target="#default" onclick="document.location.href='LoanApplication.do?d_name=${vo.d_name}'">
		                	신청하기
		            </button>
		            <!-- Button trigger for basic modal end -->
	            </div>
		        
				<br><hr><br><br>
				
				<!-- ======= Table with outer spacing ======= -->
                <div class="table-responsive">
                	<h4><b>상품안내</b></h4>
                    <table class="table table-lg">
                    	<colgroup>
	                    	<col style="width: 25%;">
	                     	<col style="width: 75%;">
	                  	</colgroup>
                        <tbody>
                            <tr>
                                <td class="text-bold-500">대출기간</td>
                                <td>${vo.d_min_date} ~ ${vo.d_max_date}년</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">대출금리</td>
                                <td>연 ${vo.d_interest_rate}%</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">대출금액</td>
                                <td>${vo.d_min_price} ~ ${vo.d_max_price}억원</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">상환방법</td>
                                <td>${vo.d_explanation1}</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">이자납입방법</td>
                                <td>${vo.d_explanation2}</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">중도상환수수료</td>
                                <td>${vo.d_explanation3}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- Table with outer spacing end -->
			</div>
		</section>
	</main>
	
	<br><br>
	
<%@ include file = "../footer.jsp" %>
</body>
</html>