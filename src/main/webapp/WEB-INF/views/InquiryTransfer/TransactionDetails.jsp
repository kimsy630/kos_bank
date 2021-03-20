<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
   <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <head>
    <title>Home</title>
      <!-- 조회기간 설정 스크립트 -->
      <script src="http://code.jquery.com/jquery.js"></script>
      <script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
		<script>
		$(function(){
		    $('#datePicker').datepicker({
		        calendarWeeks: false,
		          todayHighlight: true,
		        autoclose: true,
		        format: "yyyy-mm-dd",
		        language: "en"
		    });
		    $('#datePicker2').datepicker({
		        calendarWeeks: false,
		          todayHighlight: true,
		        autoclose: true,
		        format: "yyyy-mm-dd",
		        language: "en"
		    });
		});
		</script>
	<!-- 조회기간 설정 스크립트 끝 -->
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
    
    <!-- 조회기간 설정 부트스트랩 설정-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
    <!-- 끝 -->
  </head>
  <style>
	#Transaction_table{
		width:1170px;
	}
	#simple_button{
		width: 50px; height: 30px;
		
		border:1px solid #D3D3D3; text-align: center; vertical-align:middle;
	}
	#td_head{
		font-weight: 800;
		width: 370px;
	}
	#td_body{
		width: 800px;
	}
	
	#td_head1{
		font-weight: 800;
		width: 170px;
	}
	#td_body1{
		width: 1000px;
	}
	
  </style>

  <body>
   
        <section class="section section-lg bg-default">
        <div class="container">
          <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
              	 <section class="section section-lg bg-default">
              	 <form>
              	 	<h6>거래내역조회</h6>
		          <div style="background-color: #435ebe; color:#fff; width:1170px; height:2px;"> </div>
		          <br>
	                <table class="table-custom table-custom-bordered" id="Transaction_table">
	                  	<tr>
	                      <td id="td_head1">조회계좌번호</td>
	                      <td id="td_body1">
	                      	<select name="view_AccountNum">
	                      		<option value="" selected>--선택 --</option>
	                      		<option value="1">110-451-123412</option>
	                      	</select>
	                      </td>
			                  
	                    </tr>
	                    <tr>
	                     <td id="td_head1">조회기간</td>
	                      <td id="td_body1">
					          <input type="text" class="form-control" id="datePicker" name="start_date" value="2021-01-01" style="width:150px; display: inline; text-align: center;"> ~
					          <input type="text" class="form-control" id="datePicker2" name="start_date" value="2021-01-01" style="width:150px;  display: inline; text-align: center;">
					          <input type="button" value="오늘"> 
					          <input type="button" value="1주일"> 
					          <input type="button" value="15일"> 
					          <input type="button" value="1개월">
					          <input type="button" value="3개월">  
	                      </td>
	                    </tr>
	                    <tr>
	                   <td id="td_head1">조회내용</td>
	                      <td id="td_body1">
							<input type="radio" name="View_Content" value="All_List" checked>전체내역 &nbsp;
							<input type="radio" name="View_Content" value="Deposit_List" >입금내역 &nbsp;
							<input type="radio" name="View_Content" value="Withdrawal_List" >출금내역
                     	</td>
	                    </tr>
	                    <tr>
	                    <td id="td_head1">조회결과 순서</td>
	                      <td id="td_body1"><input type="radio" name="View_Result" value="All_List" checked>최근거래순 &nbsp;
								<input type="radio" name="View_Result" value="Deposit_List" >과거거래순 &nbsp;</td>
	                    </tr>
	                    <tr>
	                      <td  id="td_body1" colspan="2" style="text-align: center;">
	                      		<div class="button button-round" style= "padding:10px 25px; width:60px; height:40px; font-size:15px; text-align:center; background-color:#fff; display:inline;">조회</div> &nbsp;&nbsp;  
                      	<div class="button button-round" style="padding:10px 25px; width:60px; height:40px; font-size:15px; text-align:center; background-color:#435ebe; color:#fff; display:inline;">이체</div>
	                      </td>
	                    </tr>
	                </table>
                </form>
                </section>
                 <section class="section section-lg bg-default">
              <h6>계좌정보</h6>
		          <div style="background-color: #435ebe; color:#fff; width:1170px; height:2px;"> </div>
		          <br>
                <table class="table-custom table-custom-bordered" id="Transaction_table">
                    <tr>
                      <td id="td_head">계좌명(계좌별명)</td>
                      <td colspan="3"> 저축예금 </td>
                    </tr>
                    <tr>
                      <td id="td_head">고객명</td>
                      <td id="td_body"></td>
                      <td id="td_head">계좌번호</td>
                      <td id="td_body"></td>
                    </tr>
                    <tr>
                      <td id="td_head">계좌잔액(원)</td>
                      <td id="td_body"></td>
                      <td id="td_head">출금가능액(원)</td>
                      <td id="td_body"></td>
                    </tr>
                    <tr>
                      <td id="td_head">신규일자</td>
                      <td id="td_body">2015.11.11</td>
                      <td id="td_head"></td>
                      <td id="td_body"></td>
                    </tr>
                    <tr>
                      <td id="td_head">대출승인액(원)</td>
                      <td id="td_body">0</td>
                      <td id="td_head">대출만기일</td>
                      <td id="td_body"></td>
                    </tr>
                </table>
      		</section>
      		 <section class="section section-lg bg-default">
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
                	<td style="font-weight: 800; text-align: center;">적요</td>
                	<td style="font-weight: 800; text-align: center;">출금(원)</td>
                	<td style="font-weight: 800; text-align: center;">입금(원)</td>
                	<td style="font-weight: 800; text-align: center;">내용</td>
                	<td style="font-weight: 800; text-align: center;">잔액(원)</td>
                	<td style="font-weight: 800; text-align: center;">거래점</td>
                </tr>
                <tr>
                	<td style="text-align: center;">2021-03-18</td>
                	<td style="text-align: center;">14:03:56</td>
                	<td style="text-align: center;">신한체크</td>
                	<td style="text-align: center;"><fmt:formatNumber value="5000" pattern="#,###" /></td>
                	<td style="text-align: center;">자금성</td>
                	<td style="text-align: center;"></td>
                	<td style="text-align: center;"><fmt:formatNumber value="505000" pattern="#,###" /></td>
                	<td style="text-align: center;">뜨거운형제들</td>
                </tr>
                </table>
					<br>
					<div style="width: 1170px; text-align: center;">
						<div class="button button-round" style="padding:18px 40px; width:60px; height:40px; font-size:15px; text-align:center; background-color:#435ebe; color:#fff; display:inline; " onclick="location.href='AccountCheck.cc'">확인</div>
					</div>                
      		</section>
               
              </div>
            </div>
          </div>
        </div>
      </section>
      
  </body>
</html>