
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

  <body>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	
	<script>
    $(function(){
    	var f_title = '펀드명: ' + "${f_title}";
    	var f_money = "${f_money}";
    	var m_email = "${m_email}";
    	var m_name = "${m_name}";
    	var m_phone = "${m_phone}";
    	var m_address = "${m_address}";
    	var m_postnum = "${m_postnum}";
        var IMP = window.IMP; // 생략가능
        IMP.init('imp61866142'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg;
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : f_title,
            amount : f_money,
            buyer_email : m_email,
            buyer_name : m_name,
            buyer_tel : m_phone,
            buyer_addr : m_address,
            buyer_postcode : m_postnum 
        }, function(rsp) {
            if ( rsp.success ) {
               //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
               jQuery.ajax({
                  url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
                  type: 'POST',
                  dataType: 'json',
                  data: {
                     imp_uid : rsp.imp_uid
                     //기타 필요한 데이터가 있으면 추가 전달
                  }
               }).done(function(data) {
                  //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                  if ( everythings_fine ) {
                     var msg = '결제가 완료되었습니다.';
                     msg += '\n고유ID : ' + rsp.imp_uid;
                     msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                     msg += '\결제 금액 : ' + rsp.paid_amount;
                     msg += '카드 승인번호 : ' + rsp.apply_num;
                     
                     alert(msg);
                  } else {
                     //[3] 아직 제대로 결제가 되지 않았습니다.
                     //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                  }
               });
               window.location="FundList.cc";
               
               var msg = '결제가 완료되었습니다.';
               msg += '\n고유ID : ' + rsp.imp_uid;
               msg += '\n상점 거래ID : ' + rsp.merchant_uid;
               msg += '\결제 금액 : ' + rsp.paid_amount;
               msg += '카드 승인번호 : ' + rsp.apply_num;
               
               alert(msg);
            } else {
                var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
                
                alert(msg);
                
                window.location="FundList.cc";
                
            }
        });
        
    });
    </script>
	
	
	<c:if test="${deleteCnt1==-1}">
		<script type="text/javascript">
			alert("약관 미동의로 펀딩하기 실패");
			window.history.back();
		</script>
	</c:if>
	
	<c:if test="${deleteCnt2==0}">
		<script type="text/javascript">
			alert("참자가 정보 등록 실패");
			window.history.back();
		</script>
	</c:if>
	
	<c:if test="${deleteCnt3==0}">
		<script type="text/javascript">
			alert("참가자 계좌에서 출금 실패");
			window.history.back();
		</script>
	</c:if>
	
	<c:if test="${deleteCnt3==0}">
		<script type="text/javascript">
			alert("참가자 계좌에서 출금 실패");
			window.history.back();
		</script>
	</c:if>
	
	<c:if test="${deleteCnt4==0}">
		<script type="text/javascript">
			alert("등록자 계좌에 입금 실패");
			window.history.back();
		</script>
	</c:if>
	
	<c:if test="${deleteCnt5==0}">
		<script type="text/javascript">
			alert("입금에 대한 이체 history 작성 실패");
			window.history.back();
		</script>
	</c:if>
	
	<c:if test="${deleteCnt6==0}">
		<script type="text/javascript">
			alert("출금에 대한 history 작성 실패");
			window.history.back();
		</script>
	</c:if>
	
	<c:if test="${deleteCnt!=0}">
		
	</c:if>
  </body>
</html>
