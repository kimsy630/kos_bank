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
<c:if test="${updateCnt == 0}">
	<script type="text/javascript">
	setTimeout(function(){
		alert("대출원금 상환에 실패했습니다.");
		window.history.back();
	}, 1000); 
	</script>
</c:if>

<c:if test="${updateCnt == 1}">
	<script type="text/javascript">
	setTimeout(function(){
		alert("대출원금 상환이 완료되었습니다.");
		window.location.href="main.cc";	
	}, 1000); 
	</script>
</c:if>

<c:if test="${updateCnt == 2}">
	<script type="text/javascript">
	setTimeout(function(){
		alert("비밀번호가 일치하지 않습니다.");
		window.history.back();
	}, 1000); 
	</script>
</c:if>
</body>
</html>