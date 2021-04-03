<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<script>
function doAction() {	
	var Apassword = document.LoanRatePayform.pwWithdraw.value;
	if (Apassword.length < 4) {
		alert("4자리의 비밀번호를 입력해주세요");
		document.LoanRatePayform.pwWithdraw.focus();
		return false;
	}
}
</script>
<form action ="LoanRatePay.do" name="LoanRatePayform" method="POST" onsubmit="return doAction();">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
    <input type="hidden" value="${vo.account}" name="account">
    <input type="hidden" value="${vo.d_tran_rate}" name="d_tran_rate">
    <input type="hidden" value="${vo.d_auto_account}" name="d_auto_account">
    <input type="hidden" value="${vo.d_Key}" name="d_Key">
    <table class="table-custom table-custom-bordered">
    	<colgroup>
        	<col style="width: 15%;">
            <col style="width: 85%;">
        </colgroup>
        <tbody>
        	<tr>
           		<td scope="col">이자(원)</td>
           		<td scope="col"><fmt:formatNumber value="${vo.d_tran_rate}" pattern="#,###" /></td>
          	</tr>
           	<tr>
          		<td>출금 계좌번호</td>
          		<td>${vo.d_auto_account}</td>
           	</tr>
           	<tr>
           		<td>비밀번호</td>
           		<td>
           			<div id="withdraw">
						<input name="pwWithdraw" id="pwWithdraw" type="password" maxlength="4" onkeyup="JavaScript:numberComma3(this);">
					</div>
           		</td>
           	</tr>
        </tbody>
   	</table>
    
    <div class="row justify-content-lg-center">
    	<input type="submit" value="이자납입" class="button button-primary button-round">
	</div>
</form>