<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
<table class="table-custom table-custom-bordered" >
    <tr>
    	<td>계좌번호</td>
    	<td>${account } <input type="hidden" name="account" value="${account }"></td>
    </tr>
    <tr>
    	<td>신청날짜</td>
    	<td><input type="date" name="l_date" id="l_date" onchange="dateChange(this)"></td>
    </tr>
    <tr>
    	<td>한도</td>
    	<td>
    		<input type="text" name="money" id="money" value="0" onkeyup="numberComma(this)">
  		<input type="hidden" name="l_money" id="l_money" value="">
  	</td>
  </tr>
  <tr>
  	<td>비밀번호</td>
  	<td><input type="password" name="pwd" maxlength="4" id="pwd"> </td>
  </tr>
  <tr>
  	<td colspan="2" style="text-align: center;">
   		 <button type="submit" class="btn btn-primary" value="button" >신청</button>
   	</td>
   </tr>
</table>