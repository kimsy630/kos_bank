<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="document.logoutForm.submit()">
    <form action = "logout.cc" name="logoutForm" method = 'post'>
		<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }"/>
	</form>
</body>
</html>