<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Home</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="${csspath}images/favicon.ico" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="pathtext/css" href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,700,900">
    <link rel="stylesheet" href="${csspath}css/bootstrap.css">
    <link rel="stylesheet" href="${csspath}css/fonts.css">
    <link rel="stylesheet" href="${csspath}css/style.css" id="main-styles-link">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  </head>
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
      <%@include file="../header.jsp" %>
 	<section class="section section-bredcrumbs">
        <div class="container context-dark breadcrumb-wrapper">
          <h2>계좌개설</h2>
          <br>
          <ul class="breadcrumbs-custom">
            <li><a href="index.html">개인</a></li>
            <li><a href="#">등록</a></li>
            <li class="active">계좌개설</li>
          </ul>
        </div>
      </section>
      <section class="section section-lg bg-default">
        <div class="container">
          <h3>계좌개설</h3>
          <br><hr><hr/><br> 
            <!--// 헤더 들어가는 부분 -->
            <!-- 모달창 -->
            <div class="modal fade" id="defaultModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title">알림</h4>
                        </div>
                        <div class="modal-body">
                            <p class="modal-contents"></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
            <!--// 모달창 -->
           
            <!-- 본문 들어가는 부분 -->
            <form class="form-horizontal" role="form" method="post" action="javascript:alert( 'success!' );">
                <div class="form-group">
                    <label for="provision" class="col-lg-2 control-label">계좌개설약관</label>
                    <div class="col-lg-10" id="provision">
                        <textarea class="form-control" rows="8" style="resize:none">
약관동의

