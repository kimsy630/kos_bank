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
		alert("한도변경 신청을 실패했습니다.");
		window.history.back();
	</script>
</c:if>
	
<c:if test="${insertCnt==1}">
	<script type="text/javascript">
		alert("한도변경 신청을 완료했습니다");
		window.location='main.cc';
	</script>
</c:if>

<c:if test="${insertCnt==-1}">
	<script type="text/javascript">
		alert("비밀번호가 틀렸습니다 확인후 다시 신청해주세요");
		window.history.back();
	</script>
</c:if>
</body>
</html>