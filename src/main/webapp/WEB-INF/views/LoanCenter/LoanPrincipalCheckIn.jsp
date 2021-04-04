<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<script>
function doAction() {	
	var Apassword = document.LoanPrincipalPayfrom.pwWithdraw.value;
	if (Apassword.length < 4) {
		alert("4자리의 비밀번호를 입력해주세요");
		document.LoanPrincipalPayfrom.pwWithdraw.focus();
		return false;
	}
}
</script>
<c:if test="${check == 0}">
	<script type="text/javascript">
	setTimeout(function(){
		alert("상환예정금액이 대출잔액을 초과하였습니다.");
		window.history.back();
	}, 1000); 
	</script>
</c:if>
<c:if test="${check != 0}">
	<form action="LoanPrincipalPay.do" name="LoanPrincipalPayfrom" method="POST" onsubmit="return doAction();">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		<input type="hidden" value="${vo.d_ERC}" name="d_ERC">
	   	<input type="hidden" value="${vo.d_auto_account}" name="d_auto_account">
	   	<input type="hidden" value="${vo.d_tran}" name="d_tran">
	   	<input type="hidden" value="${redemption}" name="redemption">
	   	<input type="hidden" value="${vo.d_balance}" name="d_balance">
	   	<input type="hidden" value="${vo.account}" name="account">
	   	<input type="hidden" value="${vo.d_Key}" name="d_Key">
	  	<table class="table-custom table-custom-bordered">
	      	<colgroup>
	          	<col style="width: 15%;">
	              <col style="width: 35%;">
	              <col style="width: 15%;">
	              <col style="width: 35%;">
	        </colgroup>
	        <tbody>
	         	<tr>
	              	<td scope="col">대출원금(원)</td>
	                  <td scope="col">
	                  	<c:if test="${redemption.equals('equality')}">
	                  		<fmt:formatNumber value="${vo.d_amount}" pattern="#,###" />
	                  	</c:if>
	                  	<c:if test="${redemption.equals('early')}">
	                  		<fmt:formatNumber value="${vo.d_amount}" pattern="#,###" />
	                  	</c:if>
	                  </td>
	                  <td scope="col">상환원금(원)</td>
	                  <td scope="col">
	                  	<c:if test="${redemption.equals('equality')}">
	                  		<fmt:formatNumber value="${vo.d_tran}" pattern="#,###" />
	                  	</c:if>
	                  	<c:if test="${redemption.equals('early')}">
	                  		<fmt:formatNumber value="${vo.d_tran}" pattern="#,###" />
	                  	</c:if>
	                  </td>
	              </tr>
	              <tr>
	              	<td scope="col">중도상환 수수료(원)</td>
	                  <td scope="col" colspan="3">
	                  	<c:if test="${redemption.equals('equality')}">
	                  		<fmt:formatNumber value="${vo.d_ERC}" pattern="#,###" />
	                  	</c:if>
	                  	<c:if test="${redemption.equals('early')}">
	                  		<fmt:formatNumber value="${vo.d_ERC}" pattern="#,###" />
	                  	</c:if>
	                  </td>
	              </tr>
	              <tr>
	                	<td scope="col">거래 후 대출잔액(원)</td>
	                 	<td scope="col" colspan="3">
	                 		<c:if test="${redemption.equals('equality')}">
	                  		<fmt:formatNumber value="${vo.d_balance}" pattern="#,###" />
	                  	</c:if>
	                  	<c:if test="${redemption.equals('early')}">
	                  		<fmt:formatNumber value="${vo.d_balance}" pattern="#,###" />
	                  	</c:if>
	                 	</td>
	              </tr>
	          	<tr>
	          		<td scope="col">출금 계좌번호</td>
	          		<td scope="col" colspan="3">${vo.d_auto_account}</td>
	          	</tr>
	          	<tr>
	          		<td scope="col">비밀번호</td>
	          		<td scope="col" colspan="3">
	          			<div id="withdraw">
							<input name="pwWithdraw" id="pwWithdraw" type="password" maxlength="4" onkeyup="JavaScript:numberComma3(this);">
						</div>
	          		</td>
	          	</tr>
	          </tbody>
		</table>
	          	
	    <div class="row justify-content-lg-center">
	      	<input type="submit" value="원금상환" class="button button-primary button-round">
		</div>
	</form>
</c:if>