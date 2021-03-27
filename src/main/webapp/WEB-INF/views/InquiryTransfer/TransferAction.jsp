<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${insertCnt==0}">
	<script type="text/javascript">
		alert("계좌이체를 실패했습니다.");
		window.history.back();
	</script>
</c:if>
	
<c:if test="${insertCnt!=0}">
	<c:redirect url = "TransferChk.cc">
    </c:redirect>
</c:if>
<input type="hidden" name="sender_name" value="${vo.sender_name}">
<input type="hidden" name="account" value="${vo.account}">
<input type="hidden" name="money" value="${vo.money}">
<input type="hidden" name="sender_account" value="${vo.sender_account}">
<input type="hidden" name="out_comment" value="${vo.out_comment}">
<input type="hidden" name="in_comment" value="${vo.in_comment}">
</body>
</html>