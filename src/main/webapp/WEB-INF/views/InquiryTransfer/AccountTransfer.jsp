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
    var msg = '${msg}';
   $(function () {
       $("#limitChk").click(function () {
           $.ajax({
            type : "get",
            url : "accountLimitChk.cc",
            //여러개 데이터 보낼 때 Json 방식
            data : {
               accountLimit : $("#accountLimit").val(),
            },
            success : function(data){
                //check.jsp에서 DB확인해서 출력은 index에서
                $("#limitMoney").html(data);
                //$("#ajaxReturn").html("(ex)사용할 수 있는 ID입니다.");
            },
            error : function(){
                alert("error");
            }
        
           });
       });
   });
   
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
   
   /* 금액 직접 입력시 해당 input 태그 적용 메서드  */
    var tmpNC = "";
    function numberComma(obj) {
        if (tmpNC == obj.value) return;
        tmpNC = obj.value;
        obj.value = numberComma2(tmpNC);
    }
    function numberComma2(s) {
        s = s.replace(/\D/g, "");
        q = parseInt(s);
        document.TransferForm.money.value = q;
        l = s.length - 3;
        while (l > 0) {
            s = s.substr(0, l) + "," + s.substr(l);
            l -= 3;
        }
        return s;
    }
   /* 금액 직접 입력시 적용 메서드  */
   
   /* 숫자버튼 누를시 적용 메서드  */
    function numberComma100(obj) {
       var q = "";
       var w = "";
       var e = "";
       var r = "";
       var t = "";
       q = $("#money2").val();
       if(!$("#money2").val()) {
          q = '0';
       }
       w = q.replace(/,/g ,"");
       e = parseInt(w);
       e += obj
       $("#money").val(e);
       r = e.toString();
       t = r.toString().length - 3;
       while (t > 0) {
            r = r.substr(0, t) + "," + r.substr(t);
            t -= 3;
        }
       document.getElementById('money2').value = r;
    }
   /* 숫자버튼 누를시 적용 메서드  */   

   /* 숫자버튼 위 마우스 올려놓을시 적용 메서드 */
      $(function() {
         $("#hundred").on({
            "mouseover" : function() {
               $("#hundred").css({"background-color":"#0d6efd"});
               $("#hundred").css({"color":"white"});
            },
            "mouseout" : function() {
               $("#hundred").css({"background-color":"white"});
               $("#hundred").css({"color":"#0d6efd"});
            }
         });
         $("#fifty").on({
            "mouseover" : function() {
               $("#fifty").css({"background-color":"#0d6efd"});
               $("#fifty").css({"color":"white"});
            },
            "mouseout" : function() {
               $("#fifty").css({"background-color":"white"});
               $("#fifty").css({"color":"#0d6efd"});
            }
         });
         $("#ten").on({
            "mouseover" : function() {
               $("#ten").css({"background-color":"#0d6efd"});
               $("#ten").css({"color":"white"});
            },
            "mouseout" : function() {
               $("#ten").css({"background-color":"white"});
               $("#ten").css({"color":"#0d6efd"});
            }
         });
         $("#five").on({
            "mouseover" : function() {
               $("#five").css({"background-color":"#0d6efd"});
               $("#five").css({"color":"white"});
            },
            "mouseout" : function() {
               $("#five").css({"background-color":"white"});
               $("#five").css({"color":"#0d6efd"});
            }
         });
         $("#one").on({
            "mouseover" : function() {
               $("#one").css({"background-color":"#0d6efd"});
               $("#one").css({"color":"white"});
            },
            "mouseout" : function() {
               $("#one").css({"background-color":"white"});
               $("#one").css({"color":"#0d6efd"});
            }
         });
         $("#reset").on({
            "mouseover" : function() {
               $("#reset").css({"background-color":"#0d6efd"});
               $("#reset").css({"color":"white"});
            },
            "mouseout" : function() {
               $("#reset").css({"background-color":"white"});
               $("#reset").css({"color":"#0d6efd"});
            }
         });
         $("#accountLimit").on({
            "mouseover" : function() {
               $("#accountLimit").css({"background-color":"#0d6efd"});
               $("#accountLimit").css({"color":"white"});
            },
            "mouseout" : function() {
               $("#accountLimit").css({"background-color":"white"});
               $("#accountLimit").css({"color":"#0d6efd"});
            }
         });
         $("#NameChk").on({
            "mouseover" : function() {
               $("#NameChk").css({"background-color":"#0d6efd"});
               $("#NameChk").css({"color":"white"});
            },
            "mouseout" : function() {
               $("#NameChk").css({"background-color":"white"});
               $("#NameChk").css({"color":"#0d6efd"});
            }
         });
      });
      /* 숫자버튼 위 마우스 올려놓을시 적용 메서드 */   
      
        function changeAccount(){
           
         <c:forEach items="${list}" var="item">
            if ("${item.account}"== $('#account').val()){
            	
               	 var q = "";
                 var w = "";
                 var e = "";
                 var r = "";
                 var t = "";
                 var a = "";
                 var b = "";
                 var c = "";
                 var d = "";
                 var f = "";
                 var h = "";
                 var k = "";
                 var i = "";
                 
                 q = "${item.balance}"; 
                 a = "${item.accountLimit}";
                 a = a.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                 
                 b = "${item.oneLimit}";
                 b = b.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                 if(!"${item.balance}") {
                    q = '0';
                 }
                 w = q.replace(/,/g ,"");
                 e = parseInt(w);
                 $('#select_balance2').val(e);
                 r = e.toString();
                 t = r.toString().length - 3;
                 while (t > 0) {
                      r = r.substr(0, t) + "," + r.substr(t);
                      t -= 3;
                  }
                 
               $('#select_balance').html(r+"원");
               $('#select_limit').html("1회한도 : "+b+"원, 일일한도 : "+a+"원" + "<input type='hidden' id='accountLimit' value='"+a+"''>"+ "<input type='hidden' id='oneLimit' value='"+b+"''>");
                 if(!"${item.accountLimit}"){
                    c = '0';
                 }
                 d = c.replace(/,/g ,"");
                 f = parseInt(d);
                 $('#select_limit2').val(f);
                 h = f.toString();
                 k = h.toString().length - 3;
                 while (k > 0) {
                      h = h.substr(0, k) + "," + r.substr(k);
                      k -= 3;
                  }
            }
         </c:forEach>
          
         /* $('#select_balance').html($('#select_account').val()+"원"); */
       }
      
      function Transfer() {
         if (document.TransferForm.accountPW.value.length != 4) {
             alert("4자리 비밀번호로 입력해주세요.");
             document.TransferForm.accountPW.focus();
             return false;
          }
          if (document.getElementById("account").style.display == 'block' && document.TransferForm.account.value == '선택') {
             alert('이체할 계좌번호를 선택하세요.');
             return false;
          }
          if (document.TransferForm.account.value == document.TransferForm.sender_account.value) {
             alert("같은 계좌번호로 이체 할 수 없습니다.");
             return false;
          }
          if (document.TransferForm.select_balance2.value - document.TransferForm.money.value < 0) {
             alert("잔액보다 큰 금액을 이체 할 수 없습니다.");
             return false;
          }
          
          if (document.TransferForm.accountLimit.value - document.TransferForm.money.value < 0){
             alert("일일한도보다 큰 금액을 이체 할 수 없습니다.");
             return false;
          }
          
          if (document.TransferForm.oneLimit.value - document.TransferForm.money.value < 0){
             alert("1회한도보다 큰 금액을 이체 할 수 없습니다.");
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
</style>
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
    <form name="TransferForm" method="POST" action="TransferAction.cc" onsubmit="return Transfer();">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
    <section class="section section-bredcrumbs">
        <div class="container context-dark breadcrumb-wrapper">
           <h2>계좌이체</h2>
          <br>
        </div>
      </section>
      <br><br>
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
                      <select name="account" id="account" onchange="changeAccount()">
                  <option value="선택">선택</option>
                     <%-- <c:forEach items="${list}" var="item">
                        <option value="${item.balance}" id="account" name="account">${item.account} </option>
                     </c:forEach>
                       --%>
                      <c:forEach items="${list}" var="item">
                        <option value="${item.account}" >${item.account} </option>
                     </c:forEach>
                      
                  </select>
                  </td>
               <tr>
                  <th scope="col" class="balance">잔액 </th>
                        <td scope="col" id="select_balance" name="select_balance" style="color : blue;"></td>
               </tr>
               		   <tr>      
                       <th>이체한도조회</th> 
                           <td scope="col" id="select_limit" name="select_limit" style="color : blue;"></td>
                       </tr>
                      <tr>    
                  </thead>
                    <tr>
                    <th>계좌비밀번호</th>
                      <td><input type="password" id="accountPW" name="accountPW" style="width: 100px"></td>
                    </tr>
                    <tr>
                       <th>이체금액</th>
                         <td>
                              <div>
                              <input type="hidden" id="select_balance2" name="select_balance2">
                               <input type="hidden" id="money" name="money" style="width: 150px" onkeyup="numberComma(this);">
                               <input type="text" id="money2" name="money2" style="width: 150px" onkeyup="numberComma(this);">
                               <button type="button" id="hundred" class="btn-clipboard" data-bs-original-title="Copy to clipboard" onclick="numberComma100(1000000);">100만</button>
                               <button type="button" id="fifty" class="btn-clipboard" data-bs-original-title="Copy to clipboard" onclick="numberComma100(500000);">50만</button>
                               <button type="button" id="ten" class="btn-clipboard" data-bs-original-title="Copy to clipboard" onclick="numberComma100(100000);">10만</button>
                               <button type="button" id="five" class="btn-clipboard" data-bs-original-title="Copy to clipboard" onclick="numberComma100(50000);">5만</button>
                               <button type="button" id="one" class="btn-clipboard" data-bs-original-title="Copy to clipboard" onclick="numberComma100(10000);">1만</button>
                               <button type="reset" id="reset" class="btn-clipboard" data-bs-original-title="Copy to clipboard">취소</button>
                            </div>
                         </td>
                  </tr>
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
                            <button type="button" id="NameChk" class="btn-clipboard" data-bs-original-title="Copy to clipboard" value="NameChk">예금주 조회</button>
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
              <div class="col-lg-offset-2 col-lg-10" style="text-align:center">
                      <button type="submit" class="btn btn-primary" >이체실행</button>
                  </div>  
            </section>
        </form> 
    </div>  
   <br><br><br>
<%@ include file = "../footer.jsp" %>
</body>
</html>