1. 머리말
1.1 본 약관은 고객계좌개설신청서 또는 기타 적절한 방식으로 개설된 각 계좌	(" ") , , 계좌 에 적용되며 고객과 KosBank의 계좌개설 지점 자회사 및 계열회사에	대하여 구속력이 있습니다.
1.2 본 약관은 특정 국가나 지역에서 개설된 계좌에 대하여는 씨티은행이 고객에게 제공하고 고객과 KosBank에 대하여 구속력이 있는 현지 약관 현지 약관 ("") 에 의하여 보충되거나 변경됩니다.
1.3 이 약관과 현지 약관이 서로 상충하는 경우 현지 약관이우선합니다 이 약관이나 현지 약관과 고객에게 제공되는 서비스나 상품 서비스 에 관한 약정 (" ")서의 내용이서로 상충하는 경우 약정서가 우선합니다.
1.4 고객은 어느 계좌나 서비스와 관련하여 KosBank이 합리적으로 요구하는 모든 서류 및 기타 정보를 씨티은행에 제공하여야 합니다.
2. 권한
KosBank은 고객이 통신 아래에서 정의됨 을 발송하고 기타 행위를 하도록 KosBank가 인정하는 형식으로 지정한 자의 권한을 신뢰할 수 있으며 적법하게 수권된 자로부터 지정된 사람을 변경하는 서면 통지나 기타 씨티은행에게 만족
스러운 서면 통지를 수령하는 경우에도 그러한 변경통지에 따를 수 있는 합리적인 시간 씨티은행은 변경내용을 신뢰하기 위하여 경과하여야 하는 시간 이 경과 할 때 까지는 종전에 지정된 자의 권한을 신뢰할 수 있습니다.
3. 통신
3.1 , , ( " ") 고객과 KosBank은 양자간의 문의 통지 및 지시 각 통신 등 통신의 출처
를 확인하기 위하여 고안된 약정된 보안절차 통신절차 를 준수합니다 (" ").
3.2 KosBank은 통신절차에 포함된 바를제외하고는 통신 발신인의 권한이나 신원을 확인하기 위하여 어떠한 행위를 할 의무가 없습니다 
씨티은행은 고객의	실수나 누락 또는 고객이 보내 중복된 통신에 대하여 책임을 지지 않으며 비록 계좌명이 제시되더라도 오로지 계좌번호만을 참조하여 통신에 따른 지시를 실행할 수 있습니다 
통신이 충분한 정보를 포함하고 있다고 합리적으로 여겨지는 경우 씨티은행은 통신에 따라 실행할 수 있습니다.
3.3 어느 통신의 내용 권한 출처나 통신절차의 진위가 의심되는 경우에는 씨티
은행은 통신에 따른 지시의 실행을 거절할 수 있는바 이 경우 즉시 고객에게 그 이 문서는 한글과컴퓨터 한 글 뷰어 로 인쇄한 문서입니다 / 2007 .
한글과컴퓨터 오피스 정품을 구매하시면 보다 향상된 기능을 지원 받을 수 있습니다 2007 . ( www.haansoft.com )
결정을 적절한 경우 전화로 통지하여야 합니다.
3.4 , 고객이 통신을 재발송 취소하거나 변경하기를 원하는 경우 씨티은행을 이 ,
에 따르기 위하여 합리적인 노력을 다해야 합니다.
3.5 KosBank이 수동 조작을 요하는 수단 즉 전화 텔렉스 텔레팩스 전자우편이나 인편으로 보내는 디스켓 에 의하여 발송된 통신에 따라 지시를 실행한 경 )
우에 씨티은행이 정해진 통신과 관련하여 씨티은행에 발생하는 손실에 대하여
책임을 져야 합니다.
4. 입금 및 출금
4.1 KosBank는 계좌에 인출초과상태를 초래 또는 초과인출액을 증가시키는 하는 출금을 실행 할 수 있습니다.
4.2 KosBank는 입금액 또는 출금액에 상응하는 즉시 사용가능한 자금을 수령하기 전에는 계좌에 대한 입금 또는 출금을 실행할 의무가 없습니다 
만일 동 자금을 수령하기 전에 씨티은행이 입금이나 출금을 실행하는 경우 씨티은행은 입금액이나 출금액의 전부나 일부 이자 포함 를 취소하고 계좌에 거래취소에 따른 적절한 기장을 할 수 있으며 합리적으로 판단하여 필요하다고 
결정하는 경우에는 출금액에 상당하는 금액을 상환해 주도록 요청할 수 있습니다.
4.3 KosBank는 인출초과상태를 야기시키거나 초과인출액을 증가시키는 출금
을 실행할 의무는 없습니다 어느 시점에 계좌로부터의 총 출금액이 인출초과상 .
태를 초래하거나 계좌에 입금되어 있는 즉시 사용가능한 자금을 초과하는 경우,
씨티은행은 어느 출금지시를 전부실행 할 지 또는 일부만 순서대로 실행할 지 (
및 어떤 순서로실행할 지 실행할 것인지 결정할 수 있습니다 ) .
4.4 KosBank는 언제라도 신용 공여를취소할 수 있습니다 고객은 계좌해지지 .
시 및 기타 씨티은행의 요청시 계좌상의 초과인출금액이나 기타 신용공여액 이,
자 수수료 및 기타 부채액을 지급할 수 있는 충분한 금액의 즉시사용가능한 자 ,
금을 KosBank에 이체하여야 합니다.

                     </textarea>
	                 	<div>
	                 	
		                     <input type="radio" name="agree1"  value="yes" id="agree1">
		                     <label for="agree1"> 동의합니다.</label>
		               		<input type="radio" name="agree1" value="no" id="degree1"><!--  -->
		               		<label  for="degree1"> 동의하지않습니다.</label>
            			</div>
            		</div>
                </div>
                <div class="form-group">
                    <label for="memberInfo" class="col-lg-2 control-label">개인정보취급방침</label>
                    <div class="col-lg-10" id="memberInfo">
                        <textarea class="form-control" rows="8" style="resize:none">개인정보의 항목 및 수집방법
1. 개인정보 처리방침이란?
KosBank(이하"회사")는 이용자의 ‘동의를 기반으로 개인정보를 수집·이용 및 제공’하고 있으며, ‘이용자의 권리 (개인정보 자기결정권)를 적극적으로 보장’합니다.

회사는 정보통신서비스제공자가 준수하여야 하는 대한민국의 관계 법령 및 개인정보보호 규정, 가이드라인을 준수하고 있습니다.

“개인정보처리방침”이란 이용자의 소중한 개인정보를 보호함으로써 이용자가 안심하고 서비스를 이용할 수 있도록 회사가 준수해야 할 지침을 의미합니다.

