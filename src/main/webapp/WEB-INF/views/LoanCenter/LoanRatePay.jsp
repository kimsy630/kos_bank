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
<c:if test="${updateCnt != 1}">
	<script type="text/javascript">
	setTimeout(function(){
		alert("대출이자 납입에 실패했습니다.");
		window.history.back();
	}, 1000); 
	</script>
</c:if>

<c:if test="${updateCnt == 1}">
	<script type="text/javascript">
	setTimeout(function(){
		alert("대출이자 납입이 완료되었습니다.");
		window.location.href="main.cc";	
	}, 1000); 
	</script>
</c:if>
</body>
</html>