
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <body>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	<c:if test="${deleteCnt==0}">
		<script type="text/javascript">
			alert("댓글 작성 실패");
			window.history.back();
		</script>
	</c:if>
	<c:if test="${deleteCnt!=0}">
		<script type="text/javascript">
			window.history.back();
		</script>
	</c:if>
  </body>
</html>