본 개인정보처리방침은 회사가 제공하는 카카오계정 기반의 서비스(이하 ‘서비스'라 함)에 적용됩니다.

2. 개인정보 수집
서비스 제공을 위한 필요 최소한의 개인정보를 수집하고 있습니다.
회원 가입 시 또는 서비스 이용 과정에서 홈페이지 또는 개별 어플리케이션이나 프로그램 등을 통해 아래와 같은 서비스 제공을 위해 필요한 최소한의 개인정보를 수집하고 있습니다.

[KosBank계정]
필수
이메일, 비밀번호, 이름(닉네임), 프로필사진, 친구목록, KosBank 전화번호(KosBank 이용자의 경우에 한함), 연락처, 서비스 이용내역, 서비스 내 구매 및 결제 내역

선택
생년월일, 성별, 배송지정보(수령인명, 배송지 주소, 전화번호)

[본인인증 시]
이름, 성별, 생년월일, 휴대폰번호, 통신사업자, 내/외국인 여부, 암호화된 이용자 확인값(CI), 중복가입확인정보(DI)

[법정대리인 동의 시]
법정대리인 정보(이름, 성별, 생년월일, 휴대폰번호, 통신사업자, 내/외국인 여부, 암호화된 이용자 확인값(CI), 중복가입확인정보(DI))

[유료서비스 이용 시]
신용카드 결제 시: 카드번호(일부), 카드사명 등
휴대전화번호 결제 시: 휴대전화번호, 결제승인번호 등
계좌이체 시: 예금주명, 계좌번호, 계좌은행 등
상품권 이용 시: 상품권 번호, 해당 사이트 아이디

[환불처리 시]
계좌은행, 계좌번호, 예금주명, 이메일

[현금영수증 발행 시]
휴대폰번호, 현금영수증 카드번호

일부 서비스에서는 특화된 여러 기능들을 제공하기 위해 ‘카카오계정’에서 공통으로 수집하는 정보 이외에 이용자에게 동의를 받고
추가적인 개인정보를 수집할 수 있습니다.

필수정보란?
: 해당 서비스의 본질적 기능을 수행하기 위한 정보
선택정보란?
: 보다 특화된 서비스를 제공하기 위해 추가 수집하는 정보 (선택 정보를 입력하지 않은 경우에도 서비스 이용 제한은 없습니다.)
서비스에서 별도로 수집하는 개인정보 항목 자세히 보기 고객상담을 위해 추가 수집하는 개인정보 항목 자세히 보기
개인정보를 수집하는 방법은 다음과 같습니다.
개인정보를 수집하는 경우에는 반드시 사전에 이용자에게 해당 사실을 알리고 동의를 구하고 있으며, 아래와 같은 방법을 통해 개인정보를 수집합니다.

회원가입 및 서비스 이용 과정에서 이용자가 개인정보 수집에 대해 동의를 하고 직접 정보를 입력하는 경우
제휴 서비스 또는 단체 등으로부터 개인정보를 제공받은 경우
고객센터를 통한 상담 과정에서 웹페이지, 메일, 팩스, 전화 등
온·오프라인에서 진행되는 이벤트/행사 등 참여
서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.
PC웹, 모바일 웹/앱 이용 과정에서 단말기정보(OS, 화면사이즈, 디바이스 아이디, 폰기종, 단말기 모델명), IP주소, 쿠키, 방문일시, 부정이용기록, 서비스 이용 기록 등의 정보가 자동으로 생성되어 수집될 수 있습니다.

서비스 간 제휴, 연계 등으로 제3자로부터 개인정보를 제공받고 있습니다.
              </textarea>
                        <div>
		                     <input type="radio" name="agree2"  value="yes" id="agree2">
		                     <label for="agree2"> 동의합니다.</label>
		               		<input type="radio" name="agree2" value="no" id="degree2"><!--  -->
		               		<label  for="degree2"> 동의하지않습니다.</label>
            			</div>
            		</div>
                </div>
                <div class="form-group" id="divId">
                    <label for="inputId" class="col-lg-2 control-label">아이디</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control onlyAlphabetAndNumber" id="id" data-rule-required="true" placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30">
                    </div>
                </div>
                <div class="form-group" id="divPassword">
                    <label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
                    <div class="col-lg-10">
                        <input type="password" class="form-control" id="pw" name="excludeHangul" data-rule-required="true" placeholder="패스워드" maxlength="30">
                    </div>
                </div>
                <div class="form-group" id="divPasswordCheck">
                    <label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드 확인</label>
                    <div class="col-lg-10">
                        <input type="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
                    </div>
                </div>
                <div class="form-group" id="divName">
                    <label for="inputName" class="col-lg-2 control-label">이름</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control onlyHangul" id="name" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="15">
                    </div>
                </div>
                
                <div class="form-group" id="divEmail">
                    <label for="inputEmail" class="col-lg-2 control-label">이메일</label>
                    <div class="col-lg-10">
                        <input type="email" class="form-control" id="email" data-rule-required="true" placeholder="이메일" maxlength="40">
                    </div>
                </div>
                <div class="form-group" id="divPhoneNumber">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">휴대폰 번호</label>
                    <div class="col-lg-10">
                        <input type="tel" class="form-control onlyNumber" id="phone" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmailReceiveYn" class="col-lg-2 control-label">이메일 수신여부</label>
                    <div class="col-lg-10">
                        <label class="radio-inline">
                            <input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="Y" checked> 동의합니다.
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="N"> 동의하지 않습니다.
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">SMS 수신여부</label>
                    <div class="col-lg-10">
                        <label class="radio-inline">
                            <input type="radio" id="smsReceiveYn" name="smsReceiveYn" value="Y" checked> 동의합니다.
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="smsReceiveYn" name="smsReceiveYn" value="N"> 동의하지 않습니다.
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button type="submit" class="btn btn-primary">Open account</button>
                    </div>
                </div>
            </form>
        
        
        <script>
        
            $(function(){
                //모달을 전역변수로 선언
                var modalContents = $(".modal-contents");
                var modal = $("#defaultModal");
                
                $('.onlyAlphabetAndNumber').keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val($(this).val().replace(/[^_a-z0-9]/gi,'')); //_(underscore), 영어, 숫자만 가능
                    }
                });
                
                $(".onlyHangul").keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val(inputVal.replace(/[a-z0-9]/gi,''));
                    }
                });
            
                $(".onlyNumber").keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val(inputVal.replace(/[^0-9]/gi,''));
                    }
                });
                
                //------- 검사하여 상태를 class에 적용
                $('#id').keyup(function(event){
                    
                    var divId = $('#divId');
                    
                    if($('#id').val()==""){
                        divId.removeClass("has-success");
                        divId.addClass("has-error");
                    }else{
                        divId.removeClass("has-error");
                        divId.addClass("has-success");
                    }
                });
                
                $('#password').keyup(function(event){
                    
                    var divPassword = $('#divPassword');
                    
                    if($('#password').val()==""){
                        divPassword.removeClass("has-success");
                        divPassword.addClass("has-error");
                    }else{
                        divPassword.removeClass("has-error");
                        divPassword.addClass("has-success");
                    }
                });
                
                $('#passwordCheck').keyup(function(event){
                    
                    var passwordCheck = $('#passwordCheck').val();
                    var password = $('#password').val();
                    var divPasswordCheck = $('#divPasswordCheck');
                    
                    if((passwordCheck=="") || (password!=passwordCheck)){
                        divPasswordCheck.removeClass("has-success");
                        divPasswordCheck.addClass("has-error");
                    }else{
                        divPasswordCheck.removeClass("has-error");
                        divPasswordCheck.addClass("has-success");
                    }
                });
                
                $('#name').keyup(function(event){
                    
                    var divName = $('#divName');
                    
                    if($.trim($('#name').val())==""){
                        divName.removeClass("has-success");
                        divName.addClass("has-error");
                    }else{
                        divName.removeClass("has-error");
                        divName.addClass("has-success");
                    }
                });
                
                $('#email').keyup(function(event){
                    
                    var divEmail = $('#divEmail');
                    
                    if($.trim($('#email').val())==""){
                        divEmail.removeClass("has-success");
                        divEmail.addClass("has-error");
                    }else{
                        divEmail.removeClass("has-error");
                        divEmail.addClass("has-success");
                    }
                });
                
                $('#phoneNumber').keyup(function(event){
                    
                    var divPhoneNumber = $('#divPhoneNumber');
                    
                    if($.trim($('#phoneNumber').val())==""){
                        divPhoneNumber.removeClass("has-success");
                        divPhoneNumber.addClass("has-error");
                    }else{
                        divPhoneNumber.removeClass("has-error");
                        divPhoneNumber.addClass("has-success");
                    }
                });
                
                
                //------- validation 검사
                $( "form" ).submit(function( event ) {
                    
                    var provision = $('#provision');
                    var memberInfo = $('#memberInfo');
                    var divId = $('#divId');
                    var divPassword = $('#divPassword');
                    var divPasswordCheck = $('#divPasswordCheck');
                    var divName = $('#divName');
                    var divNickname = $('#divNickname');
                    var divEmail = $('#divEmail');
                    var divPhoneNumber = $('#divPhoneNumber');
                    
                    //가입약관
                    if($('#provisionYn:checked').val()=="N"){
                        modalContents.text("가입약관에 동의하여 주시기 바랍니다."); //모달 메시지 입력
                        modal.modal('show'); //모달 띄우기
                        
                        provision.removeClass("has-success");
                        provision.addClass("has-error");
                        $('#provisionYn').focus();
                        return false;
                    }else{
                        provision.removeClass("has-error");
                        provision.addClass("has-success");
                    }
                    
                    //개인정보취급방침
                    if($('#memberInfoYn:checked').val()=="N"){
                        modalContents.text("개인정보취급방침에 동의하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        memberInfo.removeClass("has-success");
                        memberInfo.addClass("has-error");
                        $('#memberInfoYn').focus();
                        return false;
                    }else{
                        memberInfo.removeClass("has-error");
                        memberInfo.addClass("has-success");
                    }
                    
                    //아이디 검사
                    if($('#id').val()==""){
                        modalContents.text("아이디를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divId.removeClass("has-success");
                        divId.addClass("has-error");
                        $('#id').focus();
                        return false;
                    }else{
                        divId.removeClass("has-error");
                        divId.addClass("has-success");
                    }
                    
                    //패스워드 검사
                    if($('#password').val()==""){
                        modalContents.text("패스워드를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divPassword.removeClass("has-success");
                        divPassword.addClass("has-error");
                        $('#password').focus();
                        return false;
                    }else{
                        divPassword.removeClass("has-error");
                        divPassword.addClass("has-success");
                    }
                    
                    //패스워드 확인
                    if($('#passwordCheck').val()==""){
                        modalContents.text("패스워드 확인을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divPasswordCheck.removeClass("has-success");
                        divPasswordCheck.addClass("has-error");
                        $('#passwordCheck').focus();
                        return false;
                    }else{
                        divPasswordCheck.removeClass("has-error");
                        divPasswordCheck.addClass("has-success");
                    }
                    
                    //패스워드 비교
                    if($('#password').val()!=$('#passwordCheck').val() || $('#passwordCheck').val()==""){
                        modalContents.text("패스워드가 일치하지 않습니다.");
                        modal.modal('show');
                        
                        divPasswordCheck.removeClass("has-success");
                        divPasswordCheck.addClass("has-error");
                        $('#passwordCheck').focus();
                        return false;
                    }else{
                        divPasswordCheck.removeClass("has-error");
                        divPasswordCheck.addClass("has-success");
                    }
                    
                    //이름
                    if($('#name').val()==""){
                        modalContents.text("이름을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divName.removeClass("has-success");
                        divName.addClass("has-error");
                        $('#name').focus();
                        return false;
                    }else{
                        divName.removeClass("has-error");
                        divName.addClass("has-success");
                    }
                    
                    
                    //이메일
                    if($('#email').val()==""){
                        modalContents.text("이메일을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divEmail.removeClass("has-success");
                        divEmail.addClass("has-error");
                        $('#email').focus();
                        return false;
                    }else{
                        divEmail.removeClass("has-error");
                        divEmail.addClass("has-success");
                    }
                    
                    //휴대폰 번호
                    if($('#phoneNumber').val()==""){
                        modalContents.text("휴대폰 번호를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divPhoneNumber.removeClass("has-success");
                        divPhoneNumber.addClass("has-error");
                        $('#phoneNumber').focus();
                        return false;
                    }else{
                        divPhoneNumber.removeClass("has-error");
                        divPhoneNumber.addClass("has-success");
                    }
                });
                
            });
            
        </script>
        </div>
        </div>
                <!--// 본문 들어가는 부분 -->
            <hr/>
            <!-- 푸터 들어가는 부분 -->
            <%@ include file = "../footer.jsp" %>
            
        </div>
</body>
</html>