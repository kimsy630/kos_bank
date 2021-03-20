<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Home</title>
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
      
      <!-- 주석 친 부분에 사용하고싶은 <section> 긁어와서 쓰면 됩니다!! -->
      <!--  -->

 	<section class="section section-bredcrumbs">
        <div class="container context-dark breadcrumb-wrapper">
          <h2>계좌조회</h2>
          <br>
         
          <ul class="breadcrumbs-custom">
            <li><a href="index.html">개인</a></li>
            <li><a href="#">조회</a></li>
            <li class="active">계죄조회</li>
          </ul>
        </div>
      </section>
      <section class="section section-lg bg-default">
        <div class="container">
          <h3>계좌조회</h3>
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
          <br>
       		<div class="tabs-custom tabs-horizontal tabs-line" id="tabs-1">
	           <ul class="nav nav-tabs">
	             <li class="nav-item" role="presentation"><a class="nav-link active" href="#tabs-1-1" data-toggle="tab">예금/신탁</a></li>
	             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-2" data-toggle="tab" onclick="location='Loanstable.cc'">대출</a></li>
	             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-3" data-toggle="tab" >휴면</a></li>
	             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-4" data-toggle="tab">환금내역</a></li>
	             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-5" data-toggle="tab" onclick="location='SleepTable.cc'">휴면계좌</a></li>
	             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-6" data-toggle="tab">정지계좌</a></li>
	             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-7" data-toggle="tab">전체계좌</a></li>
	           </ul>
           </div>
           <br>
        
          <h6>입/출금 계좌</h6>
          <div style="background-color: blue; width:1170px; height:2px;"> </div>
          
          <div>
          	조회건수 | 총[1건]
          </div>
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
                      <td>저축예금</td>
                      <td>110-451-550731</td>
                      <td>신규일</td>
                      <td>2021.03.18</td>
                      <td><fmt:formatNumber value="1231231" pattern="#,###" />원</td>
                      <td> 
                      	<div class="button button-round" style= "padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color:olive; display:inline;" onclick="location.href='TransactionDetails.cc'">조회</div>  
                      	<div class="button button-round" style="padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color: orange; display:inline;">이체</div>
                      
                      </td>
                    </tr>
                    <tr>
                      <td>저축예금</td>
                      <td>110-451-550731</td>
                      <td>신규일</td>
                      <td>2021.03.18</td>
                      <td><fmt:formatNumber value="1231231" pattern="#,###" />원</td>
                      <td> 
                      	<div class="button button-round" style= "padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color:olive; display:inline;">조회</div>  
                      	<div class="button button-round" style="padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color: orange; display:inline;">이체</div>
                      
                      </td>
                    </tr>
                    <tr>
                      <td>저축예금</td>
                      <td>110-451-550731</td>
                      <td>신규일</td>
                      <td>2021.03.18</td>
                      <td><fmt:formatNumber value="1231231" pattern="#,###" />원</td>
                      <td> 
                      	<div class="button button-round" style= "padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color:olive; display:inline;">조회</div>  
                      	<div class="button button-round" style="padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color: orange; display:inline;">이체</div>
                      
                      </td>
                    </tr>
                    <tr>
                      <td>저축예금</td>
                      <td>110-451-550731</td>
                      <td>신규일</td>
                      <td>2021.03.18</td>
                      <td><fmt:formatNumber value="1231231" pattern="#,###" />원</td>
                      <td> 
                      	<div class="button button-round" style= "padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color:olive; display:inline;">조회</div>  
                      	<div class="button button-round" style="padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color: orange; display:inline;">이체</div>
                      
                      </td>
                    </tr>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td>저축예금</td>
                      <td>110-451-550731</td>
                      <td>신규일</td>
                      <td>2021.03.18</td>
                      <td><fmt:formatNumber value="1231231" pattern="#,###" />원</td>
                      <td> 
                      	<div class="button button-round" style= "padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color:olive; display:inline;">조회</div>  
                      	<div class="button button-round" style="padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color: orange; display:inline;">이체</div>
                      </td>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
          </div>
        </div>
      </section>
      

      <section class="section section-lg bg-default">
        <div class="container">
          <h3>해지된 계좌</h3>
          <br><hr><br>
          
          <br>
          <br>
       	
        
          <h6>해지된 계좌</h6>
          <div style="background-color: blue; width:1170px; height:2px;"> </div>
          
          <div>
          	조회건수 | 총[1건]
          </div>
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
                      <td>저축예금</td>
                      <td>110-451-550731</td>
                      <td>신규일</td>
                      <td>2021.03.18</td>
                      <td><fmt:formatNumber value="1231231" pattern="#,###" />원</td>
                      <td> 
                      	<div class="button button-round" style= "padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color:olive; display:inline;" onclick="location.href='TransactionDetails.cc'">조회</div>  
                      	<div class="button button-round" style="padding:10px; width:60px; height:40px; font-size:15px; text-align:center; background-color: orange; display:inline;">이체</div>
                      </td>
                    </tr>
                   
                </table>
              </div>
            </div>
          </div>
        </div>
      </section>
       
      
      <%@include file="../footer.jsp" %>
      </div>
  </body>
</html>