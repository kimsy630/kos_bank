
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <body>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	
	<c:if test="${deleteCnt1==-1}">
		<script type="text/javascript">
			alert("약관 미동의로 펀딩하기 실패");
			window.history.back();
		</script>
	</c:if>
	
	<c:if test="${deleteCnt2==0}">
		<script type="text/javascript">
			alert("참자가 정보 등록 실패");
			window.history.back();
		</script>
	</c:if>
	
	<c:if test="${deleteCnt3==0}">
		<script type="text/javascript">
			alert("참가자 계좌에서 출금 실패");
			window.history.back();
		</script>
	</c:if>
	
	<c:if test="${deleteCnt3==0}">
		<script type="text/javascript">
			alert("참가자 계좌에서 출금 실패");
			window.history.back();
		</script>
	</c:if>
	
	<c:if test="${deleteCnt4==0}">
		<script type="text/javascript">
			alert("등록자 계좌에 입금 실패");
			window.history.back();
		</script>
	</c:if>
	
	<c:if test="${deleteCnt5==0}">
		<script type="text/javascript">
			alert("입금에 대한 이체 history 작성 실패");
			window.history.back();
		</script>
	</c:if>
	
	<c:if test="${deleteCnt6==0}">
		<script type="text/javascript">
			alert("출금에 대한 history 작성 실패");
			window.history.back();
		</script>
	</c:if>
	
	<c:if test="${deleteCnt!=0}">
		<c:redirect url = "FundList.cc">
    	</c:redirect>
	</c:if>
  </body>
</html>
