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
		<c:if test="${insertCnt2==0}">
			<script type="text/javascript">
				alert("계좌이체를 실패했습니다.");
				window.history.back();
			</script>
		</c:if>
	</c:if>
		
	<c:if test="${insertCnt!=0}">
		<c:if test="${insertCnt2!=0}">
			<script type="text/javascript">
				alert("대출 신청이 완료되었습니다.");
			</script>
			<c:redirect url = "main.cc" />
		</c:if>
	</c:if>
</body>
</html>