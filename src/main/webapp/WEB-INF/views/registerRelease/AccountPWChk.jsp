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
    <div class="preloader">
      <div class="preloader-body">
        <div class="cssload-container">
          <div class="cssload-speeding-wheel"></div>
        </div>
        <p>Loading...</p>
      </div>
    </div>
    
    <div class="page">
      <%@include file="../header.jsp" %>
    </div>
       <form class="form-horizontal" role="form" method="post" action="AccountTerminationAction.cc">
      	 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
      		<table style="margin-left:600px">
      		<h4>안전한 거래를 위해 계좌번호를 입력해주세요</h4>
	   			<tr>
	             <td>계좌비밀번호</td>
	               <td><input type="text" id="account" name="account" style="width: 100px"></td>
	             </tr>
	             <br><br><br>
            </table> 
             <div class="form-group" style="margin-left:650px">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button type="submit" class="btn btn-primary">해지하기</button>
                    </div>
                </div>
                </form>
      
<%@ include file = "../footer.jsp" %>
</body>
</html>