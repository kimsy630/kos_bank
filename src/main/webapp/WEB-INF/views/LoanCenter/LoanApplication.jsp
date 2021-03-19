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
	          <h1>신규대출</h1>
	          <ul class="breadcrumbs-custom">
	            <li><a href="#">대출센터</a></li>
	            <li class="active">신규대출</li>
	          </ul>
	        </div>
      	</section><!-- Breadcrumbs end -->
	    
		<br>
		
	    <section class="inner-page">
	    	<div class="container">
				<h2>신규대출</h2><br>
				<section class="section">
		            <div class="card">
		                <div class="card-body">
	                        <p>고객님의 정보를 입력해주시면 상담원이 빠르게 연락드리겠습니다.</p>
	                    </div>
	                </div>
	                
	                <br><br><br>
      				
					<!-- What You Get -->
					<div class="container text-center">
						<form name="calcForm3" id="calcForm3" action="post" initfrmload="Y" autocomplete="off">
							<h4><b>Q. 어떤 일을 하고 계신가요?</b></h4>
							<div class="row row-30 row-flex">
					        	<div class="col-md-6 col-lg-3 wow fadeInRight">
					            	<div class="blurb-boxed-3">
						                <div class="icon-wrap">
						                  <div class="icon mercury-icon-card"><span class="index-counter"></span></div>
						                </div>
					                	<input type="radio" name="jobDcd" id="jobDcd01" onclick="do_jobDcd(this.value);" value="01" checked="checked" data-gtm-vis-first-on-screen-2252179_781="18" data-gtm-vis-total-visible-time-2252179_781="100" data-gtm-vis-has-fired-2252179_781="1"> 
										<label for="jobDcd01" class="bg01">직장인</label>
					              	</div>
					            </div>
					            <div class="col-md-6 col-lg-3 wow fadeInRight" data-wow-delay="0.1s">
					            	<div class="blurb-boxed-3">
						                <div class="icon-wrap">
						                  <div class="icon mercury-icon-note"><span class="index-counter"></span></div>
						                </div>
					                	<input type="radio" name="jobDcd" id="jobDcd02" onclick="do_jobDcd(this.value);" value="02"> 
										<label for="jobDcd02" class="bg02">자영업자</label> 
					            	</div>
					            </div>
					            <div class="col-md-6 col-lg-3 wow fadeInRight" data-wow-delay="0.2s">
					            	<div class="blurb-boxed-3">
						                <div class="icon-wrap">
						                  <div class="icon mercury-icon-partners"><span class="index-counter"></span></div>
						                </div>
					                	<input type="radio" name="jobDcd" id="jobDcd03" onclick="do_jobDcd(this.value);" value="04"> 
										<label for="jobDcd03" class="bg03">주부</label> 
					              	</div>
					            </div>
					            <div class="col-md-6 col-lg-3 wow fadeInRight" data-wow-delay="0.3s">
					            	<div class="blurb-boxed-3">
					            		<div class="icon-wrap">
						                  <div class="icon mercury-icon-money-3"><span class="index-counter"></span></div>
						                </div>
					                	<input type="radio" name="jobDcd" id="jobDcd04" onclick="do_jobDcd(this.value);" value="05"> 
										<label for="jobDcd04" class="bg04">기타</label>
					              	</div>
					            </div>
					        </div>
						</form>
					</div>
					<!-- What You Get end -->
					
					<br><br><br>
					
					<div class="title_wrap">
						<h4><b>개인 정보</b></h4>
						<div class="fR">
							<em class="bul_nec">*<span class="blind">필수입력</span></em> <em>필수항목</em>
						</div>
					</div>
					
					<div class="table-custom-responsive">
	                	<h4><b>대출모집 수수료율</b></h4>
						<table class="table-custom table-custom-secondary table-custom-hovered">
							<colgroup>
								<col style="width: 15%;">
								<col style="width: 85%;">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">이름 <em class="bul_nec"></em></th>
									<td><input name="custNm" class="large filter:require:kor:eng" type="text" placeholder="이름" maxlength="50" lengthtype="length"></td>
								</tr>
								<tr>
									<th scope="row">휴대폰번호 <em class="bul_nec"></em></th>
									<td>
										<select name="mpDscmNo" lengthtype="length">
										    <option value="">선택</option>
										    <option value="010">010</option>
										    <option value="011">011</option>
										    <option value="016">016</option>
										    <option value="018">018</option>
										    <option value="017">017</option>
										    <option value="019">019</option>
										</select>
			 							- 
										<input type="text" name="mpExNum" maxlength="4" lengthtype="length" minlength="3">
										- 
										<input type="text" name="mpSeqNo" maxlength="4" lengthtype="length" minlength="4">
									</td>
								</tr>
							</tbody>
						</table>
					
						<br><br><br>
					
		                <h4><b>개인(신용)정보 및 약관 동의</b></h4>
						<table class="table-custom table-custom-secondary table-custom-hovered">
							<tr>
								<td>
									<p class="div">※고객 편의 제공을 위하여 <strong class="f_red">여러 동의사항에 대한 ‘전체동의’ 기능을 제공</strong>하고 있습니다.<br>전체동의 시 선택 동의사항을 포함하여 동의합니다.</p>
								</td>
							</tr>
						</table>
						
						<div class="row justify-content-lg-center">
							<a class="button button-round button-primary" href="#" data-caption-animate="fadeInUp" data-caption-delay="450">전체동의</a>
						</div>
						
						<br>
						
						<p class="note">* 아래 [필수] 항목은 동의 거부 시 여신거래 진행이 불가합니다.</p>
						<table class="table-custom table-custom-secondary table-custom-hovered">
							<tr>
								<th>
									[필수] 개인정보 수집·이용 동의서
									<button type="button" class="btn_chk_small" id="terms_018" name="terms" data-mdtryn="Y" data-term-title="개인정보 수집·이용 동의서">
										<span>내용확인</span>
									</button>
								</th>
							</tr>
							<tr>
								<th>
									개인(신용)정보 동의
									<input type="checkbox" name="agreeYn" class="custom" data-mdtryn="Y" data-agree-title="개인(신용)정보 조회를 위한 개인(신용)정보 동의" disabled=""> <label for="agreeYn1">동의함</label>
								</th>
							</tr>
						</table>
						
						<p class="note">* 아래 [선택] 항목에 대한 동의를 거부하시는 경우에도 여신거래가 가능합니다.</p>
						<table class="table-custom table-custom-secondary table-custom-hovered">
							<tr>
								<th>
									[선택] 선택적 정보 수집·이용 동의서
									<button type="button" class="btn_chk_small" id="terms_018" name="terms" data-mdtryn="Y" data-term-title="개인정보 수집·이용 동의서">
										<span>내용확인</span>
									</button>
								</th>
							</tr>
							<tr>
								<th>
									개인(신용)정보 동의
									<input type="checkbox" name="agreeYn" class="custom" data-mdtryn="Y" data-agree-title="개인(신용)정보 조회를 위한 개인(신용)정보 동의" disabled=""> <label for="agreeYn1">동의함</label>
								</th>
							</tr>
						</table>
						
						<p class="dot mT15">개인정보의 제공 및 수집 · 이용에 관한 동의사항을 반드시 숙지해 주시기 바라며, 필수적인 사항에 대해 동의하지 않은 경우에는 대출신청이 불가능함을 알려드립니다.</p>
						
						<br>
						
						<div class="row justify-content-lg-center">
							<a class="button button-round button-primary" href="#" data-caption-animate="fadeInUp" data-caption-delay="450">다음</a>
						</div>
						
						<br><br><br>
						
					</div>
				</section>
			</div>
		</section>
	</main>

<%@ include file = "../footer.jsp" %>
</body>
</html>