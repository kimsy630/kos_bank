<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script src="/teamProject/resources/js/request.js"></script>
<script type="text/javascript">

</script>
<%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
 --%>			    	
</head>
<body onload="tdClick('중국')">
<%-- <jsp:forward page="exchangeCalculatorData.jsp"/> --%>
    <div class="preloader">
      <div class="preloader-body">
        <div class="cssload-container">
          <div class="cssload-speeding-wheel"></div>
        </div>
        <p>Loading...</p>
      </div>
    </div>
    <div class="page">
	   	<%@ include file ="../header.jsp" %>
	   	<form action="" method="post">
		   	<section class="section section-bredcrumbs">
		        <div class="container context-dark breadcrumb-wrapper">
		          <h3>환율계산기</h3>
		          <div id="test"></div>
		        </div>
		    </section>
		    <div class="container" style="height: 400px">
	          <div class="row row-condensed row-offset-3">
	            <div class="col-8" id="calculator"> </div> <!--계산기 뜰위치  -->
	            <div class="col-4">
	            <!-- <table class="table-custom table-custom-secondary table-custom-hovered"  >
	              		<tr>
	              			<td colspan="2">
			              		<input type="radio" name="changeType" value="buy" id="buy" checked>
			       				<label for="buy">사실때</label>
			       				<input type="radio" name="changeType" value="sell" id="sell">
			       				<label for="sell">파실때</label>
	              			</td>
	              		</tr>
	             </table> -->
	           	<br>
	           	<h4>외화 선택</h4>
	              <div class="grid-demonstration-item" style="overflow:auto;  height:300px;">
	              	<table id="exchangeTable"class="table-custom table-custom-secondary table-custom-hovered">
	              		<c:forEach var="vo" items="${list}">
	                  	<tr>
	                  		<td id="${vo.country_name}">${vo.country_name}</td>
	                  		<%-- <c:if test="${vo.country_name !=ex.country_name}">
	               				<td id="${vo.country_name}">${vo.country_name}</td>
	               			</c:if>
	                  		<c:if test="${vo.country_name ==ex.country_name}">
	               				<td style="background-color:#eeeeee;" id="${vo.country_name}">${vo.country_name}</td>
	               			</c:if> --%>
	                  	</tr>
	                  </c:forEach>
	              	</table>
	              	<script type="text/javascript">
	              	var country_name = '중국';
	              	function tdClick(link){
	              		$("#"+country_name+"").css("background-color","#ffffff")
	              		$("#"+link+"").css("background-color","#eeeeee");
	              		country_name=link;
	              		/*"changeType":$("input[name=changeType]:checked").val(),  */
	              		var data = {"country_name" : country_name,
	              				
	              				"${_csrf.parameterName}":"${_csrf.token}"};
	              		$.ajax({
	              			url:"exchangeCalculatorData.cc", 
	              			type:'POST',
	              			data : data,
	              			success:function(result){
	              				$("#calculator").html(result);
	              			},
	              			error:function(){
	              				alert("오류");
	              			}
	              		});
	              	}
		              	$("#exchangeTable tr").click(function(){
		                    var str = ""
		                    var tdArr = new Array();
		                    var tr = $(this);
		                    var td = tr.children();
		                    tdClick(td.text());
		              	});
		              	$("input[name=changeType]").click(function(){
		              		tdClick(country_name);
		              	});
		            </script>
	              	
	              </div>
	            </div>
	          </div>
	        </div>
        
	   	</form>
	   	<%@ include file ="../footer.jsp" %>
    </div>
</body>
</html>

