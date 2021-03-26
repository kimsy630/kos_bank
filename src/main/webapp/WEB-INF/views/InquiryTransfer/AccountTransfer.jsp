<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Home</title>
    
   <!-- ajax 스크립트 -->
    <script type="text/javascript">
	$(function () {
    	$("#NameChk").click(function () {
       	 $.ajax({
            type : "get",
            url : "AccountNameChk.cc",
            //여러개 데이터 보낼 때 Json 방식
            data : {
            	sender_account : $("#sender_account").val(),
            },
            success : function(data){
                //check.jsp에서 DB확인해서 출력은 index에서
                $("#NameReturn").html(data);
                //$("#ajaxReturn").html("(ex)사용할 수 있는 ID입니다.");
            },
            error : function(){
                alert("error");
            }
        
        	});
    	});
	});
	
	$(function () {
    	$("#button").click(function () {
       	 $.ajax({
            type : "get",
            url : "TransferTable.cc?sender_name="+$("#NameReturn").text(),
            //여러개 데이터 보낼 때 Json 방식
            data : {
            	account : $("#account").val(),
            	accountPW : $("#accountPW").val(),
            	money : $("#money").val(),
            	out_comment : $("#out_comment").val(),
            	sender_account : $("#sender_account").val(),
            	sender_name : $("#sender_name").val(),
            	in_comment : $("#in_comment").val(),
            },
            success : function(data){
                //check.jsp에서 DB확인해서 출력은 index에서
                $("#ajaxReturn").html(data);
                //$("#ajaxReturn").html("(ex)사용할 수 있는 ID입니다.");
            },
            error : function(){
                alert("error");
            }
        
            
        	});
    	});
	});
</script>
    <!-- ajax 스크립트 끝 -->
    
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
    <form action="TransferAction.cc">
 	<section class="section section-bredcrumbs">
     	<div class="container context-dark breadcrumb-wrapper">
     		<h2>계좌이체</h2>
          <br>
        </div>
      </section>
        <div class="container">
          <h4>출금계좌정보</h4>
          <br><hr>
          <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
                <table class="table-custom table-custom-bordered" id="acc_table">
                  <thead>
                    <tr>
                      <th>출금 계좌번호</th>
                      	<td>
                      <select name="account">
						<option value="">선택</option>
							<c:forEach items="${list}" var="item">
								<option value="${item.account}" id="account" name="account">${item.account}</option>
							</c:forEach>
						</select>
						</td>
                    </tr>
                  </thead>
                   <tr>
                    <th>계좌비밀번호</th>
                      <td><input type="text" id="accountPW" name="accountPW" style="width: 100px"></td>
                    </tr>
                    <tr>
	                    <th>이체금액</th>
	                      <td>
		                      <input type="text" id="money" name="money" style="width: 150px">
			                      <button input="AddMoney100">100만</button>
			                      <button input="AddMoney50">50만</button>
			                      <button input="AddMoney10">10만</button>
			                      <button input="AddMoney5">5만</button>
			                      <button input="AddMoney1">1만</button>
			                      <button input="AddAllMoney">전액</button><br><br>
		                      <input type="text" id="limitMoney" style="width: 300px">
		                      <button input="limitMoney">이체한도조회</button>
                      		</td>
                    	</tr>
                  	 <tr> 	
                    	<th>보내는분 통장 표시내용</th>
		                      <td>
		                      	<input type="text" id="out_comment" name="out_comment" style="width: 300px">
		                      </td>
                   		 </tr>
             		 </table>
             	 </div>
              </div>
      		</div>
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
                      <th style="width: 200px">입금은행</th>
                      		<td>코스뱅크</td>
                    	</tr>
                    <tr>
                      <th>입금계좌번호</th>
                      	<td>
                     	 	<input type="text" id="sender_account" name="sender_account" style="width: 200px">
                     		 <button type="button" value="NameChk" id="NameChk">예금주 조회</button>
                        </td>
                    </tr>
                      <tr>
                      	<th>예금주</th>
	                      	<td>
		                      	<div id="NameReturn" value="sender_name"></div>
	                      	</td>
                      </tr>
                  </thead>
                    <tr>
                   	 <th>받는분 통장 표시내용</th>
                      <td><input type="text" id="in_comment" name="in_comment" style="width: 300px">
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
			                <button type="button" class="btn btn-primary" value="button" id="button">이체추가</button>
			             </div>
			        </div>
		         <section class="section section-lg bg-default">
			        <div class="container">
				          <h4>이체정보</h4>
				          <div style="background-color: #435ebe; color:#fff; width:1170px; height:2px;"> </div>
					          <br>
					          <div id="ajaxReturn">
				          </div>
			        </div>   
		      	</section>
		     <div class="form-group" style="margin-left:700px">
		          <div class="col-lg-offset-2 col-lg-10">
		             <button type="submit" class="btn btn-primary" >이체실행</button>
		          </div>
		       </div>
        
      		</form> 
       </div>  
	<br><br><br>
<%@ include file = "../footer.jsp" %>
</body>
</html>