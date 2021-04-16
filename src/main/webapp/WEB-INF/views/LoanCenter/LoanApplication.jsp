<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<script>	
	function doCheck() {
		
		// 약관 모두 동의여부
		if($("input:checkbox[name=checkTerms]:checked").length < 4) {
			alert("약관동의가 완료되었습니다");
			$("input:checkbox[name=checkTerms]").focus();
			return false
		}
	}
	
	function doCheck2() {	
		if($("input:checkbox[name=lastCheck]:checked").length < 1) {
			alert("상품 이해여부 확인이 완료되었습니다");
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
      window.open("pManual2.jsp", "chkForm",
            "width=1000, height=700, resizable = yes, scrollbars = no, ");
   }
   
   function doAction() {
      var password = document.LoanApplicationForm.accountPW.value;
      if (password.length < 4) {
         alert("4자리의 비밀번호를 입력해주세요");
         document.LoanApplicationForm.accountPW.focus();
         return false;
      }
      
      var Apassword = document.LoanApplicationForm.pwWithdraw.value;
      if (Apassword.length < 4) {
         alert("4자리의 비밀번호를 입력해주세요");
         document.LoanApplicationForm.pwWithdraw.focus();
         return false;
       }
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
<%@ include file = "../header.jsp" %>
   <main id="main">
      <!-- ======= Breadcrumbs ======= -->
         <section class="section section-bredcrumbs">
           <div class="container context-dark breadcrumb-wrapper">
             <h2>신규대출</h2>
           </div>
         </section>
         <!-- Breadcrumbs end -->
       
      <br><section class="section section-lg bg-default">
         <div class="container">
              <h3>신규대출</h3>
                <hr><br>
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
                  
                                 <!-- ======= Table with outer spacing ======= -->
                                 <form action="LoanApplicationAction.do" name="LoanApplicationForm" method="POST" onsubmit="return doAction();">
                                    <div class="table-responsive">
                                           <h4><b>가입 신청서</b></h4>
                                           <input type="hidden" name="d_name" value="${vo.d_name}">
                                           <input type="hidden" name="d_rate" value="${vo.d_interest_rate}">
                                            <table class="table table-lg">
                                               <colgroup>
                                                  <col style="width: 25%;">
                                                   <col style="width: 75%;">
                                                </colgroup>
                                                <tbody>
                                                    <tr>
                                                        <td class="text-bold-500">대출기간</td>
                                                        <td>
                                                           <select name="d_month" lengthtype="length">
                                                              <c:forEach var="i" begin="${vo.d_min_date}" end="${vo.d_max_date}">
                                                            <option value="${i*12}">${i}</option>
                                                      </c:forEach>
                                                   </select>
                                                           년
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-bold-500">대출금리</td>
                                                        <td>${vo.d_interest_rate}%</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-bold-500">대출금액</td>
                                                        <td>
                                                           <select name="d_amount" lengthtype="length">
                                                              <c:forEach var="i"  begin="${vo.d_min_price}" end="${vo.d_max_price}">
                                                          <option value="${i*100000000}">${i}</option>
                                                       </c:forEach>
                                                   </select>
                                                   억원
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-bold-500">상환방법</td>
                                                        <td>
                                                           <select name="d_repay" lengthtype="length">
                                                       <option value="만기일시">만기일시상환방식</option>
                                                       <option value="원금균등분할">원금균등분할상환방식</option>
                                                   </select>
                                                        </td>
                                                    </tr>
                                                   <tr>
                                                       <td>출금 계좌번호</td>
                                                       <td>
                                                   <select name="d_auto_account" lengthtype="length">
                                                   		 <option>선택해주세요</option>
                                                       <c:forEach var="list" items="${list}">
                                                          <option value="${list.account}">${list.account}</option>
                                                       </c:forEach>
                                                   </select>
                                                </td>
                                                    </tr>
                                                    <tr>
                                                       <td>출금계좌<br>비밀번호</td>
                                                       <td>
                                                   <div id="withdraw">
                                                      <input name="pwWithdraw" id="pwWithdraw" type="password" maxlength="4" onkeyup="JavaScript:numberComma3(this);">
                                                   </div>
                                                </td>
                                                    </tr>
                                                    <tr>
                                                       <td class="text-bold-500">자동이체<br>신청 여부</td>
                                                        <td>
                                                            <select id="autoCheck" name="autoCheck" lengthtype="length" onchange="setDisplay()">
                                                      <option value="yes" selected>신청</option>
                                                      <option value="no" >미신청</option>
                                                   </select>
                                                   <script type="text/javascript">
                                                   $("#autoCheck").change(function () {
                                                      var value = $("#autoCheck option:selected").val();
                                                      if(value == "yes"){
                                                          $("#content1").css("display","inline");
                                                      }else{
                                                         $("#content1").css("display","none");
                                                         $("#d_auto_date").val("0").prop("selected", true);
                                                      }
                                                   });
                                                   </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                       <td>자동이체<br>출금 일자</td>
                                                       <td>
                                                          <div id="content1">
                                                             <select id="d_auto_date" name="d_auto_date" lengthtype="length">
                                                                <option value="0">선택하세요.</option>
                                                                 <c:forEach var="i" begin="1" end="31">
                                                             <option value="${i}">${i}</option>
                                                          </c:forEach>
                                                      </select>
                                                      일
                                                   </div>
                                                       </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- Table with outer spacing end -->
                           
                                    
                                    <br><br>
                                    
                                    <div onchange="doCheck()">
                                           <%-- 약관 동의 --%>
                                       <br>
                                       <h5 class="textarea-head-mid">약관동의 및 금리확인</h5>
                                       <p class="textarea-head-ex">상품가입 등 금융거래를 위하여 관련 법률과 규정에 따라
                                          동의 및 확인이 필요합니다.</p>
                                       <table class="table table-bordered" id="content-table2">
                                          <tr class="table-highlight" id="tr-head">
                                             <th colspan="2" style="text-align: center">대출약관</th>
                                          </tr>
                                          <tr style="text-align: center; vertical-align: middle;">
                                             <td>대출 약관 전체 동의</td>
                                             <td><label><input type="checkbox"
                                                   name="allCheck" onclick="allChk()" id="allCheck">
                                                   전체동의</label></td>
                                          </tr>
                                          <tr style="text-align: center; vertical-align: middle;">
                                             <td>은행여신거래기본 약관</td>
                                             <td><label><input type="checkbox"
                                                   id="checkTerms" name="checkTerms"> 약관동의</label></td>
                                          </tr>
                                       </table>
                                    </div>
                                    
                                    <div onchange="doCheck2()">
                                       <%-- button --%>
                                       <div class="btn-area">
                                          <div class="btn-wrap" style="margin-left:100px">
                                             <jsp:include page="/WEB-INF/include/pManual2.jsp" />
                                             <jsp:include page="/WEB-INF/include/noticeRate2.jsp" />
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
                                    </div>
                                    
                                    <br>
                                    
                                    <div>
                                       <table class="table table-hover" id="content-table">
                                          <tr>
                                             <th class="name">예금주명</th>
                                             <td><input class="input--style-5" id="name" name="name"
                                                disabled value=${name}></td>
                                             <td><input type="hidden" id="id" name="id"
                                                value=${id}>
                                          </tr>
                                          <tr>
                                             <th class="bankNM">은행명</th>
                                             <td><input class="input--style-5" name="bankNM"
                                                value="KOS뱅크" disabled></td>
                                          </tr>
                                          <tr>
                                             <th class="accountType">통장종류</th>
                                             <td><select name="accountType">
                                                   <option value="대출">대출</option>
                                             </select></td>
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
                                       
                                    <br><br><br>
                              
                                      </form>
                              </div>
                           </div>
                        </div>
                     </div>
                  </section>
               </div>
            </div>
         </div>
      </section>
   </main>

<%@ include file = "../footer.jsp" %>
</body>
</html>