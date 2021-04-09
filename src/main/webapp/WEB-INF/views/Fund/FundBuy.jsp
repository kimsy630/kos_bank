
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>



<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<title>펀드</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
	function ss(){
	}
</script>
  <body>
  
    <div class="preloader">
      <div class="preloader-body">
        <div class="cssload-container">
          <div class="cssload-speeding-wheel"></div>
        </div>
        <p>Loading...</p>
      </div>
    </div>
    <div class="page">
    	<%@ include file="../header.jsp" %>
    	<section class="section section-bredcrumbs">
	        <div class="container context-dark breadcrumb-wrapper">
	          <h2>펀드 구매</h2>
	          <br>
	        </div>
	     </section>
	     <section class="section section-lg bg-default">
	     <div class="container">
			<form class="form-horizontal" role="form" method="post" action="FundBuyAction.cc?f_num=${f_num}">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
            <input type="hidden" name="id" value="${sessionScope.id}">
                <div class="form-group">
                    <label for="provision" class="col-lg-3 control-label"><strong>반환 정책에 대한동의</strong></label>
                    <div class="col-lg-10" id="provision">
                        <textarea class="form-control" rows="8" style="resize:none">
펀딩금 반환 안내
펀딩 종료 후, 아래 정책에 따라 펀딩금 반환 신청을 할 수 있습니다. 펀딩금 반환은 서포터가 펀딩한 카드 결제 건을 취소하는 방식으로 이뤄집니다.펀딩금 반환은 나의 펀딩 > 펀딩 내역에서 신청하실 수 있습니다.

1) 리워드가 지연될 경우
메이커가 리워드 발송 시작 예정일까지 리워드를 발송하지 않을 경우, 서포터는 펀딩금 반환 신청을 할 수 있습니다. 리워드 별 발송 시작 예정일은 다를 수 있으니, 나의 펀딩 - 펀딩 내역에서 펀딩한 리워드의 발송 시작 예정일을 확인하세요.

2) 리워드에 하자가 있을 경우
서포터가 수령한 리워드가 아래 하자 기준에 해당할 경우, 배송 완료일로부터 7일 이내에 펀딩금 반환 신청을 할 수 있습니다. 이때 메이커는 하자 판단을 위한 증빙자료, 리워드 반송을 서포터에게 요청할 수 있습니다.

・ 리워드의 품질에 아래와 같은 하자가 발생한 경우
예)

공산품, 공예품 등
제품 흠집, 휨, 백화현상 및 도장 불량, 악취 등 자극성 냄새, 좀 등의 벌레 발생, 균열, 뒤틀림 또는 변색, 녹, 누수, 오염
신발, 의류, 패션 잡화 등
봉제 불량, 접착 불량, 염색 불량, 원단 불량(제직, 세탁 후 변색, 탈색, 수축 등), 부자재 불량(단추, 지퍼, 천조각, 실오라기 등), 치수(사이즈)의 부정확
식품, 의약품, 의약외품, 생활위생용품, 화장품 등
이물혼입, 함량 부적합, 변질, 부패, 성분이상
그 외 품목
소비자분쟁해결 기준을 따름
・ 정상적인 사용상태에서 리워드의 기능/성능상 오작동 또는 미작동 되는 경우
・ 리워드로 인해 아래와 같은 피해를 입은 경우 ・ 부작용으로 인해 신체상의 피해가 발생한 경우 ・ 용기 불량, 파손 등으로 인한 상해, 피해사고를 입은 경우
자세한 하자 반환 기준은 펀딩금 반환 정책을 확인하세요.
단, 아래 어느 하나에 해당될 경우 펀딩금 반환은 불가합니다.

