<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html>

<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${insertCnt == 0}">
		<script type="text/javascript">
		setTimeout(function(){
			alert("출금계좌비밀번호가 틀립니다.");
			window.location.href="SavingsRegistration.cc?j_name=${j_name}";
		}, 1000); 
		</script>
	</c:when>
	<c:when test="${insertCnt == 1}">
		<script type="text/javascript">
		setTimeout(function(){
			alert("정기적금가입 신청이 완료되었습니다.");
			window.location.href="main.cc";	
		}, 1000); 
		</script>
	</c:when>
	<c:when test="${insertCnt == 2}">
		<script type="text/javascript">
		setTimeout(function(){
			alert("출금계좌 잔고가 부족합니다.");
			window.history.back();
		}, 1000); 
		</script>
	</c:when>
	<c:when test="${insertCnt == 3}">
		<script type="text/javascript">
		setTimeout(function(){
			alert("적금계좌 생성에 실패했습니다");
			window.history.back();
		}, 1000); 
		</script>
	</c:when>
	<c:when test="${insertCnt == 4}">
		<script type="text/javascript">
		setTimeout(function(){
			alert("이체에 실패했습니다. 잔고를 확인해주세요.");
			window.history.back();
		}, 1000); 
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
		setTimeout(function(){
			alert("정기예금가입 신청에 오류가 발생했습니다.");
			window.location.href="SavingsRegistration.cc?j_name=${j_name}";
		}, 1000); 
		</script>
	</c:otherwise>
</c:choose>
</body>
</html>