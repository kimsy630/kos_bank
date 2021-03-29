<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<table class="table-custom table-custom-secondary table-custom-hovered"  >
	<tr>
		<th> 환전 결과 </th>
		<td colspan="3">
			${changeMoney} 입니다.
		</td>
	</tr>
	<tr>
		<th>통화</th>
		<th>적용환율</th>
		<c:if test="${changeType eq 'sell'}">
		<th>외화금액</th>
		<th>원화금액</th>
		</c:if>
		
		<c:if test="${changeType eq 'buy'}">
		<th>원화금액</th>
		<th>외화금액</th>
		</c:if>
	</tr>
	
	<tr>
		<td>${ex.country_name}</td>
		<c:if test="${changeType eq 'buy'}">
			<td>${ex.buying_cost} </td>
		</c:if>
		
		<c:if test="${changeType eq 'sell'}">
			<td>${ex.selling_cost}</td>
		</c:if>
		<td>${money}</td>
		<td>${changeMoney}</td>
	</tr>
</table>