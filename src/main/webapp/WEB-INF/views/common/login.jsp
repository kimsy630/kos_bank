<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>
<script>
	$(function(){
		$('form').submit(function(){
			if ($('#id').val() <= 4) {
				alert('유효한 아이디를 입력하세요.');
				return false;
			}else if ($('#pw').val <= 4) {
				alert('유효한 비밀번호를 입력해주세요.');
				return false;
			}
		});
	});
</script>
</head>
<body class="text-center">
	
<%@ include file="../header.jsp" %>
<main id="main" class="main">
    <div class="container">
    <br> <br> <br> <br> <br> <br> <br>
	<form class="form-signin" action="loginAction.cc" method="post" role="form" >
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
    	<div style="width: 30%; min-width:300px; float:none; margin:0 auto">
			<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">
			<div class="form-group justify-content-center text-dark">		 	
				<h2>Login</h2>
			</div>
			<c:if test="${errMsg!=null}">
				<div class="form-group justify-content-center text-info">
						${errMsg}
				</div>
			</c:if>
			<label for="id" class="sr-only">ID</label> 
			<input type="text" id="id" class="form-control"  name="id" placeholder="ID" required autofocus> 
			<label for="pw" class="sr-only">Password</label> 
			<input type="password" id="pw" class="form-control" name="pw" placeholder="Password" required>
			<input type="submit" value="로그인" class="btn-dark btn-block form-control ">
			<input type="button" value="회원가입" class="btn-dark btn-block form-control" onclick="location.href='signUp.cc'">
			<input type="reset" value="취소" class="btn-dark btn-block form-control "  onclick="location.href='main.cc'">
		</div>
	</form>
	</div>
	</main>
	<%@ include file="../footer.jsp" %>
</body>
</html>