<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
  	#accountInfo {
  		width: 500px;
  		height: 130px;
  		background-color: gray;
		display: inline-block; 
		list-style: circle;
		padding:30px;
	
	}
	#accountInfo table td{
		width:360px;
		height:30px;
		font-size:18px;
	}
	#acc_table{
		width:500px;
	}
	#acc_table th{
		width:300px;
		text-align: center;
	}
	#acc_table td{
		width:500px;
		text-align: center;
	}
	
	#tabs-1 li{
		width:140px;
	}
	
	.content-box {
    box-sizing: content-box;
    width: 800px;
    height: 550px;
    padding : 20px;
    margin : 40px;
    margin-left : 100px;
    border: 2px solid #868e96;
    background-color: white;
	}
	.content-box .child{
	    width: 800px;
	    margin-left : 3px;
	}
	
  </style>
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
          <h2>계좌해지</h2>
          <br>
        </div>
      </section>
      <section class="section section-lg bg-default">
      <form class="form-horizontal" role="form" method="post" action="AccountPWChk.cc">
        <div class="container">
          <h3>계좌해지</h3>
          <br><hr><hr/><br> 
          	

		<div class="content-box" >
		    <div class="child">
		    <h3>안내 및 유의사항</h3>
		    <hr>
		    <br>
		    "영업점 창구 신규한 예.적금 비대면 해지 서비스"를 원치 않는 고객님께서는 영업점에 방문하시어 '창구신규 예.적금 비대면 해지 제한'등록을 하시기 바랍니다.<br>
		    창구에서 신규된 일부상품(주택청약관련상품, 양도성예금(증서발행),표지어음,환매채,국공채,금융채,ELD)는 비대면 해지가 불가능합니다.<br>
		    영업점 창구 신규한 상품 중 원금기준 5천만원 초과하는 상품을 중도/만기해지하는 경우에는 KosBank 영업점에서만 해지처리 가능합니다.<br>
		    해지 시 추가인증이 필요하므로 연락처 등의 정보를 최신상태로 유지하시기 바랍니다.<br>
		    미래시점의 해지예상금을 조회할 수 있습니다.<br>
		    담보로 설정된 예금에 대하여 5개 이하의 대출을 받은 경우에 한하여 상계처리 가능합니다.(한도대출 제외)<br>
		    중도해지 우대이율 상품의 경우 반드시 영업점에 방문하여 증빙서류 제출 후 중도해지 하여야 합니다.(단,별도 증빙서류 필요한 상품에 한함)<br>
		    만 19세 미만 미성년자는 영업점에서 법정대리인 또는 친권자(부 또는 모)의 동의에 의한 해지만 가능합니다.<br>
		    긴급한 자금 필요 시 중도해지의 불이익 없이 예적금 담보로 즉시 대출이 가능합니다.(일부상품제외)<br>
		    해지 신청하는 상품으로 가계대출 우대금리를 적용 받으신 경우,해지 시 우대받은 이율만큼 금리가 인상될 수 있습니다.<br>
		    자세한 내용은 대출 신청하신 영업점에 문의 바랍니다.<br>
		    만기 전 해지할 경우 약정한 이자율보다 낮은 중도해지 이자율이 적용되오니 유의하여 주시기 바랍니다.<br>
		    우대이자율은 만기해지계좌에 한해 지급하오니 유의하시기 바랍니다.<br>
		    정기적립식 상품의 경우 매월 신규해당일에 월 저축금액이 불입되지 않을 경우 만기일이 변경되어 중도해지 처리될 수 있습니다. <br>
		    
		    </div>
			</div>
			<div class="row row-offset-1" align="center">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
                <table class="table-custom table-custom-secondary table-custom-hovered" id="acc_table">
                    <tr>
                      <td>조회 계좌번호</td>
                      <td>
                      <select id="select_account" onchange="changeAccount()">
                             <option value="">계좌를 선택해주세요.</option>
                           <c:forEach items="${list }" var="item">
                             <option value="${item.balance}" id="account" name="account">${item.account}</option>
                          </c:forEach>
                       </select>
					</td>
                    </tr>
                    <tr>
                    <td scope="col" class="balance">잔액</td>
                     	<td scope="col" id="select_balance">원</td>
		              </table>
              			</div>
              		</div>
              		
          		 </div>
      		  </div>
          </div>
         
           <script>
                function changeAccount(){
                 $('#select_balance').html($('#select_account').val()+"원");
               }
          </script>
         
         		<div class="form-group" style="margin-left:700px">
            		 <div class="col-lg-offset-2 col-lg-10">
                	<button type="submit" class="btn btn-primary" >계좌해지</button>
             	</div>
        	</div>
                
      </section>    
     <br><br><br><br>
<%@ include file = "../footer.jsp" %>
</body>
</html>