<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>자동이체 신청</title>
	    <meta name="format-detection" content="telephone=no">
	    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta charset="utf-8">
	    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
	    <!-- Stylesheets-->
	    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,700,900">
	    <link rel="stylesheet" href="${path}css/bootstrap.css">
	    <link rel="stylesheet" href="${path}css/fonts.css">
	    <link rel="stylesheet" href="${path}css/style.css" id="main-styles-link">
	    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	    <script src="http://code.jquery.com/jquery.js"></script>
	    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
</head>
<script type="text/javascript">
$(function () {

       $("#limitChange").click(function() {
    	   if($("#account").val()=="0"){
    		   alert("계좌를  선택해 주세요.");
    		   return;
    	   }
           $.ajax({
            type : "get",
            url : "AccountLimitChangeView.do",
            //여러개 데이터 보낼 때 Json 방식
            data : {
               "account" : $("#account").val(),
            },
            success : function(data){
                $("#limitView").html(data);
            },
            error : function(){
                alert("error");
            }
        
            
           });
       });
       $("#limitSearch").click(function() {
    	   if($("#account").val()=="0"){
    		   alert("계좌를  선택해 주세요.");
    		   return;
    	   }
           $.ajax({
            type : "get",
            url : "AccountLimitSearch.do",
            data : {"account" : $("#account").val()},
            success : function(data){
                $("#tableTr").nextAll().remove();
                $("#limitResult").append(data);
            },
            error : function(){
                alert("error");
            }
           });
       });
   });

	function dateChange(m){
	   var date = new Date()
	   var startDate = getTodayType2();
	    var startDateArr = startDate.split('-');
	     
	    var endDate = $(m).val(); 
	    var endDateArr = endDate.split('-');
	             
	    var startDateCompare = new Date(startDateArr[0], parseInt(startDateArr[1])-1, startDateArr[2]);
	    var endDateCompare = new Date(endDateArr[0], parseInt(endDateArr[1])-1, endDateArr[2]);
	     
	    if(startDateCompare.getTime() > endDateCompare.getTime()) {
	        $(m).val("--");
	        alert("오늘이후의 날짜를 선택해주세요.");
	        return;
	    }
	}
	function getTodayType2() {
	   var date = new Date();
	   return date.getFullYear() + "-" + ("0"+(date.getMonth()+1)).slice(-2) + "-" + ("0"+date.getDate()).slice(-2);
	}
	function pwdCheck(m) {
		if($(m).length>3){
			$(m).slice(0,-1);
		}
	}

    var tmpNC = "";
    function numberComma(obj) {
        if (tmpNC == obj.value) return;
        tmpNC = obj.value;
        obj.value = numberComma2(tmpNC);
    }
    function numberComma2(s) {
        s = s.replace(/\D/g, "");
        q = parseInt(s);
        $("#l_money").val(q);
        l = s.length - 3;
        while (l > 0) {
            s = s.substr(0, l) + "," + s.substr(l);
            l -= 3;
        }
        return s;
    }
    
    function limitSubmit(){ 
    	if(!$("#l_date").val()){
    		alert("신청 날짜를 선택해주세요");
    		return false;
    	}
    	else if($("#l_money").val()<=0){
    		alert("한도금액을 입력해 주세요");
    		return false;
    	}
    	else if(!$("#pwd").val()){
    		alert("비밀번호를 입력해 주세요");
    		return false;
    	}
    }
</script>
<style>
    	.btn-clipboard {
	    color: #0d6efd;
	    background-color: #fff;
	    border: 1px solid;
	    border-radius: .25rem;
		}
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
     <h2>한도변경</h2>
          <br>
        </div>
      </section>
      <section class="section section-lg bg-default">
        <div class="container">
          <h4>계좌정보입력</h4>
          <br><hr>
          <div class="row row-offset-1" style="width:700px">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive" style="margin: 0 auto">
              	
                <table id="limitResult"class="table-custom table-custom-bordered" style="margin-left: 300px">
                  <thead id="tableTr">
                    <tr >
                      <td style="width:150px" >출금 계좌번호</td>
                      <td><select id="account">
                         <option value="0">계좌를 선택해주세요</option>
                         <c:forEach items="${list}" var="item">
                            <option value="${item}" id="account" name="account">${item}</option>
                  		</c:forEach>
                      </select>
                      <button type="button" id="limitSearch" class="btn-clipboard" data-bs-original-title="Copy to clipboard">한도조회</button>
                      </td>
                    </tr>
                   </thead > 
                 </div>
                 </table>
               </div>
              </div>
             </div>
           </div>
       </section>
       <div class="form-group" style="text-align: center;">
              <button type="button" class="btn btn-primary" value="button" id="limitChange"  >한도변경</button>
    	</div>
    <br><br>    
    
    <div class="container">
          <h4>이체한도변경</h4>
          <br><hr>
          <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9" style="margin: 0 auto">
              <div class="table-custom-responsive">
              <form action="AccountLimitAction.do" method="post" onsubmit="return limitSubmit();" id="limitView">
              
					
              </form>
              </div>
            </div>
          </div>
        </div>   
      </section> 
<br><br>       
  <br><br>          
   <%@ include file = "../footer.jsp" %>
</body>
</html>