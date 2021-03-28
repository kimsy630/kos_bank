<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script src="/teamProject/resources/js/request.js"></script>


<div class="grid-demonstration-item">
<script>
var changeType = "${ex.country_name}";
</script>
		<table class="table-custom table-custom-secondary table-custom-hovered">
			<tr>
	   			<th>환전기준</th>
	   			<td>
	   				<input type="radio" name="currency" value="buy" id="won" checked>
	   				<label for="won">원화기준</label>
	   				 <input type="radio" name="currency" value="sell" id="currency" >
	   				<label for="currency">외화기준</label>
	   			</td>
	   		</tr>
	   		<tr>
	   			<th>환전금액<span id="countryname">(한국)</span></th>
	   			<td>
	   				<input type="text" name="money" >
	   			</td>
	   		</tr>
	   		<tr>
	   			<td colspan="2" style="text-align:center;">
				<input type="button" value="계산하기" class="button button-sm button-primary" onclick="calculator()">
	   			</td>
	   		</tr>
	   	</table>
	
	<script type="text/javascript">
		
		function calculator(country_name,changeType){
			if(!$("input[name=money]").val()){
				alert("금액을 입력해주세요");
				return;
			}
			var data = {"country_name" : "${ex.country_name}",
					"money":$("input[name=money]").val(),
					"changeType":"${changeType}",
					"changeType":$("input[name=currency]:checked").val(),
					"${_csrf.parameterName}":"${_csrf.token}"};
			$.ajax({
				url:"exchangeCalculatorResult.cc", 
				type:'POST',
				data : data,
				success:function(result){
					$("#CalculatorResult").html(result);
				},
				error:function(){
					alert("오류");
				}
			});
		}

      	$("input[name=currency]").click(function(){
      		var text="(";
      		if($(this).val()=="buy"){
      			text+="한국";
      		}else{
      			text+=changeType;
      		}
      		text+=")";
			$("#countryname").html(text);
      		
      	});
    </script>
    <div id="CalculatorResult"></div>
 </div>