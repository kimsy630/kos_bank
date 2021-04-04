<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../setting.jsp" %>

  <tr >
    <td>금일 일일한도</td>
    <td>${ vo.accountLimit}</td>
  </tr>
  
 <tr >
    <td>금일 일회한도</td>
   <td>${ vo.oneLimit}</td>
  </tr>
 <tr >
    <td>일일한도</td>
    <td>${ vo.reset_accountLimit}</td>
  </tr>
  
 <tr >
    <td>일회한도</td>
   <td>${ vo.reset_oneLimit}</td>
  </tr>