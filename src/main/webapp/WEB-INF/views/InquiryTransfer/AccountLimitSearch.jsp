<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../setting.jsp" %>

  <tr >
    <td>금일 일일한도</td>
    <td><fmt:formatNumber pattern="#,###" value="${ vo.accountLimit}"/></td>
  </tr>
  
 <tr >
    <td>금일 일회한도</td>
   <td><fmt:formatNumber pattern="#,###" value="${vo.oneLimit}"/></td>
  </tr>
 <tr >
    <td>초기 일일한도</td>
    <td><fmt:formatNumber pattern="#,###" value="${vo.reset_accountLimit}"/></td>
  </tr>
  
 <tr >
    <td>초기 일회한도</td>
   <td><fmt:formatNumber pattern="#,###" value="${vo.reset_oneLimit}"/></td>
  </tr>