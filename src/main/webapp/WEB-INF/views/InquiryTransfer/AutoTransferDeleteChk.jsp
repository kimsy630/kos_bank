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
<c:if test="${insertCnt==0}">
	<script type="text/javascript">
		alert("해지에 실패했습니다.");
		window.history.back();
	</script>
</c:if>
	
<c:if test="${insertCnt!=0}">
	<script type="text/javascript">
		alert("자동이체가 해지되었습니다.");
	</script>
	<c:redirect url = "main.cc">
    </c:redirect>
</c:if>
</body>
</html>