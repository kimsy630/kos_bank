<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<%@ include file = "../header.jsp" %>
	
	<main id="main">
	
		<!-- ======= Breadcrumbs ======= -->
      	<section class="section section-bredcrumbs">
	        <div class="container context-dark breadcrumb-wrapper">
	          <h2>신규대출</h2>
	        </div>
      	</section><!-- Breadcrumbs end -->
	    
		<br>
		
	    <section class="inner-page">
	    	<div class="container">
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
		                	<form action="LoanApplicationAction" name="LoanApplicationForm" onchange="">
		                		<input type="hidden" name="d_rate" value="${vo.d_interest_rate}">
			                    <table class="table table-lg">
			                    	<colgroup>
				                    	<col style="width: 25%;">
				                     	<col style="width: 75%;">
				                  	</colgroup>
			                        <tbody>
			                            <tr>
			                                <td class="text-bold-500">대출기간</td>
			                                <td>
			                                	<select name="d_month" lengthtype="length">
			                                		<c:forEach var="i" begin="${vo.d_min_date}" end="${vo.d_max_date}">
													   	<option value="${i*12}">${i}</option>
													</c:forEach>
												</select>
			                                	년
			                                </td>
			                            </tr>
			                            <tr>
			                                <td class="text-bold-500">대출금리</td>
			                                <td>${vo.d_interest_rate}%</td>
			                            </tr>
			                            <tr>
			                                <td class="text-bold-500">대출금액</td>
			                                <td>
			                                	<select name="d_amount" lengthtype="length">
			                                		<c:forEach var="i"  begin="${vo.d_min_price}" end="${vo.d_max_price}">
													    <option value="${i*100000000}">${i}</option>
												    </c:forEach>
												</select>
												억원
			                                </td>
			                            </tr>
			                            <tr>
			                                <td class="text-bold-500">상환방법</td>
			                                <td>
			                                	<select name="d_repay" lengthtype="length">
												    <option value="만기일시">만기일시상환방식</option>
												    <option value="원금균등분할">원금균등분할상환방식</option>
												</select>
			                                </td>
			                            </tr>
			                            <tr>
			                            	<td class="text-bold-500">자동이체신청 여부</td>
			                                <td>
	                                    		<select id="autoCheck" name="autoCheck" lengthtype="length" onchange="setDisplay()">
													<option value="yes" selected>신청</option>
													<option value="no" >미신청</option>
												</select>
												<script type="text/javascript">
												$("#autoCheck").change(function () {
													var value = $("#autoCheck option:selected").val();
													if(value == "yes"){
													    $("#content").css("display","inline");
													    $("#content2").css("display","inline");
													}else{
														$("#content").css("display","none");
														$("#content2").css("display","none");
													}
												});
												</script>
												
												
			                                </td>
			                            </tr>
			                        	<tr>
			                            	<td>자동이체 출금 계좌번호</td>
			                            	<td>
												<select id="content" name="d_auto_account" lengthtype="length">
												    <option value="" selected>선택하세요.</option>
												    <option value="555-555-555555">555-555-555555</option>
												</select>
											</td>
			                            </tr>
			                            
			                            <tr>
			                            	<td>자동이체출금일자</td>
			                            	<td>
				                            	<div id="content2">
					                            	<select name="d_auto_date" lengthtype="length">
				                                		<c:forEach var="i" begin="1" end="31">
														    <option value="${i}">${i}</option>
													    </c:forEach>
													</select>
													일
												</div>
			                            	</td>
			                            </tr>
			                        </tbody>
			                    </table>
		                    </form>
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