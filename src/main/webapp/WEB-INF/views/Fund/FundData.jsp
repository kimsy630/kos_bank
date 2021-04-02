
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	
   <!-- 펀드 데이터 -->
   <c:forEach var="vo" items="${list}">
	   
	   <div class="col-md-4">
	     <article class="post-classic-2">
	     	<a class="media-wrapper" href="FundDetail.cc?f_num=${vo.f_num}"><img src="resources/images/${vo.f_filename}" width="370" height="240"/></a>
	    	
	        <div class="post-meta-main">
		        <div class="post-meta-item">
		        	<p class="post-title"><a href="FundDetail.cc?f_num=${vo.f_num}"><font color='black' size='4px' style="font-weight:600">${vo.f_title}</font></a></p>
		        </div>
		       
		         <div class="post-meta-item">
		           <ul class="list-tags">
		             <li><a class="tag"><font size='2px' color='white' style="font-weight:500">${vo.f_category}</font></a>
		             </li>
		           </ul>
		         </div>
		         <div class="post-meta-item">
		           <div class="post-author"><span>by&nbsp;&nbsp;</span><font size='3px' color='gray' style="font-weight:500">${vo.f_name}</font>
		           </div>
		         </div>
		       </div>
		       <p class="post-exeption" style="line-height:1em"><strong>펀딩기간: ${vo.f_start_date}~${vo.f_end_date}</strong>
		       		<progress value='70' max='100' style="width:100% ;"> </progress>
		       		<font size='4px' color='blue' style="font-weight:700">75%</font>
		       		<font size='3px' color='gray' style="font-weight:500">&nbsp;·&nbsp;<fmt:formatNumber value="${vo.f_target_money}" pattern="#,###"/>원</font>
		       </p>
		       <p>&nbsp;</p>
	  		   <p>&nbsp;</p>
	     </article>
	   </div>
	   
   </c:forEach>
            
