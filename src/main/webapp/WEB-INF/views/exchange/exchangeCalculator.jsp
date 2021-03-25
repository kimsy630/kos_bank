<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	var money=0;
	
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
	   	<%@ include file ="../header.jsp" %>
	   	<section class="section section-bredcrumbs">
	        <div class="container context-dark breadcrumb-wrapper">
	          <h3>환율계산기</h3>
	        </div>
	    </section>
	    <div class="container" style="height: 400px">
          <div class="row row-condensed row-offset-3">
            <div class="col-8">
              <div class="grid-demonstration-item">
              	<table class="table-custom table-custom-secondary table-custom-hovered">
              		<tr onclick="">
              			<th>환전기준</th>
              			<td>
              				<input type="radio" name="currency" value="currency" id="currency" checked>
              				<label for="currency">외화기준</label>
              				<input type="radio" name="currency" value="won" id="won">
              				<label for="won">원화기준</label>
              			</td>
              		</tr>
              		<tr>
              			<th>환전금액</th>
              			<td>
              				<input type="text" name="money">
              			</td>
              		</tr>
              		
              		<tr>
              			<td colspan="2" style="text-align: center;">
							<input type="button" value="계산하기" class="button button-sm button-primary" 
							 onclick="">
              			</td>
              		</tr>
              	</table>
              	 <!-- <div style="display: none;"> -->
            <div>
            	<table class="table-custom table-custom-secondary table-custom-hovered"  >
              		<tr>
              			<th>
              				환전 결과
              			</th>
              			<td colspan="3">
              				72,424,213,412 KRW입니다.
              			</td>
              		</tr>
              		<tr>
              			<th>통화</th>
              			<th>외화금액</th>
              			<th>외원금액</th>
              			<th>적용환율</th>
              		</tr>
              		
              		<tr>
              			<td>USD</td>
              			<td>63,686,131.00</td>
              			<td>72,424,213,412</td>
              			<td>1,142.14</td>
              		</tr>
             	</table>
            </div>
              </div>
            </div>
            <div class="col-4">
            <table class="table-custom table-custom-secondary table-custom-hovered"  >
              		<tr>
              			<td colspan="2">
		              		<input type="radio" name="changeType" value="buy" id="buy" checked>
		       				<label for="buy">사실때</label>
		       				<input type="radio" name="changeType" value="sell" id="sell">
		       				<label for="sell">파실때</label>
              			</td>
              		</tr>
             </table>
           
              <div class="grid-demonstration-item" style="overflow:auto;  height:300px;">
              	
              	<table class="table-custom table-custom-secondary table-custom-hovered">
              		<tr onclick="">
              			<td>미국 달러</td>
              			<td>USD</td>
              		</tr>
              		
              		<tr>
              			<td>일본 엔화</td>
              			<td>JPY</td>
              		</tr>
              		
              		<tr>
              			<td>유럽 유로</td>
              			<td>EUR</td>
              		</tr>
              		
              		
              		<tr>
              			<td>호주 달러</td>
              			<td>AUD</td>
              		</tr>
              		
              		<tr>
              			<td>바레인 디나르</td>
              			<td>BHD</td>
              		</tr>
              		
              		<tr>
              			<td>캐나다 달러</td>
              			<td>CAD</td>
              		</tr>
              		<tr>
              			<td>스위스 프랑</td>
              			<td>CHF</td>
              		</tr>
              	</table>
              </div>
            </div>
          </div>
        </div>
	   	<%@ include file ="../footer.jsp" %>
    </div>
</body>
</html>

