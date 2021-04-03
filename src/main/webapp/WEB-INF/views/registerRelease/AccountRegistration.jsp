<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Home</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="pathtext/css" href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,700,900">
    <link rel="stylesheet" href="${path}css/bootstrap.css">
    <link rel="stylesheet" href="${path}css/fonts.css">
    <link rel="stylesheet" href="${path}css/style.css" id="main-styles-link">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <script>

	
function doCheck() {
		
		// 약관 모두 동의여부
		if($("input:checkbox[name=checkTerms]:checked").length < 4) {
			alert("약관동의에 동의해주세요");
			$("input:checkbox[name=checkTerms]").focus();
			return false
		}
		
		if($("input:checkbox[name=lastCheck]:checked").length < 1) {
			alert("상품 이해여부 확인을 체크해주세요");
			$("input:checkbox[name=lastCheck]").focus();
			return false
		}
		
		return true;
	}
	
	function allChk() {
		if($("#allCheck").prop("checked")){
			$("#content-table2 input[type=checkbox]").prop("checked", true);
		}
		else {
			$("#content-table2 input[type=checkbox]").prop("checked", false); 
		} 
	}
	
	function openManual() {

		window.name = "parentForm";
		window.open("pManual.jsp", "chkForm",
				"width=1000, height=700, resizable = yes, scrollbars = no, ");
	}
	
	function doAction() {
		let password = document.form.accPwd.value;

		console.log(password.length)

		if (password.length < 4) {
			alert("4자리의 비밀번호를 입력해주세요");
			password.focus();
			return false;
		}
		return true;
	}
</script>
<style>
#content {
	margin-left:200px;
	min-height: 500px;
}

#content-table th {
	padding-left: 80px;
}

.small {
	font-size: 15px;
}

#account-list {
	margin-bottom: 50px;
}

#tr-btn {
	text-align: center;
}
</style>
  
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
 	<section class="section section-bredcrumbs">
        <div class="container context-dark breadcrumb-wrapper">
          <h2>계좌개설</h2>
          <br>
        </div>
      </section>
      <section class="section section-lg bg-default">
        <div class="container">
          <h3>계좌개설</h3>
          <hr/><br> 
            <!--// 헤더 들어가는 부분 -->
		<!-- Content Row -->
		<div class="row">
			<!-- Sidebar Column -->

			<!-- Content Column -->
			<div class="col-lg-9 mb-4">
				<section id="content">
					<div class="d-flex" id="wrapper">

						<!-- Page Content -->
						<div id="page-content-wrapper">
							<div class="container-fluid">
								<%-- textarea 영역 : 글내용 --%>
								<div class="textarea_wrap">
									<h4>비대면 계좌가입</h4>
									<p class="small">계좌가입은 KOS뱅크 계좌만 가능합니다.</p>
									
									<form
										action="AddAccountAction.cc"
										method="POST" name="checkForm" onsubmit="return doCheck()">
									<%-- 약관 동의 --%>
										<br>
										<h5 class="textarea-head-mid">약관동의 및 금리확인</h5>
										<p class="textarea-head-ex">상품가입 등 금융거래를 위하여 관련 법률과 규정에 따라
											동의 및 확인이 필요합니다.</p>
										<table class="table table-bordered" id="content-table2">
											<tr class="table-highlight" id="tr-head">
												<th colspan="2" style="text-align: center">통장약관</th>
											</tr>
											<tr style="text-align: center; vertical-align: middle;">
												<td>통장개설 약관 전체 동의</td>
												<td><label><input type="checkbox"
														name="allCheck" onclick="allChk()" id="allCheck">
														전체동의</label></td>
											</tr>
											<tr style="text-align: center; vertical-align: middle;">
												<td>예금거래기본 약관</td>
												<td><label><input type="checkbox"
														name="checkTerms"> 약관동의</label></td>
											</tr>
											<tr style="text-align: center; vertical-align: middle;">
												<td>입출금이 자유로운 예금 약관</td>
												<td><label><input type="checkbox"
														name="checkTerms"> 약관동의</label></td>
											</tr>
											<tr style="text-align: center; vertical-align: middle;">
												<td>비과세종합저축 특약</td>
												<td><input type="checkbox" name="checkTerms"> <label>약관동의</label></td>
											</tr>
											<tr style="text-align: center; vertical-align: middle;">
												<td>KOS뱅크 통장 특약</td>
												<td><label><input type="checkbox"
														name="checkTerms"> 약관동의</label></td>
											</tr>
										</table>

										<%-- button --%>
										<div class="btn-area">
											<div class="btn-wrap" style="margin-left:100px">
												<jsp:include page="/WEB-INF/include/pManual.jsp" />
												<jsp:include page="/WEB-INF/include/noticeRate.jsp" />
											</div>
										</div>
										<br>
										<%-- message --%>
										<div class="btn-area">
											<div class="btn-wrap" style="margin-left:120px">
												<label><input type="checkbox" name="lastCheck">
													본인은 위 안내에 대해 확인하고 이해합니다.</label>
											</div>
										</div>
									<br><br>	
									<div>
										<table class="table table-hover" id="content-table">
											<tr>
												<th class="name">예금주명</th>
												<td><input class="input--style-5" id="name" name="name"
													disabled value=${name }></td>
												<td><input type="hidden" id="id" name="id"
													value=${id }>
											</tr>
											<tr>
												<th class="bankNM">은행명</th>
												<td><input class="input--style-5" name="bankNM"
													value="KOS뱅크" disabled></td>
											</tr>
											<tr>
												<th class="accountType">통장종류</th>
												<td>입출금 통장</td>
											</tr>
											<tr>
												<th class="accountPW">계좌 비밀번호</th>
												<td><input type="password" class="input--style-5"
													id="accountPW" name="accountPW" maxlength="4"></td>
											</tr>
										</table>
											<%-- button 영역 : 버튼 --%>
											<div class="btn-area">
												<div class="btn-wrap" style="margin-left:250px">
													<input type="submit" class="btn btn-outline-info" value="확인">
													<input type="button" class="btn btn-outline-info" value="취소"
														onclick="javascript:history.go(-1)">
												</div>
											</div>
										</div>
									</form>
									<%-- ./계좌가입 form--%>

								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
            
        </script>
        </div>
        </div>
                <!--// 본문 들어가는 부분 -->
            <hr/>
            <!-- 푸터 들어가는 부분 -->
            <%@ include file = "../footer.jsp" %>
            
        </div>
</body>
</html>