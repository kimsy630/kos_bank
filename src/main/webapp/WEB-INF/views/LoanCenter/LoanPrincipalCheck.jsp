<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Home</title>
    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
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
		        	<h2>대출원금 조회/납부</h2><br>
		        </div>
		    </section>
		    
		    <section class="section section-lg bg-default">
		    	<div class="container">
		        	<h3>대출원금 조회/납부</h3><br>
		        	
		        	<section class="section">
			          	<div class="table-custom-responsive">
			          		<form action="#" name="principalForm" method="get" onchange="">
				               	<table class="table-custom table-custom-bordered">
				                	<colgroup>
				                    	<col style="width: 15%;">
				                     	<col style="width: 85%;">
				                  	</colgroup>
				                  	<tbody>
				                  		<tr>
				                        	<td scope="col">조회계좌</td>
				                        	<td scope="col">
											    <select id="selectAccount" name="selectAccount" onchange="checkAccount()">
											    	<option value="">계좌를 선택하세요.</option>
											    	<c:set value="" var="account"/>
													<c:forEach var="list" items="${list}">
												    	<option value="${list.account}">${list.account}[${list.d_name}(${list.d_repay})]${list.d_repay}</option>
												    </c:forEach>
											    </select>
											    <script> 
											    	function checkAccount() {
														<c:forEach var="vo" items="${list}">
															if($('#selectAccount').val() == "${vo.account}") {
																$('#d_balance').html("<fmt:formatNumber value='${vo.d_balance}' pattern='#,###' />");
															}
														</c:forEach>

														<c:forEach var="vo3" items="${list}">
														if($('#selectAccount').val() == "${vo3.account}") {
															if('원금균등분할' == "${vo3.d_repay}") {
																$("#d_repay").css("display","block");
															}else{
																$("#d_repay").css("display","none");
																$("input:radio[id='equality']").prop("checked", false);
															}
														}
														</c:forEach>
											    	};
											    </script>
											</td>
				                     	</tr>
				                     	<tr>
				                        	<td scope="col" class="borL">대출잔액(원)</td>
				                        	<td scope="col" ><div id="d_balance"></div></td>
				                     	</tr>
				                     	<tr>
				                        	<td scope="col">상환방법</td>
				                        	<td scope="col">
					                        	<div class="card-body">
					                        		<div class="form-check form-check-primary">
				                        				<div id="d_repay">
					                        				<input type="radio" class="form-check-input" name="redemption" value="equality" id="equality" checked>
					                                        <label class="form-check-label" for="equality">원금균등상환</label>
				                                        </div>
				                                        <input type="radio" class="form-check-input" name="redemption" value="early" id="early" >
				                                        <label class="form-check-label" for="early">중도상환</label>
		                                    		</div>
	                                    		</div>
	                                    		<script type="text/javascript">
	                                    		$('input[name="redemption"]').change(function() {
	                                    			if($('input[name=redemption]:checked').val() =="equality") {
	                                    				$('#money').html("");
	                                    				
	                                    			}else{
	                                    				$('#money').html("<input name='d_tran' type='text'>원");
	                                    			}
	                                    		});
	                                    		</script>
											</td>
				                     	</tr>
				                     	<tr>
				                        	<td scope="col">상환원금(원)</td>
				                        	<td scope="col" id="money"></td>
				                     	</tr>
				                     	<tr>
				                        	<td colspan="2" scope="col" class="borL">
				                        		<div class="row justify-content-lg-center">
													<input type="button" id="LoanPrincipalCheckIn" class="button button-primary button-round" value="조회">
												</div>
											</td>
				                     	</tr>
				                  	</tbody>
				               	</table>
			               	
				               	<br><br>
				               	
				               	<div id="Context">
				               	
				               	</div>
				               	
				               	<script type="text/javascript">
				               		$('#LoanPrincipalCheckIn').click(function() {
				               			if(document.principalForm.selectAccount.value == "") return;
				               			
				               			var formData = $("form[name=principalForm]").serialize();
				               			var URL = "${pageContext.request.contextPath}/LoanPrincipalCheckIn.cc";
										
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