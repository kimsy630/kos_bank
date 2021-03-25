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
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
<c:if test="${deleteCnt==0}">
	<script type="text/javascript">
		alert("계좌해지에 실패했습니다.");
		window.history.back();
	</script>
</c:if>
	
<c:if test="${deleteCnt!=0}">
	<c:redirect url = "main.cc">
    </c:redirect>
</c:if>
</body>
</html>