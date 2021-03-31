<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
   <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <head>
    <title>Home</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="${path}images/favicon.ico" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="pathtext/css" href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,700,900">
    <link rel="stylesheet" href="${path}css/bootstrap.css">
    <link rel="stylesheet" href="${path}css/fonts.css">
    <link rel="stylesheet" href="${path}css/style.css" id="main-styles-link">
    <!--[if lt IE 10]>
    <div style="background: #212121; padding: 10px 0; box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3); clear: both; text-align:center; position: relative; z-index:1;"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <script src="js/html5shiv.min.js"></script>
    <![endif]-->
  </head>
  <style>
  	#accountInfo {
  		width: 1170px;
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
		width:1170px;
	}
	#acc_table th{
		width:300px;
		text-align: center;
	}
	#acc_table td{
		width:285px;
		text-align: center;
	}
	
	#tabs-1 li{
		width:140px;
	}
	
  </style>
  
  <body>
		<!-- AccountTable 입출금 계좌 -->
		 <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
	              <h6>입/출금 계좌</h6>
		          <div style="background-color: #435ebe; color:#fff; width:1170px; height:2px;"> </div>
		          <br>
                <table class="table-custom table-custom-secondary table-custom-hovered" id="acc_table">
                  <thead>
                    <tr>
                      <th>계좌명</th>
                      <th>계좌번호</th>
                      <th>신규일</th>
                      <th>최근거래일자</th>
                      <th>잔액(원)</th>
                      <th>업무</th>
                    </tr>
                  </thead>
                  <c:forEach var="dto" items="${list1}">
                  <c:set var="vo" value="${dto.getAccountVO()}"/>
                    <tr>
                      <td>${vo.accountType}</td>
                      <td>${vo.account}</td>
                      <td>${vo.new_date}</td>
                      <td>${dto.in_outDate}</td>
                      <td><fmt:formatNumber value="${vo.balance}" pattern="#,###" />원</td>
                      <td> 
                      	<div class="button button-round" style= "padding:10px 20px; width:60px; height:40px; font-size:15px; text-align:center; background-color:#fff; display:inline;" onclick="location.href='TransactionDetails.do'">조회</div>&nbsp;&nbsp;
                      	<div class="button button-round" style= "padding:10px 20px; width:60px; height:40px; font-size:15px; text-align:center; background-color: #435ebe; color:#fff; display:inline;" onclick="location.href='AccountTransfer.cc'">이체</div>
                      </td>
                     </tr>
                  </c:forEach>
                </table>
                
              </div>
            </div>
          </div>
          <br><br><br>
  		<!-- 대출계좌 LoansTable -->
  		 <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
              	<h6>대출</h6>
		          <div style="background-color: #435ebe; color:#fff; width:1170px; height:2px;"> </div>
		          <br>
                <table class="table-custom table-custom-secondary table-custom-hovered" id="acc_table">
                	
                    <tr>
                      <th>대출명</th>
                      <th>계좌번호</th>
                      <th>승인한도</th>
                      <th>만기일</th>
                      <th>대출잔액(원)</th>
                      <th>업무</th>
                    </tr>
                    <c:forEach var="dto" items="${list2 }">
                    <c:set var="vo" value="${dto.getAccountVO() }"/>
                    <tr>
                      <td>${dto.d_name }</td>
                      <td>${vo.account }</td>
                      <td><fmt:formatNumber value="${vo.accountLimit }" pattern="#,###" />원</td>
                      <td>${dto.d_end_date }</td>
                      <td><fmt:formatNumber value="${dto.d_balance }" pattern="#,###" />원</td>
                      <td> 
                      	<div class="button button-round" style= "padding:10px; width:80px; height:40px; font-size:12px; text-align:center; background-color:#fff; display:inline;" onclick="location.href='LoanAccountCheck.cc'">상환내역</div>  
                      	<div class="button button-round" style="padding:10px; width:80px; height:40px; font-size:12px; text-align:center; background-color: #435ebe; color:#fff; display:inline;">원금상환</div>
                      
                      </td>
                    </tr>
                    </c:forEach>
                </table>
              </div>
            </div>
          </div>
          <br><br><br>
  		<!-- 적금테이플 IS_Table -->
  		<div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
              	<h6>적금</h6>
		          <div style="background-color: #435ebe; color:#fff; width:1170px; height:2px;"> </div>
		          <br>
                <table class="table-custom table-custom-secondary table-custom-hovered" id="acc_table">
                  <thead>
                    <tr>
                      <th>계좌명</th>
                      <th>계좌번호</th>
                      <th>신규일</th>
                      <th>만기일</th>
                      <th>잔액(원)</th>
                    </tr>
                  </thead>
                  <c:forEach var="dto" items="${list3 }">
                  <c:set var="vo" value="${dto.getAccountVO()}"/>
                    <tr>
                      <td>${dto.j_name }</td>
                      <td>${vo.account }</td>
                      <td>${dto.j_join_date}</td>
                      <td>${dto.j_end_date }</td>
                      <td><fmt:formatNumber value="${dto.j_balance }" pattern="#,###" />원</td>
                    </tr>
                    </c:forEach>
                </table>
                
              </div>
            </div>
          </div>
  		<br><br><br>
  		<!-- FundTable -->
  		 <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
              	<h6>펀드</h6>
		          <div style="background-color: #435ebe; color:#fff; width:1170px; height:2px;"> </div>
		          <br>
                <table class="table-custom table-custom-secondary table-custom-hovered" id="acc_table">
                  <thead>
                    <tr>
                      <th>계좌명</th>
                      <th>계좌번호</th>
                      <th>펀딩목표액</th>
                      <th>펀딩종료일</th>
                      <th>잔액(원)</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                    <c:forEach var="dto" items="${list4}">
                    <c:set var="vo" value="${dto.getAccountVO()}"/>
                      <td>${vo.accountType}</td>
                      <td>${vo.account }</td>
                      <td><fmt:formatNumber value="${dto.f_target_money }" pattern="#,###" />원</td>
                      <td>${dto.f_end_date }</td>
                      <td><fmt:formatNumber value="${vo.balance }" pattern="#,###" />원</td>
                      
                     </c:forEach>
                    </tr>
                 </table>
              </div>
            </div>
          </div>
  		<br><br><br>
  		<!-- 예금테이블 DepositTable -->
  		<div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
              	<h6>예금</h6>
		          <div style="background-color: #435ebe; color:#fff; width:1170px; height:2px;"> </div>
		          <br>
                <table class="table-custom table-custom-secondary table-custom-hovered" id="acc_table">
                  <thead>
                    <tr>
                      <th>계좌명</th>
                      <th>계좌번호</th>
                      <th>신규일</th>
                      <th>만기일</th>
                      <th>최초예치액</th>
                      <th>종류</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="dto" items="${list5}">
                  <c:set var="vo" value="${dto.getAccountVO()}" />
                    <tr>
                      <td>${vo.accountType}</td>
                      <td>${vo.account }</td>
                      <td>${dto.y_join_date }</td>
                      <td>${dto.y_end_date }</td>
                      <td><fmt:formatNumber value="${dto.y_balance }" pattern="#,###" />원</td>
                      <td>고객요청</td>
                    </tr>
                    </c:forEach>
                </table>
              </div>
            </div>
          </div>
  		<br><br><br>
  		<!-- 휴면/정지 테이블 StopSleepTable -->
  		<div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
              	<h6>휴면/정지</h6>
		          <div style="background-color: #435ebe; color:#fff; width:1170px; height:2px;"> </div>
		          <br>
                <table class="table-custom table-custom-secondary table-custom-hovered" id="acc_table">
                  <thead>
                    <tr>
                      <th>계좌명</th>
                      <th>계좌번호</th>
                      <th>정지일/휴면일</th>
                      <th>최근 결제일</th>
                      <th>잔액(원)</th>
                      <th>종류</th> <!-- 계좌상태 설명 (왜 정지가 됐는지 -->
                    </tr>
                  </thead>
                  <tbody>
                  
                  <c:forEach var="dto" items="${list6 }">
                  <c:set var="vo" value="${dto.getAccountVO() }"/>
                    <tr>
                      <td>${vo.accountType }</td>
                      <td>${vo.account }</td>
                      <c:if test="${vo.accountState == '정지' }">
                      	<td>${vo.delete_date }</td>
                      </c:if>
                      <c:if test="${vo.accountState == '휴면' }">
                      	<td>${vo.sleep_date }</td>
                      </c:if>
                      <td>${dto.in_outDate }</td>
                      <td><fmt:formatNumber value="${vo.balance }" pattern="#,###" />원</td>
                      <td>${vo.accountState }</td>
                    </tr>
				  </c:forEach>
                </table>
              </div>
            </div>
          </div>
  		<br><br><br>
  	
  </body>
</html>