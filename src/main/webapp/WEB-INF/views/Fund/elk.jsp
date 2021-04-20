
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>



<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<title>펀드</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
	function ss(){
	}
</script>
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
	          <h2>운용사별 펀드 정보</h2>
	          <br>
	        </div>
	     </section>
    	<iframe src="http://192.168.50.58:5601/app/kibana#/dashboard/b1885ff0-99e4-11eb-b949-331407b6d08d?embed=true&_g=()&_a=(description:'',filters:!(),fullScreenMode:!f,options:(darkTheme:!f,hidePanelTitles:!f,useMargins:!t),panels:!((embeddableConfig:(),gridData:(h:22,i:'1',w:34,x:14,y:53),id:'9a243e90-99e1-11eb-b949-331407b6d08d',panelIndex:'1',type:visualization,version:'6.8.15'),(embeddableConfig:(),gridData:(h:23,i:'2',w:20,x:28,y:0),id:bc78f5e0-99e0-11eb-b949-331407b6d08d,panelIndex:'2',type:visualization,version:'6.8.15'),(embeddableConfig:(),gridData:(h:23,i:'3',w:28,x:0,y:0),id:f3c944f0-99e0-11eb-b949-331407b6d08d,panelIndex:'3',type:visualization,version:'6.8.15'),(embeddableConfig:(),gridData:(h:30,i:'4',w:48,x:0,y:23),id:'1957ae00-99e1-11eb-b949-331407b6d08d',panelIndex:'4',type:visualization,version:'6.8.15'),(embeddableConfig:(),gridData:(h:22,i:'5',w:14,x:0,y:53),id:'07f6f370-99e4-11eb-b949-331407b6d08d',panelIndex:'5',type:visualization,version:'6.8.15')),query:(language:lucene,query:''),timeRestore:!f,title:%ED%8E%80%EB%93%9C%EC%A0%95%EB%B3%B4,viewMode:view)" height="2300" width="100%"  ></iframe>
    	<%@ include file="../footer.jsp" %>
    </div>
  </body>
</html>
