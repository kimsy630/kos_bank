<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>
<link rel="stylesheet" href="${path}css/signUp.css" >

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
$(function(){

	$('#id').keyup(function(){    	
		let id = $('#id').val();
	    $.ajax({
	    	url : "idChk.cc?id="+ id,
	    	type : "get",
	    	dataType : "html",
	    	success : function(data){
	    		$('#idChktab').html(data);
	    	}
	    });
    });
	$('#memberPw, #pwChk').keyup(function(){    	
		let memberPw = $('#memberPw').val();
		let pwChk = $('#pwChk').val();
	    $.ajax({
	    	url : "pwChk.do",
	    	type : "post",
	    	dataType : "html",
	    	data : "memberPw="+ memberPw + "&pwChk=" + pwChk,
	    	success : function(data){
	    		$('#pwChktab').html(data);
	    	}
	    });
    });
	
	$('form').submit(function(){
		if ($('#id').val() < 4) {
			alert('4자리 이상의 아이디를 입력하세요.');
			$('#id').focus();
			return false;
		}else if ($('#pw').val()) {
			$('#pw').focus();
			alert('비밀번호를 입력하세요');
			return false;
		}else if ($('#pwChk').val()) {

			$('#pwChk').focus();
			alert('비밀번호를 재확인을 입력하세요');
			return false;
		}else if ($('#pw').val() != $('#pwChk').val()) {
			alert('비밀번호가 일치하지 않습니다.');
			return false;
		}
	});
	
});
</script>
	
</head>
<body>
<%@include file="../header.jsp" %>
   	<section class="section section-bredcrumbs">
        <div class="container context-dark breadcrumb-wrapper">
          <h1>회원가입</h1>
        </div>
    </section>
	<form action="signUpAction.cc" method="post" class="form-signin" role="form">
	<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">
	
	<div class="container my-5" style="width: 40%; min-width:400px; float:none; margin:0 auto">
		
		<div class="form-group justify-content-center">
		 	<label for="id"><b>아이디</b></label>
		 	<input type="text" class="form-control" placeholder="ID" id="id" name="id" ><!--onchange="corfirmId()" -->
		 	<div id="idChktab"></div>
		</div>
		<div class="form-group">
		 	<label for="pw"><b>비밀번호</b></label>
		 	<input type="password" class="form-control" placeholder="Password" id="pw" name="pw">
		</div>
		<div class="form-group">
		 	<label for="pwChk"><b>비밀번호 재확인</b></label>
		 	<input type="password" class="form-control" placeholder="Password" id="pwChk" name="pwChk">
		 	<div id="pwChktab"></div>
		</div>
		<div class="form-group">
		 	<label for="name"><b>이름</b></label>
		 	<input type="text" class="form-control" placeholder="이름" id="name" name="name">
		</div>
		<div class="form-group">
			<label for="jumin"><b>주민번호</b></label>
			<input type="text" class="form-control" placeholder="000000-0000000"id="jumin" name="jumin">
		</div>
		<div class="form-group">
		 	<label for="phone"><b>전화번호</b></label>
		 	<input type="text" class="form-control" placeholder="010-0000-0000" id="phone" name="phone">
		</div>
		<div class="form-group">
		 	<label for="email"><b>이메일</b></label>
		 	<input type="email" class="form-control" placeholder="Email" id="email" name="email">
		 	<div id="emailChktab"></div>
		</div>
		<div class="form-group addr">
			<label for="post"><b>주소</b></label><br>				
	        <input type="text" id="sample4_postcode" readonly="readonly" placeholder="우편번호" name="postnum">
			<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" onclick="sample4_execDaumPostcode()" id="sample4_roadAddress" placeholder="도로명주소" readonly="readonly" class="form-control" name="address1">
			<input type="text" onclick="sample4_execDaumPostcode()" id="sample4_jibunAddress" placeholder="지번주소" readonly="readonly" class="form-control" name="address2">
			<span id="guide" style="color:#999;display:none"></span>
			<input type="text" id="sample4_detailAddress" placeholder="상세주소" class="form-control" name="address3">
			<input type="text" id="sample4_extraAddress" placeholder="참고항목" readonly="readonly" class="form-control" name="address4">
		</div>
		<div class="form-group">
		 	<label for="job"><b>직업</b></label>
		 	<input type="text" class="form-control" placeholder="직업" id="job" name="job">
		</div>
		<div class="form-group text-center">
		 	<input type="submit" value="가입하기" class="btn-dark">
		</div>
	</div>
	</form>
<%@include file="../footer.jsp" %>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
</body>
</html>