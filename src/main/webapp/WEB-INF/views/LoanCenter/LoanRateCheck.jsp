<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<html class="wide wow-animation" lang="en">
	<head>
    	<title>Home</title>
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
                	<h2>대출이자 조회/납부</h2><br>
              	</div>
          	</section>
          
          	<section class="section section-lg bg-default">
          		<div class="container">
            		<h3>대출이자 조회/납부</h3><br>
                	 
	                <section class="section">             
	                	<div class="table-custom-responsive">
	                    	<form action="#" name="rateForm" method="get" onchange="checkAccount()">
	                        	<table class="table-custom table-custom-bordered">
	                            	<colgroup>
	                                   <col style="width: 15%;">
	                                    <col style="width: 85%;">
	                                </colgroup>
	                                <tbody>
	                                	<tr>
	                                    	<td scope="col">조회계좌${list.size()}</td>
	                                       	<td scope="col">
			                                   	<select id="selectAccount" name="selectAccount" lengthtype="length">
			                                    <option value="">계좌를 선택하세요.</option>
			                                    	<c:set value="" var="account" />
			                                       	<c:forEach var="list" items="${list}">
			                                        	<option value="${list.account}">${list.account}[${list.d_name}(${list.d_repay})]</option>
			                                       	</c:forEach>
			                                    </select>
			                                    <c:forEach var="list" items="${list}">
			                                    	<input type="hidden" name="account" value="${list.account}">
			                                        <input type="hidden" name="d_repay" value="${list.d_repay}">
			                                        <input type="hidden" name="d_rate" value="${list.d_rate}">
			                                        <input type="hidden" name="d_amount" value="${list.d_amount}">
			                                        <input type="hidden" name="d_balance" value="${list.d_balance}">
			                                        <input type="hidden" name="d_next_rate" value="${list.d_next_rate}">
			                                    </c:forEach>
			                                    <script>
			                                    	function checkAccount() {
			                                        	<c:forEach var="vo" items="${list}">
			                                            	if($('#selectAccount').val() == "${vo.account}") {
			                                                	<c:set value="${vo.account}" var="account"/>
			                                                	$('#d_next_rate').html("${vo.d_next_rate}");
			                                             	}
			                                          	</c:forEach>
			                                       	};
			                                    </script>
	                                 		</td>
	                                    </tr>
	                                    <tr>
	                                    	<td scope="col" class="borL">이자실행번호</td>
	                                       	<td scope="col" id="d_next_rate"></td>
	                                    </tr>
	                                    <tr>
	                                    	<td colspan="2" scope="col" class="borL">
	                                        	<div class="row justify-content-lg-center">
	                                       		<input type="button" id="LoanRateCheckIn" class="button button-primary button-round" value="조회">
	                                    	</div>
	                                 		</td>
	                                	</tr>
	                            	</tbody>
	                            </table>
	                              
	                            <br><br>
	                            
	                            <div id="Context"> </div>
	                            
	                            <script type="text/javascript">
	                            $('#LoanRateCheckIn').click(function() {
	                                if(document.rateForm.selectAccount.value == "") return;
	                                
	                                var formData = $("form[name=rateForm]").serialize();
	                                var URL = "${pageContext.request.contextPath}/LoanRateCheckIn.cc";
	                          
	                                $.ajax({
	                                   type : "get",
	                                   url : URL,
	                                   data : formData,
	                                   error : function() {
	                                      alert('페이지를 찾을 수 없습니다.');
	                                   },
	                                   success : function(data) {
	                                      $('#Context').html(data);
	                                   }
	                                });
	                             });
	                            </script>
	                     	</form>
                    	</div>
                	</section>                
         		</div>
          	</section>
          		
        	<%@include file="../footer.jsp" %>
    	</div>
	</body>
</html>