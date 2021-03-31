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
                           
      <!-- 주석 친 부분에 사용하고싶은 <section> 긁어와서 쓰면 됩니다!! -->
           <br>
          <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
              <h6>거래내역</h6>
		          <div style="background-color: #435ebe; color:#fff; width:1170px; height:2px;"> </div>
		          <br>
                <table class="table-custom table-custom-bordered" id="Transaction_table">
                <tr>
                	<td style="width:200px; font-weight: 800;">
                		입금합계(건수)
                	</td>
                	<td style="width:385px; font-weight: 800; text-align: right; color:#435ebe;">
                		<fmt:formatNumber value="4800" pattern="#,###" />원 (2건)
                	</td>
                	<td style="width:200px; font-weight: 800;">
                		출금합계(건수)
                	</td>
                	<td style="width:385px; font-weight: 800; text-align: right; color:#435ebe;">
                		<fmt:formatNumber value="500000" pattern="#,###" />원 (8건)
                	</td>
                </tr>
                </table>
                <br>
                <table class="table-custom table-custom-bordered" id="Transaction_table">
                <tr>
                	<td style="font-weight: 800; text-align: center;">거래일자</td>
                	<td style="font-weight: 800; text-align: center;">거래시간</td>
                	<td style="font-weight: 800; text-align: center;">보낸사람 명</td>
                	<td style="font-weight: 800; text-align: center;">출금(원)</td>
                	<td style="font-weight: 800; text-align: center;">입금(원)</td>
                	<td style="font-weight: 800; text-align: center;">내용</td>
                	<td style="font-weight: 800; text-align: center;">잔액(원)</td>
                	<td style="font-weight: 800; text-align: center;">받는사람 명</td>
                </tr>
                <c:forEach var="vo" items="${list }">
                
                <tr>
                	<td style="text-align: center;  height: 40px;"><fmt:formatDate pattern="YYYY-MM-dd" value="${vo.in_outDate }" /></td>
                	<td style="text-align: center;"><fmt:formatDate pattern="HH:mm:ss" value="${vo.in_outDate }" /></td>
                	<td style="text-align: center;">${vo.in_comment }</td>
                	<c:if test="${vo.in_out eq '입금'}">
                	<td style="text-align: center; color: red; font-weight: 600;"></td>
                	<td style="text-align: center; color: blue; font-weight: 600;"><fmt:formatNumber value="${vo.money }" pattern="#,###" />원</td>
				 </c:if>
				 <c:if test="${vo.in_out eq '출금'}">
                	<td style="text-align: center; color: red; font-weight: 600;"><fmt:formatNumber value="${vo.money }" pattern="#,###" />원</td>
                	<td style="text-align: center; color: blue; font-weight: 600;"></td>
				 </c:if>
                	<td style="text-align: center;">${vo.in_out }</td>
                	<td style="text-align: center; font-weight: 600;"><fmt:formatNumber value="${vo.sender_account }" pattern="#,###" />원</td>
                	<!-- TO_CHAR(balance-summoney) AS sender_account
					 	==> AccountVO에서 불러올 값이 ammount 1개밖에 없었는데 VO를 못불러와서  
					 		AccountTransferVO 에서 안쓰는 변수인 sender_account에  넣기위해 별칭을 sender_account로 줘서 해결 하였다..
					 -->
                	<td style="text-align: center;">${vo.out_comment }</td>
                	
                </tr>
                 
                
                </c:forEach>
                </table>
					<br>
					<div style="width: 1170px; text-align: center;">
						<div class="button button-round" style="padding:18px 40px; width:60px; height:40px; font-size:15px; text-align:center; background-color:#435ebe; color:#fff; display:inline; " onclick="location.href='AccountCheck.do'">확인</div>
					</div>   
              </div>
            </div>
          </div>
  </body>
</html>