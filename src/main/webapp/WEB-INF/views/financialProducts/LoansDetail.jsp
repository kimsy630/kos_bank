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
	          <h1>개인대출</h1>
	          <ul class="breadcrumbs-custom">
	            <li><a href="#">금융상품</a></li>
	            <li><a href="LoansProducts.cc">대출상품</a></li>
	            <li class="active">개인대출</li>
	          </ul>
	        </div>
      	</section><!-- Breadcrumbs end -->
		
		<br>
		
	    <section class="inner-page">
		    <div class="container">
				<div class="card-body">
		            <p>
						<h6>개인대출</h6>
		               	<h2><b>직장인 신용대출</b></h2>
		               	<h5>방문 없이 전화로 간편하게. 복잡한 신용대출 절차를 바꾸다!</h5>
		            </p>
		            <!-- ======= Button trigger for basic modal ======= -->
		            <button type="button" class="btn btn-outline-primary block" data-bs-toggle="modal"
		                data-bs-target="#default" onclick="document.location.href='#'">
		                	상담신청
		            </button>
		            <button type="button" class="btn btn-outline-primary block" data-bs-toggle="modal"
		                data-bs-target="#default" onclick="document.location.href='LoanApplication.cc'">
		                	대출신청
		            </button>
		            <!-- Button trigger for basic modal end -->
	            </div>
		            
				<br><hr><br><br>
				
				<!-- ======= Table with outer spacing ======= -->
                <div class="table-responsive">
                	<h4><b>상품안내</b></h4>
                    <table class="table table-lg">
                        <thead>
                            <tr>
                                <td class="text-bold-500">신청대상</td>
                                <td>만 20세 이상의 직장인</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="text-bold-500">대출기간</td>
                                <td>6개월 ~ 7년(6개월 단위계약)</td>

                            </tr>
                            <tr>
                                <td class="text-bold-500">대출금리</td>
                                <td>연 5.9% ~ 연 19.9% 이내(개인신용평점 및 소득에 따라 차등적용)</td>

                            </tr>
                            <tr>
                                <td class="text-bold-500">대출한도</td>
                                <td>최대 1억원(개인신용평점 및 소득에 따라 차등적용)</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">상환방법</td>
                                <td>만기일시상환방식, 원리금균등분할상환방식</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">이자납입방법</td>
                                <td>매월 후취</td>
                            </tr>
                            	
					  		<tr>
                                <td class="text-bold-500">수수료</td>
                                <td>취급수수료: 없음, 연장수수료: 없음</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">중도상환수수료</td>
                                <td>1.7% 이내 (대출취급일로부터 3년 이상 거래 시 중도상환수수료 면제)</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">구비서류</td>
                                <td>소득증빙서류, 신분증</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">신청채널</td>
                                <td>ARS, 홈페이지, 모바일</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">연체금리</td>
                                <td>대출금리 + 3% 이내 (최대 연 22.9%)</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">인지세</td>
                                <td>대출금 5천만원까지는 수입인지비용이 없으며, 5천만원 초과시 대출금액별로 차등 부과</td>
                            </tr>
                            <tr>
                                <td class="text-bold-500">자금용도</td>
                                <td>가계자금</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- Table with outer spacing end -->
				
				<br>
          
          		<!-- What You Get -->
				<section>
					<form name="calcForm3" id="calcForm3" action="post" initfrmload="Y" autocomplete="off">
						<h4><b>대출상환 계산기</b></h4>
						
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
											<option value="2">원금균등분할상환</option>
											<option value="3">원리금균등분할상환</option>
										</select>
				                	</p>
				              	</div>
				            </div>
				            <div class="col-md-6 col-lg-3 wow fadeInRight" data-wow-delay="0.3s">
				            	<div class="blurb-boxed-3">
				                	<button type="button" class="tbtn_gray btnCalc" id="calc2" data-calc="calcDiv3" title="대출상환 계산기 레이어팝업 열기">계산하기</button>
				              	</div>
				            </div>
				        </div>
						
						<input type="hidden" name="hid_key_data" id="hid_key_data" value=""><input type="hidden" name="hid_enc_data" id="hid_enc_data" value="">
					</form>
				</section>
				<!-- What You Get end -->
				
				<br>
				
				<section>
					<h4><b>지연 배상율</b></h4>
					<div class="title_btn">2021. 03. 18 기준</div>
					<p class="mT5 txtL">지연배상율은 대출금리 + 3%로 최대 연 22.9% 를 초과하지 않습니다.</p>
				</section>
				
				<br>
				
				<h4><b>유의사항</b></h4>
				
				<ul>
					<li>준법감시인 심의필(공) 제48호 (2021.03.04), 유효기간 현재 저축은행 심사기준과 고객 신용도에 따라 대출여부가 결정됩니다.</li>
				</ul>
				<ul>
					<li>대출만기 경과 후 미상환시 연체이자 납부, 금융질서문란정보 등의 불이익을 받을 수 있으며, 기간 연장시점에 개인신상에 변경이 있는 경우 대출금의 일부 또는 전부가 회수될 수 있습니다.</li>
				</ul>
				<ul>
					<li>대출금의 상환 또는 이자납입이 지연된 경우 연체이율이 적용되며 예금 등 기타채권과의 상계나 법적절차 등으로 재산상의 불이익을 당하실 수 있습니다.</li>
				</ul>
				<ul>
					<li>기타 자세한 내용은 고객센터(1661-0001)로 문의하시기 바랍니다.</li>
				</ul>
				<ul>
					<li>대출상품 이용시 귀하의 신용등급 또는 개인신용평점이 하락할 수 있습니다.</li>
				</ul>
				<ul>
					<li>신용등급 또는 개인신용평점 하락으로 금융거래가 제약될 수 있습니다.</li>
				</ul>

				<br>
				
				<h4><b>금리인하 요구권</b></h4>
				<ul>
					<li>금리인하 적용대상
						<ul>
							<li>차주(가계.기업) 및 대출종류(신용.담보대출) 등에 관계없이 금리인하요구 행사가 가능합니다. 단, 협약대출, 주계약업체의 약정금리를 적용하는 대출(B2B, B2B+ 등), 전액담보부 여신, 무이자대출 등의 경우 금리인하 요구권 행사 적용대상에서 제외됩니다.</li>
						</ul>
					</li>
					<br>
					<li>금리인하 행사 요건
						<ul>
							<li>금리인하요구제도에 따라 금리인하를 요구할 수 있는 요건은 다음과 같습니다.</li>
							<br>
							<li>개인대출
								<ul>
									<li>① 취업 : 중소기업에서 대기업, 공공기관으로 취업한 경우</li>
									<li>② 연소득 증가 : 연소득이 증가한 경우(연소득 15% 이상 증가)</li>
									<li>③ 승진 : 동일 직장내에서 직위(직급)가 상승한 경우</li>
									<li>④ 전문자격증을 취득하고 현업에 종사하게 된 경우</li>
									<li>⑤ 내부평가에 의한 등급 또는 신용평점(분위)의 개선 및 우수고객으로 선정된 경우</li>
								</ul>
							</li>
							<br>
							<li>기업대출(법인 및 개인사업자)
								<ul>
									<li>① 기업 및 기업 대표자(개인사업자 포함)의 내부평가에 의한 통합등급이 상승한 경우</li>
									<li>② 전년도 대비 매출액 20% 이상 상승된 경우</li>
									<li>③ 차주가 사업에 핵심 경쟁력으로 반영할 수 있는 특허 취득</li>
									<li>④ 차주가 유효가 있는 담보를 추가 제공한 경우</li>
								</ul>
							</li>
							<br>
							<li>신청방법
								<ul>
									<li>행사요건을 증빙할 수 있는 서류를 첨부한 금리인하요구 신청서를 작성하여 거래하는 영업점 제출해야 합니다. (단, 행사요건 기준에 따라 관련자료를 녹취 등으로 대신할 수 있음) 재직증명서, 근로소득원천징수영수증, 해당자격증, 기타 직위변동 확인서, 특허취득 확인서, 재무제표 등 차주의 신용상태변동을 입증할 수 있는 서류 등</li>
								</ul>
							</li>
							<br>
							<li>기타
								<ul>
									<li>심사결과에 따라 금리인하가 불가능 할 수 있습니다.</li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>

				<br>
				<h4><b>대출철회 안내문</b></h4>
				<ul>
					<li>대출계약 철회권
						<ul>
							<li>대출계약 철회권은 금융소비자가 대출계약에 대한 숙려기간 동안 불이익 없이 대출계약으로부터 탈퇴를 할 수 있는 권리입니다.</li>
						</ul>
					</li>
					<br>
					<li>대출계약철회 대상
						<ul>
							<li>개인 대출자 중 리스를 제외한 대출금액이 4천만원 이하인 신용대출 또는 대출금액이 2억원 이하인 담보대출은 가능하며 단, 외부기관 위탁대출 (소상공인 정책자금 대출 등) 및 기타 협약대출 (사잇돌대출, 햇살론 등)은 제외됩니다.</li>
						</ul>
					</li>
					<br>
					<li>대출계약철회 행사절차
						<ul>
							<li>대출계약 후 14일이내 (계약서 또는 대출금 수령일 중 나중에 발생한 날부터 기산) 철회의 의사표시를 하고 원리금 등을 전액 상환함으로써 계약으로부터 탈퇴가 가능합니다.</li>
						</ul>
					</li>
					<li>기타
						<ul>
							<li>전체 금융회사 대상 1개월 1회 또는 해당은행 대상 1년 2회를 초과 시 계약 철회 신청이 제한됩니다.</li>
						</ul>
					</li>
				</ul>
				
              	<div class="table-custom-responsive">
                	<h4><b>대출모집 수수료율</b></h4>
					<table class="table-custom table-custom-secondary table-custom-hovered">
						<colgroup>
							<col style="width: 14%;">
							<col style="width: 30%;">
							<col style="width: 28%;">
							<col style="width: 28%;">
						</colgroup>
						<tbody>
							<tr>
								<th rowspan="2" scope="col">상품 구분</th>
								<th rowspan="2" scope="col">지급 기준</th>
								<th colspan="2" scope="col">대출모집 수수료율</th>
							</tr>
							<tr>
								<th scope="col" class="borL">대출금액(취급액)</th>
								<th scope="col">수수료율(VAT별도)</th>
							</tr>
							<tr>
								<th rowspan="3" class="bor_R" scope="row">신용대출</th>
								<td rowspan="3">대출모집인을 통해 대출을 취급하는 경우</td>
								
							</tr>
							<tr>
								<td class="borL">5백만원 이하</td>
								<td>대출금액(취급액)의 4%</td>
							</tr>
							<tr>
								<td class="borL">5백만원 초과</td>
								<td>500만원 초과 대출금액(취급액)의 3% + 20만원</td>
							</tr>	
							<tr>
								<th rowspan="2" class="bor_R" scope="row">햇살론</th>
								<td rowspan="2">대출모집인을 통해 대출을 취급하는 경우</td>
								<!-- <td colspan="2" >수수료율(VAT별도)</td> -->
							</tr>
							<tr>
								<td class="borL">-</td>
								<td class="borL">대출금액의 2.0%</td>
							</tr>
							<tr>
								<th rowspan="2" class="bor_R" scope="row">사잇돌2대출</th>
								<td rowspan="2">대출모집인을 통해 대출을 취급하는 경우</td>
								<!-- <td colspan="2" >수수료율(VAT별도)</td> -->
							</tr>
							<tr>
								<!-- <td colspan="2" class="borL">대출금액의 2.0%</td> -->
								<td class="borL">-</td>
								<td class="borL">대출금액의 2.0%</td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<ul>
					<li>웰컴저축은행에서 판매하는 대출상품의 금리와 대출모집인이 판매하는 대출상품의 금리는 동일합니다.</li>
				</ul>
				<ul>
					<li>대출모집인 수수료는 저축은행 부담이며 고객님의 대출금리에 영향을 주지 않습니다.</li>
				</ul>
				<ul>
					<li>대출모집인 수수료는 대출금리와는 무관하며, 고객이 부담하지 않습니다.</li>
				</ul>
				<ul>
					<li>웰컴저축은행과 대출모집인이 판매하는 대출상품은 금리를 포함한 모든 조건이 동일합니다.</li>
				</ul>
				
				<br>
				
				<section>
					<h4><b>약관 및 특약 다운로드</b></h4>
					<div class="box_agree">
						<ul>	
							<li>
								<span class="fl">여신거래기본약관(2020.12.03)</span>
								<button type="button" class="btn_i_bg fR" data-download="btnDownload" title="여신거래기본약관(2020.12.03) 첨부파일 다운로드"><span class="excel"></span>다운로드</button>
								<input type="hidden" id="fileName" name="fileName" value="여신거래기본약관(2020.12.03).pdf">
							</li>						
							<li>
								<span class="fl">대출상품설명서(고객용)</span>
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