메이커가 프로젝트 페이지 내에 명시적으로 고지한 하자 불인정 사유에 해당하는 경우(예) 공장 제작 과정상 벌어짐 방지를 위해 봉제되어 제공되는 포켓은 하자 사유가 되지 않습니다.
서포터의 귀책 사유로 리워드의 일부 혹은 전체가 분실/파손/고장/오염/훼손이 발생된 경우
모니터 해상도의 차이로 인해 색상이나 이미지가 실제와 다른 경우
공연, 디지털컨텐츠, 여행 패키지 상품, 무형 서비스 및 컨텐츠의 제공이 완료되었을 경우
3) 기타 주의 사항
크라우드펀딩의 특성상 프로젝트 종료 후 서포터의 단순변심으로 인한 펀딩금 반환은 불가합니다.
회사는 메이커와 상호 협의 하에 프로젝트를 취소할 수 있으며, 펀딩 종료 후 프로젝트가 취소될 경우에는 펀딩금이 반환됩니다.
하자가 있는 경우, 리워드 반송을 위한 배송비는 메이커가 부담하여야 하고 하자가 없는 경우에는 리워드 반송 및 재반송에 대한 배송비를 서포터에게 청구될 수 있습니다.

                     </textarea>
	                 	<div>
	                 	
		                     <input type="radio" name="agree1"  value="yes" id="agree1">
		                     <label for="agree1"> 동의합니다.</label>
		                     &emsp;
		               		<input type="radio" name="agree1" value="no" id="degree1">
		               		<label  for="degree1"> 동의하지않습니다.</label>
            			</div>
            		</div>
                </div>
                <div class="form-group">
                    <label for="memberInfo" class="col-lg-3 control-label"><strong>제 3자에 대한 개인정보 제공 동의</strong></label>
                    <div class="col-lg-10" id="memberInfo">
                        <textarea class="form-control" rows="4" style="resize:none">
'펀딩하기'를 통한 결제 및 리워드 전달 서비스를 제공하기 위해, 이용자의 사전 동의 아래 제3자(프로젝트 메이커)에게 제공합니다.
메이커에게 전달되는 개인 정보는 기재된 목적 달성 후 파기에 대한 책임이 메이커에게 있으며, 파기하지 않아 생기는 문제에 대한 법적 책임은 메이커에게 있습니다.
아래 내용에 대하여 동의를 거부하실 수 있으며, 거부 시 서비스 이용이 제한됩니다.
              </textarea>
                        <div>
		                     <input type="radio" name="agree2"  value="yes" id="agree2">
		                     <label for="agree2"> 동의합니다.</label>
		                     &emsp;
		               		<input type="radio" name="agree2" value="no" id="degree2">
		               		<label  for="degree2"> 동의하지않습니다.</label>
            			</div>
            		</div>
                </div>
                
                <div class="form-group">
                    <label for="memberInfo" class="col-lg-3 control-label"><strong>책임 규정에 대한 동의</strong></label>
                    <div class="col-lg-10" id="memberInfo">
                        <textarea class="form-control" rows="4" style="resize:none">
KOS BANK는 플랫폼을 제공하는 중개자로 크라우드펀딩을 받는 당사자가 아닙니다. 
보상품 제공 등에 관한 지연, 제품의 하자 등으로 인한 일체의 법적책임은 펀딩을 받는 프로젝트 개설자가 부담합니다. 
하지만, KOS BANK는 프로젝트 진행자와 후원자간의 원활한 의사소통을 위해 최선의 노력을 다하고 있습니다.
              </textarea>
                        <div>
		                     <input type="radio" name="agree3"  value="yes" id="agree3">
		                     <label for="agree3"> 동의합니다.</label>
		                     &emsp;
		               		<input type="radio" name="agree3" value="no" id="degree3">
		               		<label  for="degree3"> 동의하지않습니다.</label>
            			</div>
            		</div>
                </div>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p><h3>펀딩하기</h3></p>
                <div class="form-group" id="divDate">
                    <label for="inputDate" class="col-lg-2 control-label">신청일</label>
                    <div class="col-lg-5">
                        <%= sf.format(nowTime) %>
                    </div>
                </div>
                <div class="form-group" id="divAccount">
                    <label for="inputAccount" class="col-lg-2 control-label">계좌번호</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control onlyAlphabetAndNumber" id="f_account" name="f_account" data-rule-required="true" placeholder="계좌번호를 입력해주세요." maxlength="20">
                    </div>
                </div>
                <div class="form-group" id="divMoney">
                    <label for="inputMoney" class="col-lg-2 control-label">펀딩액</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control onlyAlphabetAndNumber" id="f_money" name="f_money" data-rule-required="true" placeholder="금액을 입력해주세요." maxlength="20">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button type="submit" class="btn btn-primary">결제하기</button>
                    </div>
                </div>
            </form>
            </div>
           </section>
			    <br> <br> <br> <br> <br> <br> <br>
    	<%@ include file="../footer.jsp" %>
    </div>
  </body>
</html>
