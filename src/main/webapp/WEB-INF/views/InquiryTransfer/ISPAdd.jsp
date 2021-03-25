<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>적금추가납입</title>
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
</head>
<style>
	#td_1{
		text-align: center;
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
     <h2>적금추가납입</h2>
          <br>
        </div>
      </section>
      <section class="section section-lg bg-default">
        <div class="container">
          <h3>적금추가납입</h3>
          <br><hr><br>
          
           <div id="accountInfo">
           <table>
				<tr>
					<td>출금 계좌번호 : 110-451-550731</td>
					<td>최종 접속일자 : 2021-03-18 13:20</td>
					<td>계좌 상태 : 정상</td>
				</tr>
				<tr>
					<td>최종 거래일자 : 2021-03-18 09:20</td>
					<td></td>
					<td></td>
				</tr>
           </table>
          </div>
      
          
          <br>
          <h4>적금 계좌 조회</h4>
          <div style="background-color: #435ebe; width:1170px; height:2px;"> </div>
      
      <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
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
                  <tbody>
                    <tr>
                      <td>저축성 예금</td>
                      	<td>110-451-550731</td>
                     	 <td>신규일</td>
                    	  <td>2021.03.18</td>
                 	     	<td><fmt:formatNumber value="1231231" pattern="#,###" />원</td>
                    	 	 <td> 
                      			<div class="button button-round" style= "padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color:#fff; display:inline;" onclick="location.href='TransactionDetails.cc'">조회</div>  
                      			<div class="button button-round" style="padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color:#435ebe; display:inline;">추가 납입하기</div>
                      
                     		 </td>
                   		 </tr>
                	  </tbody>
      				</table>
      			</div>
      		</div>
      	</div>
      	
      	<!-- 추가납입 눌렀을때 데려갈곳  -->
      	<section class="section section-lg bg-default">
	          <div class="row row-offset-1">
	            <div class="col-lg-10 col-xxl-9">
	              <div class="table-custom-responsive">
	                <table class="table-custom table-custom-bordered" id="acc_table">
	                  <thead>
	                    <tr>
	                      <th>출금 계좌번호</th>
	                      <td>대상 계좌가 없습니다.</td>
	                    </tr>
	                  </thead>
	                    <tr>
	                    <th>계좌비밀번호</th>
	                      <td><input type="text" id="accountPW" style="width: 100px"></td>
	                    </tr>
	                    <tr>
	                    <th>이체금액</th>
	                      <td><input type="text" id="money" style="width: 150px">
	                      <input name="AddMoney100" type="button">100만
	                      <input name="AddMoney50" type="button">50만
	                      <input name="AddMoney10" type="button">10만
	                      <input name="AddMoney5" type="button">5만
	                      <input name="AddMoney1" type="button">1만
	                      <input name="AddAllMoney" type="button">전액<br><br>
	                      <input type="text" id="limitMoney" style="width: 300px">
	                      <input name="limitMoney"  type="button">이체한도조회
	                      </td>
	             	 </table>
	              </div>
	      		</div>
	          </div>
          </section>
        </div>  
        </section> 
	</div>
	
	<div class="container">
          <h4>입금계좌정보</h4>
          <br><hr>
          <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
                <table class="table-custom table-custom-bordered" id="acc_table">
                  <thead>
                    <tr>
                      <th>입금은행<br>입금계좌정보</th>
                      <td>대상 계좌가 없습니다.</td>
                    </tr>
                  </thead>
                    <tr>
                    <th>받는분 통장 표시내용</th>
                      <td><input type="text" id="sendMsg" style="width: 300px">
                      </td>
                    </tr>
             	 </table>
              </div>
      		</div>
          </div>
        </div>  
        <br><br>
        
        <div class="form-group" style="margin-left:700px">
             <div class="col-lg-offset-2 col-lg-10">
                <button type="submit" class="btn btn-primary" >이체추가</button>
             </div>
        </div>
         <section class="section section-lg bg-default">
        <div class="container">
          <h4>이체정보</h4>
          <br><hr>
          <div class="row row-offset-1" style="width:1400px">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
                <table class="table-custom table-custom-bordered">
                  <thead>
                    <tr>
                      <td>출금계좌번호 </td>
                      <td>입금은행</td>
                      <td>입금계좌번호</td>
                      <td>받는분</td>
                      <td>이체금액(원)</td>
                      <td>수수료(원)</td>
                      <td>받는분통장표시내용</td>
                      <td>이체지정일</td>
                     	<td>취소</td>
                    </tr>
                    <tr>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                     	<td><button type="reset">취소</button></td>
                    </tr>
                  </thead>
                      
             	 </table>
              </div>
      		</div>
          </div>
        </div>   
      </section>
	<!-- 추가납입 눌렀을때 데려갈곳  -->
<%@ include file = "../footer.jsp" %>	
</body>
</html>