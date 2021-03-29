<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>자동이체 신청</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="${path}images/favicon.ico" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="pathtext/css" href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,700,900">
    <link rel="stylesheet" href="${path}css/bootstrap.css">
    <link rel="stylesheet" href="${path}css/fonts.css">
    <link rel="stylesheet" href="${path}css/style.css" id="main-styles-link">
<script src="http://code.jquery.com/jquery.js"></script>
<script>
	function check(){
		var form = document.autoAction;
		
		if(form.Auto_check[0].checked){
			form.action="AutoTransferRequestAction.cc";
		} else if(form.Auto_check[1].checked){
			form.action="AutoTransferModify.cc";
		}
		form.submit();
	}

</script>
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
     <h2>자동이체신청</h2>
        </div>
      </section>
      <form name="autoAction" method="post" action="AutoTransferDelete.cc" onsubmit="check()">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
      <section class="section section-lg bg-default">
        <div class="container">
          <h4>약정정보입력</h4>
          <br><hr>
          <div class="row row-offset-1">
            <div class="col-lg-10 col-xxl-9">
              <div class="table-custom-responsive">
                <table class="table-custom table-custom-bordered" id="acc_table">
                  <thead>
                    <tr>
                      <th >약정구분</th>
                      	<td colspan="4">
                      		<input type="radio" name="Auto_check" value="AutoTransferAdd" checked> 약정
                      		<input type="radio" name="Auto_check" value="AutoTransferModify"> 정정
                      		<input type="radio" name="Auto_check" value="AutoTransferDelete"> 해지
                     	 </td>
                    </tr>
                  </thead>
                   <tr>
                    <th >출금계좌</th>
                      <td colspan="4">코스뱅크
	                      <select name="account" class="custom-select"
								aria-label="Example select with button addon">
							<option value="">계좌를 선택하세요</option>
								<c:forEach items="${list}" var="item">
									<option value="${item.account}" id="account" name="account">${item.account}</option>
								</c:forEach>
							</select>
						</td>
                    </tr>
                    <tr>
                    <!-- 자동이체정보 -->
						<tbody>
							<tr>
								<th>이체지정일</th>
								<td>
									<div class="display_table">
										<div class="input-group mb-3">
											<select id="jd_outCycle" name="jd_outCycle" class="custom-select"
												aria-label="Example select with button addon">
												<option selected>이체주기</option>
												<option class="" value="1개월">1개월</option>
											</select> 
											<select name="jd_outDate" class="custom-select"
												aria-label="Example select with button addon">
												<option value="" selected>이체지정일</option>
												<option class="" value="1">1</option>
												<option class="" value="2">2</option>
												<option class="" value="3">3</option>
												<option class="" value="4">4</option>
												<option class="" value="5">5</option>
												<option class="" value="6">6</option>
												<option class="" value="7">7</option>
												<option class="" value="8">8</option>
												<option class="" value="9">9</option>
												<option class="" value="10">10</option>
												<option class="" value="11">11</option>
												<option class="" value="12">12</option>
												<option class="" value="13">13</option>
												<option class="" value="14">14</option>
												<option class="" value="15">15</option>
												<option class="" value="16">16</option>
												<option class="" value="17">17</option>
												<option class="" value="18">18</option>
												<option class="" value="19">19</option>
												<option class="" value="20">20</option>
												<option class="" value="21">21</option>
												<option class="" value="22">22</option>
												<option class="" value="23">23</option>
												<option class="" value="24">24</option>
												<option class="" value="25">25</option>
												<option class="" value="26">26</option>
												<option class="" value="27">27</option>
												<option class="" value="28">28</option>
												<option class="" value="29">29</option>
												<option class="" value="30">30</option>
												
											</select>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row">이체시작일</th>
								<td>
									<div class="display_table">
										<div class="input-group mb-3">
											<input type="date" class="form-control" name="jd_registDate">
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row">이체종료일</th>
								<td>
									<div class="input-group mb-3">
										<input type="date" class="form-control" id="jd_expirationDate" name="jd_expirationDate">
									</div>
								</td>
							</tr>
                    <tr>
	                    <th>이체금액</th>
	                    	<td colspan="4"><input type="text" id="jd_autoMoney" name="jd_autoMoney" style="width:200px" placeholder="금액을 입력해주세요">
                    </tr>
                    <tr>
	                    <th>이체 기관명</th>
	                    	<td colspan="4"><input type="text" id="jd_inPlace" name="jd_inPlace" style="width:200px" placeholder="기관명">
                    </tr>
                    <tr>
                    	<th>입금계좌번호</th>
                    	<td colspan="4">
	                    	<input type="text" id="jd_bank" name="jd_bank" style="width:100px" placeholder="은행명">
	                    	<input type="text" name="jd_account" id="jd_account" style="width: 200px">
                    	</td>
                    </tr>
             	 </table>
              </div>
      		</div>
          </div>
        </div>   
     
      			<div class="form-group" style="margin-left:600px">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button type="submit" class="btn btn-primary">신청하기</button>
                        <button type="reset" class="btn btn-primary">취소하기</button>
                    </div>
                </div>
            </section>
     	 </form>
      </div>
	<br><br><br><br>
<%@ include file = "../footer.jsp" %>
</body>
</html>