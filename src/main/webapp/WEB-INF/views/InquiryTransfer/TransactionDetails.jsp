<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
  <head>
    <title>Home</title>
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
  </head>

     <script type="text/javascript">
    function btnClick(){

	      // _jsonInfo -> '컨트롤러'/basic5_next -> data -> <div id="json_result">에 결과를 뿌린다.
	      $.ajax({
	         url: 'TransactionDetails_Table.do?${_csrf.parameterName}=${_csrf.token}',  // '컨트롤러'/매핑주소
	         type: 'POST',
	         data: {
	        	 view_AccountNum: $("#view_AccountNum").val(),
	        	 start_date: $("#start_date").val(),
	        	 end_date: $("#end_date").val(),
	        	 View_Content: $('input[name="View_Content"]:checked').val()
	         },
	         success: function(data) {
	            $('#Tran_result').html(data);
	         },
	         error: function() {
	            alert('오류');
	         }
	      });
    }
    </script>
    
<script>
	document.getElementById('date').value= new Date().toISOString().slice(0, 7);
</script>


  <style>
	#Transaction_table{
		width:1170px;
	}
	#simple_button{
		width: 50px; height: 30px;
		
		border:1px solid #D3D3D3; text-align: center; vertical-align:middle;
	}
	#td_head{
		font-weight: 800;
		width: 370px;
	}
	#td_body{
		width: 800px;
	}
	
	#td_head1{
		font-weight: 800;
		width: 170px;
	}
	#td_body1{
		width: 1000px;
	}
	
  </style>

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
          <h2>거래내역조회</h2>
        </div>
      </section>
       <section class="section section-lg bg-default">
        <div class="container">
         
              	 <form action="TransactionDetails_Table.do" method="post" name="TD_From" style="text-align: center;">
              	 	<h6>거래내역조회</h6>
		          <div style="background-color: #435ebe; color:#fff; width:1170px; height:2px;"> </div>
		          <br>
	                <table class="table-custom table-custom-bordered" id="Transaction_table">
	                  	<tr>
	                      <td id="td_head1">조회계좌번호</td>
	                      <td id="td_body1">
	                      	<select id="view_AccountNum" name="view_AccountNum">
	                      		<option value="" selected>--선택 --</option>
	                      		<c:forEach var="accList" items="${accList }">
	                      		<option value="${accList}">${accList}</option>
	                      		</c:forEach>
	                      	</select>
	                      </td>
			                  
	                    </tr>
	                    <tr>
	                     <td id="td_head1">조회기간</td>
	                      <td id="td_body1">
					          <input type="date" class="form-control" id="start_date"  style="width:150px; display: inline; text-align: center;"> ~
					          <input type="date" class="form-control" id="end_date"  style="width:150px; display: inline; text-align: center;">
	                      </td>
	                    </tr>
	                    <tr>
	                   <td id="td_head1">조회내용</td>
	                      <td id="td_body1">
							<input type="radio" name="View_Content" value="All_List" checked>전체내역 &nbsp;
							<input type="radio" name="View_Content" value="Deposit_List" >입금내역 &nbsp;
							<input type="radio" name="View_Content" value="Withdrawal_List" >출금내역
                     	</td>
	                    </tr>
	                    <tr>
	                      <td  id="td_body1" colspan="2" style="text-align: center;">
	                      <input id ="btn" onclick="btnClick()" type="button"  class="button button-round" style= "padding:10px 25px; width:90px; height:40px; font-size:15px; text-align:center; background-color:#fff; display: inline;" value="조회"> &nbsp;&nbsp;  
	                      		<!-- <button id ="btn" type="button"  class="button button-round" style= "padding:10px 25px; width:90px; height:40px; font-size:15px; text-align:center; background-color:#fff; display: inline;">조회</button> &nbsp;&nbsp;   -->
                      	<div class="button button-round" style="padding:10px 30px; width:90px; height:40px; font-size:15px; text-align:center; background-color:#435ebe; color:#fff; display: inline;" onclick="location.href='AccountTransfer.cc'">이체</div>
	                      </td>
	                    </tr>
	                </table>
	               
	                
                </form>
                
                <div id="Tran_result">
                
                </div>
          </div>
          </section>
           <%@include file="../footer.jsp" %>
      </div>
      
  </body>
</html>