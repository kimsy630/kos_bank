<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Home</title>
  </head>
  
  	<body>        	
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
            </tbody>
		</table>
            	
        <div class="row justify-content-lg-center">
			<a class="button button-round button-primary" href="LoanPrincipalPay.cc" data-caption-animate="fadeInUp" data-caption-delay="450">상환</a>
		</div>
  	</body>
</html>