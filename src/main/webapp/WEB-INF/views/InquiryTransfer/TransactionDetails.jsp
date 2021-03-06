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
    function btnClick(pageNum){
    		
    		$(function(){
    			var startDate = $('#start_date').val();
	   	         var endDate = $('#end_date').val();
	   	         //-을 구분자로 연,월,일로 잘라내어 배열로 반환
	   	         var startArray = startDate.split('-');
	   	         var endArray = endDate.split('-');   
	   	         //배열에 담겨있는 연,월,일을 사용해서 Date 객체 생성
	   	         var start_date = new Date(startArray[0], startArray[1], startArray[2]);
	   	         var end_date = new Date(endArray[0], endArray[1], endArray[2]);
	   	          //날짜를 숫자형태의 날짜 정보로 변환하여 비교한다.
	   	         if(start_date.getTime() > end_date.getTime()) {
	   	             alert("종료날짜보다 시작날짜가 작아야합니다.");
	   	             return false;
   	         	}
	   	              
	   	   // _jsonInfo -> '컨트롤러'/basic5_next -> data -> <div id="json_result">에 결과를 뿌린다.
	   	      $.ajax({
	   	         url: 'TransactionDetails_Table.do?${_csrf.parameterName}=${_csrf.token}',  // '컨트롤러'/매핑주소
	   	         type: 'POST',
	   	         data: {
	   	        	 view_AccountNum: $("#view_AccountNum").val(),
	   	        	 start_date: $("#start_date").val(),
	   	        	 end_date: $("#end_date").val(),
	   	        	 pageNum: pageNum
	   	         },
	   	         success: function(data) {
	   	            $('#Tran_result').html(data);
	   	         },
	   	         error: function() {
	   	            alert('오류');
	   	         }
	   	      });      
    		});
	         
    		
    	

	      
    }
    
  //인풋데이트 설정
	document.getElementById('start_date').value= new Date().toISOString().slice(0, 7);
	document.getElementById('end_date').value= new Date().toISOString().slice(0, 7);
	
	
	
	
    
    </script>
    
<script>
	
	
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
         
              	 <form action="TransactionDetails_Table.do" id="form" method="post" name="TD_From" style="text-align: center;">
              	 <input type="hidden" id="view_AccountNum" value="${param.account}">
              	 	<h6>거래내역조회</h6>
		          <div style="background-color: #435ebe; color:#fff; width:1170px; height:2px;"> </div>
		          <br>
	                <table class="table-custom table-custom-bordered" id="Transaction_table">
	                  	<tr>
	                      <td id="td_head1">조회계좌번호</td>
	                      <td id="td_body1">
	                      	${param.account }
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
	                      <td  id="td_body1" colspan="2" style="text-align: center;">
	                      
	                      	<input id ="btn" onclick="btnClick()" type="button"  class="button button-round" style= "padding:10px 25px; width:90px; height:40px; font-size:15px; text-align:center; background-color:#fff; display: inline;" value="조회"> &nbsp;&nbsp;
	                      
	                      		<!-- <button id ="btn" type="button"  class="button button-round" style= "padding:10px 25px; width:90px; height:40px; font-size:15px; text-align:center; background-color:#fff; display: inline;">조회</button> &nbsp;&nbsp;   -->
	                      		<c:if test="${param.state eq '정상' }">
		                      	<div class="button button-round" style="padding:10px 30px; width:90px; height:40px; font-size:15px; text-align:center; background-color:#435ebe; color:#fff; display: inline;" onclick="location.href='AccountTransfer.cc'">이체</div>
		                      	</c:if>  
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