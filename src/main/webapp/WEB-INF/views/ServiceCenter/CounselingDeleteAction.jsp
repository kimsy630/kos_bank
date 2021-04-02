
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <body>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	<c:if test="${deleteCnt==0}">
		<script type="text/javascript">
			alert("글 삭제 실패");
			window.history.back();
		</script>
	</c:if>
	<c:if test="${deleteCnt!=0}">
		<c:redirect url = "Counseling.cc">
    	</c:redirect>
	</c:if>
  </body>
</html>
