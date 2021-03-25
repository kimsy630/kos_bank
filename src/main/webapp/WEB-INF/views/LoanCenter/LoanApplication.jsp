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
	                        <p>제출 후 취소가 되지 않으니 신중하게 신청해주세요.<p>
	                    </div>
	                </div>
					<div class="table-custom-responsive">						
						<!-- ======= Table with outer spacing ======= -->
						<div class="table-responsive">
		                	<h4><b>가입 신청서</b></h4>
		                    <table class="table table-lg">
		                    	<colgroup>
			                    	<col style="width: 25%;">
			                     	<col style="width: 75%;">
			                  	</colgroup>
		                        <tbody>
		                            <tr>
		                                <td class="text-bold-500">대출기간</td>
		                                <td>
		                                	<select name="year" lengthtype="length">
											    <option value="1">1</option>
											    <option value="2">2</option>
											    <option value="3">3</option>
											</select>
		                                	년
		                                </td>
		                            </tr>
		                            <tr>
		                                <td class="text-bold-500">대출금리</td>
		                                <td><input type="text" name="" value="5" readonly>%</td>
		                            </tr>
		                            <tr>
		                                <td class="text-bold-500">대출금액</td>
		                                <td>
		                                	<select name="amount" lengthtype="length">
											    <option value="1">1</option>
											    <option value="2">2</option>
											    <option value="3">3</option>
											</select>
											억원
		                                </td>
		                            </tr>
		                            <tr>
		                                <td class="text-bold-500">상환방법</td>
		                                <td>
		                                	<select name="repay" lengthtype="length">
											    <option value="만기일시">만기일시상환방식</option>
											    <option value="원금균등분할">원금균등분할상환방식</option>
											</select>
		                                </td>
		                            </tr>
		                            <tr>
		                            	<td class="text-bold-500">이자납입방법</td>
		                                <td>
		                                	<select name="rate" lengthtype="length">
											    <option value="계좌이체">계좌이체</option>
											    <option value="자동이체">자동이체</option>
											</select>
		                                </td>
		                            </tr>
		                            <tr>
		                            	<td>자동이체 출금 계좌번호(자동이체 체크했을 시 뜨게)</td>
		                            	<td>
		                            		<select name="account" lengthtype="length">
											    <option value="555-555-555555">555-555-555555</option>
											</select>
										</td>
		                            </tr>
		                            <tr>
		                            	<td>자동이체출금일자 선택하기(자동이체 체크했을 시 뜨게)</td>
		                            	<td>
											<select name="date" lengthtype="length">
											    <option value="1">1</option>
											    <option value="2">2</option>
											    <option value="3">3</option>
											    <option value="4">4</option>
											    <option value="5">5</option>
											    <option value="6">6</option>
											    <option value="7">7</option>
											    <option value="8">8</option>
											    <option value="9">9</option>
											    <option value="10">10</option>
											    <option value="11">11</option>
											    <option value="12">12</option>
											    <option value="13">13</option>
											    <option value="14">14</option>
											    <option value="15">15</option>
											    <option value="16">16</option>
											    <option value="17">17</option>
											    <option value="18">18</option>
											    <option value="19">19</option>
											    <option value="20">20</option>
											    <option value="21">21</option>
											    <option value="22">22</option>
											    <option value="23">23</option>
											    <option value="24">24</option>
											    <option value="25">25</option>
											    <option value="26">26</option>
											    <option value="27">27</option>
											    <option value="28">28</option>
											    <option value="29">29</option>
											    <option value="30">30</option>
											    <option value="31">31</option>
											</select>
											일
		                            	</td>
		                            </tr>
		                        </tbody>
		                    </table>
		                </div>
		                <!-- Table with outer spacing end -->
						
						<br><br>
						
		                <h4><b>개인(신용)정보 및 약관 동의(뺄지말지 고민하기)</b></h4>
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
							<a class="button button-round button-primary" href="#" data-caption-animate="fadeInUp" data-caption-delay="450">신청</a>
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