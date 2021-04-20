
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
%>

<script type="text/javascript">
	function inputNumberFormat(obj) {
	     obj.value = comma(uncomma(obj.value));
	 }

	 function comma(str) {
	     str = String(str);
	     return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
	 }

	 function uncomma(str) {
	     str = String(str);
	     return str.replace(/[^\d]+/g, '');
	 }
</script>

<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<title>펀드</title>
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
    	<%@ include file="../header.jsp" %>
    	<section class="section section-bredcrumbs">
	        <div class="container context-dark breadcrumb-wrapper">
	          <h2>펀드 등록</h2>
	          <br>
	        </div>
	     </section>
			<section class="section section-lg bg-default">
		        <div class="container">
		          <div class="row row-offset-1">
		            <div class="col-lg-10 col-xxl-12">
		              
		              <form action="FundAddAction?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data"  method="post">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
						<input type="hidden" name="id" value="${sessionScope.id}">
							<div class="table-custom-responsive">
							<table class="table-custom table-custom-secondary table-custom-hovered">
			                  		<thead>
			                  			<tr>
			                  				<th width="20%">펀드 등록</th>
			                  				<th width="80%">&nbsp;</th>
			                  			</tr>
			                  		</thead>
									<tbody>
										<tr>
											<td >펀드종목:</td>
											<td><select id = "f_category" name="f_category">
				                      			<option value="테크·가전">테크·가전</option>
						              			<option value="패션·잡화">패션·잡화</option>
						              			<option value="뷰티">뷰티</option>
						              			<option value="푸드">푸드</option>
						              			<option value="홈리빙">홈리빙</option>
						              			<option value="디자인·소품">디자인·소품</option>
						              			<option value="여행·레저">여행·레저</option>
						              			<option value="스포츠·모빌리티">스포츠·모빌리티</option>
						              			<option value="반려동물">반려동물</option>
						              			<option value="게임·취미">게임·취미</option>
						              			<option value="기타">기타</option>
						              		</select></td>
										</tr>
									
										<tr>
											<td>펀딩기간:</td>
											<td>												
												<input type="date" class="form-control" id="f_start_date" name="f_start_date">
												~
												<input type="date" class="form-control" id="f_end_date" name="f_end_date">
											</td>
										</tr>
										
										<tr>
											<td >목표 금액:</td>
											<td ><input type="text" class="form-control" id="f_target_money" name="f_target_money" placeholder="목표 금액을 입력하세요." maxlength="20" onkeyup="inputNumberFormat(this)" />
											</td>
										</tr>
										
										<tr>
											<td >계좌 번호:</td>
											<td ><input type="text" class="form-control" id="account" name="account" placeholder="계좌 번호를 입력하세요." maxlength="20"></td>
										</tr>
										
										<tr>
											<td>제목:</td>
											<td><textarea  id="f_title" name="f_title" rows="3" style="width:100%;" placeholder="제목을 입력하세요."></textarea></td>
											
										</tr>
										
										<tr>
											<td>내용:</td>
											<td><textarea  id="f_content" name="f_content" rows="10" style="width:100%;" placeholder="내용을 입력하세요."></textarea></td>
											
										</tr>
										
										<tr>
											<td>첨부파일:</td>
											<td><input type="file" class="form-control" id="f_filename" name="f_filename"></td>
											
										</tr>
										
										<tr>
											<td>등록자 이름:</td>
											<td><input type="text" class="form-control" id="f_name" name="f_name" placeholder="등록자 이름을 입력하세요." maxlength="20"></td>
											
										</tr>
										
										<tr>
											<td>등록자 연락처:</td>
											<td><input type="text" class="form-control" id="f_phone" name="f_phone" placeholder="등록차 연락처를 입력하세요." maxlength="20"></td>
											
										</tr>
										
										<tr>
											<td>등록자 이메일:</td>
											<td><input type="text" class="form-control" id="f_Email" name="f_Email" placeholder="등록차 이메일을 입력하세요." maxlength="20"></td>
											
										</tr>
									
									</tbody>
								
								</table>
							</div>
							
                          <button class="button button-sm button-round button-primary" type="submit">등록</button> 
                          <button class="button button-sm button-round button-primary" type="button" onclick="location.href='FundList.cc'">취소</button> 
						</form>
		            </div>
		          </div>
		        </div>
		      </section>
			    <br> <br> <br> <br> <br> <br> <br>
    	<%@ include file="../footer.jsp" %>
    </div>
  </body>
</html>
