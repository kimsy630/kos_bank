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
	          <h1>전체대출상품</h1>
	          <ul class="breadcrumbs-custom">
	            <li><a href="#">금융상품</a></li>
	            <li><a href="LoansProducts.cc">대출상품</a></li>
	            <li class="active">전체대출상품</li>
	          </ul>
	        </div>
      	</section><!-- Breadcrumbs end -->
		
		<br>
		
	    <section class="inner-page">
		    <div class="container">
				<div class="card-body">
		            <p>
						<h6>대출상품</h6>
		               	<h2><b>직장인 신용대출</b></h2>
		               	<h5>방문 없이 전화로 간편하게. 복잡한 신용대출 절차를 바꾸다!</h5>
		            </p>
		            <!-- ======= Button trigger for basic modal ======= -->
		            <button type="button" class="btn btn-outline-primary block" data-bs-toggle="modal"
		                data-bs-target="#default" onclick="document.location.href='LoanApplication.cc'">
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
                                <td>1년 ~ 10년</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">대출금리</td>
                                <td>연 5.9% ~ 연 19.9% 이내(★확인이 필요함-기준치 잡기★)</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">대출금액</td>
                                <td>최대 3억원</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">상환방법</td>
                                <td>만기일시상환방식, 원금균등분할상환방식</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">이자납입방법</td>
                                <td>매월 후취</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">중도상환수수료</td>
                                <td>1.7% 이내(★확인이 필요함-기준치 잡기★)</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- Table with outer spacing end -->
                
                <br><br>
                
          		<!-- What You Get -->
				<section>
					<form name="calcForm3" id="calcForm3" action="post" initfrmload="Y" autocomplete="off">
						<h4><b>대출상환 계산기(뺄지말지 고민하기)</b></h4>
						
						<div class="row row-30 row-flex">
				        	<div class="col-md-6 col-lg-3 wow fadeInRight">
				            	<div class="blurb-boxed-3">
				                	<h6 class="title">대출금액</h6>
				                	<input type="text" name="inputMoney" id="inputMoney3" class="filter:num txtR" data-amt="" placeholder="금액 입력" title="대출금액 입력" lengthtype="length"><span>원</span>
				                	<p class="exeption"><strong>최대 10억</strong>까지 입력가능</p>
				              	</div>
				            </div>
				            <div class="col-md-6 col-lg-3 wow fadeInRight" data-wow-delay="0.1s">
				            	<div class="blurb-boxed-3">
				                	<h6 class="title">대출기간</h6>
				                	<input type="text" name="inputMonth" id="inputMonth3" class="filter:num txtR" data-period="" placeholder="기간 입력" title="대출기간 입력" lengthtype="length"><span>개월</span>
				                	<p class="exeption"><strong>최대 120개월</strong>까지 입력가능</p>
				            	</div>
				            </div>
				            <div class="col-md-6 col-lg-3 wow fadeInRight" data-wow-delay="0.2s">
				            	<div class="blurb-boxed-3">
				                	<h6 class="title">대출금리</h6>
				                	<input type="text" name="inputRate" id="inputRate3" class="filter:float[2] txtR" data-rate="" title="대출금리 입력" lengthtype="length"><span>%</span>
				                	<p class="exeption"><strong>최대 100%</strong>까지 입력가능</p>
				              	</div>
				            </div>
				            <div class="col-md-6 col-lg-3 wow fadeInRight" data-wow-delay="0.3s">
				            	<div class="blurb-boxed-3">
				                	<h6 class="title">상환방법</h6>
				                	<p class="exeption">
					                	<select name="inqrType" id="inqrType3" title="상환방법 구분">
											<option value="1" selected="selected">만기일시상환</option>
											<option value="3">원금균등분할상환</option>
										</select>
				                	</p>
				              	</div>
				            </div>
	                    </div>
	                    
	                  	<div class="row justify-content-lg-center">
							<a class="button button-round button-primary" href="#" data-caption-animate="fadeInUp" data-caption-delay="450">계산하기</a>
						</div>
						
						<input type="hidden" name="hid_key_data" id="hid_key_data" value=""><input type="hidden" name="hid_enc_data" id="hid_enc_data" value="">
					</form>
				</section>
				<!-- What You Get end -->
				
			</div>
		</section>
	</main>
	
	<br><br>
	
<%@ include file = "../footer.jsp" %>
</body>
</html>