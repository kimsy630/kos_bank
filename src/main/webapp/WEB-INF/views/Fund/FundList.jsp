
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
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
    	<script type="text/javascript">
           	window.onload = function() {
           		tdClick('전체');
          	}
    	</script>
    	<section class="section section-bredcrumbs">
	        <div class="container context-dark breadcrumb-wrapper">
	          <h2>펀드 리스트</h2>
	          <br>
	        </div>
	     </section>
			<main id="FundList.cc" class="FundList.cc">
			    <div class="container">
			    <br> <br> 
				
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				<div class="tabs-custom tabs-horizontal tabs-line" id="tabs-1">
		           <ul class="nav nav-tabs">
		             <li class="nav-item" role="presentation"><a class="nav-link active" href="#tabs-1-1" data-toggle="tab" onclick="tdClick('전체')">
		             	<div><img src="resources/images/f_category_all.jpg"/></div><div>전체</div></a>
		             </li>
		             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-2" data-toggle="tab" onclick="tdClick('테크·가전')">
		             	<div><img src="resources/images/f_category_tech.jpg"/></div><div>테크·가전</div></a>
		             </li>
		             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-3" data-toggle="tab" onclick="tdClick('패션·잡화')">
		             	<div><img src="resources/images/f_category_fashion.jpg"/></div><div>패션·잡화</div></a>
		             </li>
		             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-4" data-toggle="tab" onclick="tdClick('뷰티')">
		             	<div><img src="resources/images/f_category_beauty.jpg"/></div><div>뷰티</div></a>
		             </li>
		             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-5" data-toggle="tab" onclick="tdClick('푸드')">
		             	<div><img src="resources/images/f_category_food.jpg"/></div><div>푸드</div></a>
		             </li>
		             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-6" data-toggle="tab" onclick="tdClick('홈리빙')">
		             	<div><img src="resources/images/f_category_home.jpg"/></div><div>홈리빙</div></a>
		             </li>
		             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-7" data-toggle="tab" onclick="tdClick('디자인·소품')">
		             	<div><img src="resources/images/f_category_design.jpg"/></div><div>디자인·소품</div></a>
		             </li>
		             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-8" data-toggle="tab" onclick="tdClick('여행·레저')">
		             	<div><img src="resources/images/f_category_trip.jpg"/></div><div>여행·레저</div></a>
		             </li>
		             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-9" data-toggle="tab" onclick="tdClick('스포츠·모빌리티')">
		             	<div><img src="resources/images/f_category_sports.jpg"/></div><div>스포츠·모빌리티</div></a>
		             </li>
		             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-10" data-toggle="tab" onclick="tdClick('반려동물')">
		             	<div><img src="resources/images/f_category_pet.jpg"/></div><div>반려동물</div></a>
		             </li>
		             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-11" data-toggle="tab" onclick="tdClick('게임·취미')">
		            	<div><img src="resources/images/f_category_game.jpg"/></div><div>게임·취미</div></a>
		             </li>
		             <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-12" data-toggle="tab" onclick="tdClick('기타')">
		             	<div><img src="resources/images/f_category_etc.jpg"/></div><div>기타</div></a>
		             </li>
		           </ul>
	           </div>
			<section class="section section-lg">
		        <div class="container">
	           		<div id="FundData"  class="row row-40"></div>
		        </div>
           </section>
	           <script type="text/javascript">
              	var f_category = '전체';
              	function tdClick(f_category){
              		/*"changeType":$("input[name=changeType]:checked").val(),  */
              		var data = {"f_category" : f_category,
              				"${_csrf.parameterName}":"${_csrf.token}"};
              		$.ajax({
              			url:"FundData.cc", 
              			type:'POST',
              			data : data,
              			success:function(result){
              				$("#FundData").html(result);
              			},
              			error:function(){
              				alert("ajax 화면 전환 오류");
              			}
              		});
              	}
	              	
	            </script>
		    	
				
			</div>
			</main>
                
				
		    <br> <br> <br> <br>
    	<%@ include file="../footer.jsp" %>
    </div>
  </body>
</html>
