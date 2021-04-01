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
<%
	String account = request.getParameter("account");
%>    
    <div class="page">
      <%@include file="../header.jsp" %>
          <section class="section section-lg bg-default">
       		<div class="container">
              <form action="AutoTransferDeleteStart.do" method="post" style="width:400px; margin-left:350px; align:center">
              	 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
              	 <input type="hidden" name="account" value="<%=account%>">
              	 
		          <br>
	                <table class="table-custom table-custom-bordered" id="Transaction_table">
		                    <tr>
			                  	 <td> 안전한 거래를 위해 계좌비밀번호를 입력해주세요</td>
		                    </tr>
				            <tr>
				            	 <td><input type="password" id="accountPW" class="form-control" name="accountPW" placeholder="Password" required></td>
				            </tr>
	                	</table>
	                <br><br><br>
	                <button type="submit" class="btn btn-primary" style="margin-left:150px">해지하기</button> 
                </form>
          	</div>
          </section>
        </div>
      
<%@ include file = "../footer.jsp" %>
</body>
</html>