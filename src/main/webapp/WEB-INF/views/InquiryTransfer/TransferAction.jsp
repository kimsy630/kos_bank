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
<% 
	String account = request.getParameter("account"); 
	String sender_account = request.getParameter("sender_account");
	String sender_name = request.getParameter("sender_name");
	String in_comment = request.getParameter("in_comment");
	String out_comment = request.getParameter("out_comment");
	int money = Integer.parseInt(request.getParameter("money"));

%>	
<c:if test="${insertCnt==0}">
	<script type="text/javascript">
		alert("계좌비밀번호가 다릅니다.");
		window.history.back();
	</script>
</c:if>
<c:if test="${insertCnt==2}">
	<script type="text/javascript">
		alert("계좌비밀번호가 다릅니다.");
		window.history.back();
	</script>
</c:if>
	
<c:if test="${insertCnt!=0}">
	<jsp:forward  page = "./TransferChk.jsp">
		<jsp:param name="account" value="<%=account%>" />
		<jsp:param name="sender_account" value="<%=sender_account%>" />
		<jsp:param name="sender_name" value="<%=sender_name%>" />
		<jsp:param name="in_comment" value="<%=in_comment%>" />
		<jsp:param name="out_comment" value="<%=out_comment%>" />
		<jsp:param name="money" value="<%=money%>" />
    </jsp:forward>
</c:if>

</body>
</html>