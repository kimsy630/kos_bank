
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
%>
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
    	<section class="section section-bredcrumbs">
	        <div class="container context-dark breadcrumb-wrapper">
	          <h2>펀드 상세정보</h2>
	          <br>
	        </div>
	     </section>
			<main id="FundDetail.cc" class="FundDetail.cc">
			    <div class="container">
			    <br> <br> <br> <br> <br> <br> <br>
				
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				<c:forEach var="fund" items="${list_content}">
				<script>
			      var f_num = ${fund.f_num}
		      	</script>
			      <section class="section section-md">
			        <div class="container text-left">
			          <h2 class="custom-title" align="center"><span>${fund.f_title}</span></h2>
			          <div class="row row-30" data-lightgallery="group">
			          	<!-- 좌 -->
			            <div class="col-sm-8 wow fadeInUp">
			            	<img src="resources/images/${fund.f_filename}" alt="" width="800" height="500"/></div>
		            	<!-- 우 -->
			            <div class="col-sm-4 wow fadeInUp">
			            	<p>&nbsp;</p>
			            	<p>
			            		<font size='3px' color='black' style="font-weight:500; font-family:휴먼모음T">펀딩 기간:</font>
			            		<font size='4px' color='black' style="font-weight:700; font-family:휴먼모음T">${fund.f_start_date}&nbsp;~&nbsp;${fund.f_end_date}</font>
			            	</p>
			            	<p style="line-height:1em">
			            		<progress value='70' max='100' style="width:100% ;"> </progress>
			            		<font size='3px' color='black' style="font-weight:500; font-family:휴먼모음T">달성도:</font>
			            		<font size='4px' color='black' style="font-weight:700; font-family:휴먼모음T">&nbsp;&nbsp;${f_money/fund.f_target_money*100} %</font>
			            	</p>
			            	<p>
			            		<font size='3px' color='black' style="font-weight:500; font-family:휴먼모음T">목표 금액:</font>
			            		<font size='4px' color='black' style="font-weight:700; font-family:휴먼모음T"><fmt:formatNumber value="${fund.f_target_money}" pattern="#,###"/>원</font>
			            	</p>
			            	<p>
			            		<font size='3px' color='black' style="font-weight:500; font-family:휴먼모음T">펀딩 금액:</font>
			            		<font size='4px' color='black' style="font-weight:700; font-family:휴먼모음T">${f_money}</font>
			            	</p>
			            	<p>
			            		<font size='3px' color='black' style="font-weight:500; font-family:휴먼모음T">참가자:</font>
			            		<font size='4px' color='black' style="font-weight:700; font-family:휴먼모음T">&nbsp;&nbsp;${investor_count}</font>
			            	</p>
			            	<p>&nbsp;</p>
			            	<p>&nbsp;</p>
			            	<p><a class="button button-lg button-primary" href="FundBuy.cc?f_num=${fund.f_num}" style="width:100% ;">펀딩하기</a></p>
			            </div>
			            
			          </div>
			        </div>
			      </section>
			      
			      <section class="section section-sm bg-primary-gradient">
			        <div class="container text-center text-lg-left">
			          <div class="row row-30 justify-content-center">
			            <div class="col-sm-6 col-lg-3">
			              <div class="counter-minimal">
			                <div class="counter-wrap">
			                  <div class="counter heading-2">${f_money}</div>
			                  <div class="heading-3">원</div>
			                </div>
			                <div class="title heading-5">펀딩 금액</div>
			              </div>
			            </div>
			            <div class="col-sm-6 col-lg-3">
			              <div class="counter-minimal">
			                <div class="counter-wrap">
			                  <div class="counter heading-2">${investor_count}</div>
			                  <div class="heading-3">명</div>
			                </div>
			                <div class="title heading-5">펀딩 인원</div>
			              </div>
			            </div>
			            <div class="col-sm-6 col-lg-3">
			              <div class="counter-minimal">
			                <div class="counter-wrap">
			                  <div class="counter heading-2">${comment_count}</div>
			                </div>
			                <div class="title heading-5">댓글 수</div>
			              </div>
			            </div>
			            <div class="col-sm-6 col-lg-3">
			              <div class="counter-minimal">
			                <div class="counter-wrap">
			                  <div class="counter heading-2">${d_day}</div>
			                </div>
			                <div class="title heading-5">남은 일수</div>
			              </div>
			            </div>
			          </div>
			        </div>
			      </section>
			      
			      <section class="section section-md bg-primary-dark">
			        <div class="container text-center">
			          <h2 class="custom-title"><span>${fund.f_content}</span></h2>
			          <div class="row row-30">
			            <div class="col-sm-12 col-md-12 col-lg-12 wow fadeIn"><img src="resources/images/${fund.f_filename}" width="800" height="500"/></a></div>
			      
			          </div>
			        </div>
			      </section>
			      
			      <section class="section section-md section-bottom-0 bg-gray-100">
			        <div class="container text-center wow fadeIn">
			          <h2 class="custom-title"><span>Register</span></h2>
			          <div class="row row-offset-4">
			            <div class="col-12">
			            	<p>&nbsp;</p>
			            	<p>&nbsp;</p>
			            	<p>
			            		<font size='3px' color='black' style="font-weight:500; font-family:휴먼모음T">등록자명:</font>
			            		<font size='4px' color='black' style="font-weight:700; font-family:휴먼모음T">${fund.f_name}</font>
			            	</p>
			            	<p>
			            		<font size='3px' color='black' style="font-weight:500; font-family:휴먼모음T">연락처:&nbsp;</font>
			            		<font size='4px' color='black' style="font-weight:700; font-family:휴먼모음T">${fund.f_phone}</font>
			            	</p>
			            	<p>
			            		<font size='3px' color='black' style="font-weight:500; font-family:휴먼모음T">이메일:&nbsp;</font>
			            		<font size='4px' color='black' style="font-weight:700; font-family:휴먼모음T">${fund.f_Email}</font>
			            	</p>
			            	<p>&nbsp;</p>
			            	<p>&nbsp;</p>
			            	
			            </div>
			          </div>
			        </div>
			      </section>
				</c:forEach>
				<p>&nbsp;</p>
			      <h3>댓글</h3>
				<c:forEach var="comment" items="${list_comment}">
				<p>&nbsp;</p>
			      <section class="section">
			        <div class="container text-center text-xl-left wow fadeIn">
			          <div class="row row-fix justify-content-center align-items-end">
			            
			            <div class="col-md-10 col-xl-8" align="center">
			            	<div class="post-item">
			                  <ul class="comment-list">
			                    <li>
			                      <div class="box-comment">
			                        <div class="box-comment-body">
			                          <div class="title">
			                          		${comment.c_name}&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<strong>${comment.c_title}</strong>
			                          </div>
			                          <div class="date">
			                          		${comment.c_date}&emsp;&emsp;&emsp;&nbsp;<font color="black">${comment.c_content}</font>
			                          </div>
			                          <div class="comment"></div>
			                        </div>
			                      </div>
			                    </li>
			                  </ul>
			                </div>
			            </div>
			          </div>
			        </div>
			      </section>
			      
			    </c:forEach>
			    
				<form class="form" action="FundCommentWriteAction.cc" method="post" role="form">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				<input type="hidden" name="f_num" value="${f_num}">
					<div class="table-custom-responsive" align="center">
						<table class="table-custom table-custom-secondary table-custom-hovered">
		                  		<thead>
		                  			<tr>
		                  				<th width="15%">댓글 작성</th>
		                  				<th width="85%">&nbsp;</th>
		                  				<th width="10%">&nbsp;</th>
		                  				<th width="20%">&nbsp;</th>
		                  			</tr>
		                  		</thead>
								<tbody>
									<tr>
										<td>작성일:</td>
										<td>												
											<%= sf.format(nowTime) %>
										</td>
									</tr>
									<tr>
										<td>닉네임:</td>
										<td>												
											<input type="text" class="form-control" id="c_name" name="c_name" placeholder="닉네임을 입력하세요." maxlength="200">
										</td>
										
									</tr>
									<tr>
										<td>제목:</td>
										<td>												
											<input type="text" class="form-control" id="c_title" name="c_title" placeholder="제목을 입력하세요." maxlength="200">
										</td>
										
									</tr>
									<tr>
										<td>내용:</td>
										<td><textarea  id="c_content" name="c_content" rows="5" style="width:100%;" placeholder="내용을 입력하세요."></textarea></td>
										<td></td>
										<td></td>
									</tr>
								
								</tbody>
								
							</table>
							<button class="button button-sm button-round button-primary" type="submit">댓글작성</button> 
						</div>
		    		
					</form>
				</div>
				</main>
			    <br> <br> <br> <br> <br> <br> <br>
    	<%@ include file="../footer.jsp" %>
    </div>
  </body>
</html>
