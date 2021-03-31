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
          <h2>자동이체해지</h2>
        </div>
      </section>
       <section class="section section-lg bg-default">
        <div class="container">
              	 <form action="AutoTransferDeleteAction.do" method="post" name="TD_From" style="text-align: center;">
              	 	<h6>자동이체 내역</h6>
		          <div style="background-color: #435ebe; color:#fff; width:1170px; height:2px;"> </div>
		          <br>
	                     <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	                <table class="table-custom table-custom-bordered" id="Transaction_table">
	                     <c:forEach var="list" items="${list}">
	                     
		                    <tr>
			                     <td id="td_head1">
			                    	 <input type="hidden" value="${list.account}" name="account">
			                   		  자동이체번호</td>
			                      <td id="td_body1">${list.jd_key}</td>
		                    </tr>
		                    <tr>
			                     <td id="td_head1">금융기관</td>
			                      <td id="td_body1">코스뱅크</td>
		                    </tr>
		                    <tr>
			                     <td id="td_head1">출금계좌번호</td>
			                      <td id="td_body1">${list.account}</td>
		                    </tr>
		                    <tr>
			                     <td id="td_head1">청구기관명</td>
			                      <td id="td_body1">${list.jd_inPlace}</td>
		                    </tr>
		                     <tr>
			                     <td id="td_head1">이체지정일</td>
			                      <td id="td_body1">매월 ${list.jd_outDate}일</td>
		                    </tr>
		                     <tr>
			                     <td id="td_head1">자동이체 시작일</td>
			                      <td id="td_body1">${list.jd_registDate}</td>
		                    </tr>
		                     <tr>
			                     <td id="td_head1">자동이체 만료일</td>
			                      <td id="td_body1">${list.jd_expirationDate}</td>
		                    </tr>
	                    </c:forEach> 
	                </table>
	                <br><br><br>
	                <button type="submit" class="btn btn-primary" id="deleteAction">해지하기</button> 
                </form>
          </div>
          </section>
           <%@include file="../footer.jsp" %>
      </div>
      
  </body>
</html>