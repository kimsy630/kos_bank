<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file = "../views/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>KOS뱅크 상품설명서</title>
</head>
<body>
	<button type="button" class="btn btn-outline-info" data-toggle="modal"
		data-target="#pManual">KOS뱅크 약관안내</button>
	<div class="modal fade" id="pManual" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
				<input type="hidden" name="${_csrf.parameterName}"   value="${_csrf.token}" />
					<h4 class="modal-title" id="myModalLabel">은행여신거래기본 약관</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
					<div class="modal-body">
						<img src="${path}doc/kosbank_terms-1.png" style="width:100%; height:100%;">
						<img src="${path}doc/kosbank_terms-2.png" style="width:100%; height:100%;">
						<img src="${path}doc/kosbank_terms-3.png" style="width:100%; height:100%;">
						<img src="${path}doc/kosbank_terms-4.png" style="width:100%; height:100%;">
						<img src="${path}doc/kosbank_terms-5.png" style="width:100%; height:100%;">
						<img src="${path}doc/kosbank_terms-6.png" style="width:100%; height:100%;">
						<img src="${path}doc/kosbank_terms-7.png" style="width:100%; height:100%;">
						<img src="${path}doc/kosbank_terms-8.png" style="width:100%; height:100%;">
					</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline-info"
						data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>