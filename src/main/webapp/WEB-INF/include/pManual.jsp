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
		data-target="#pManual">KOS뱅크 통장 금리안내</button>
	<div class="modal fade" id="pManual" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
				<input type="hidden" name="${_csrf.parameterName}"   value="${_csrf.token}" />
					<h4 class="modal-title" id="myModalLabel">금리안내</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
					<div class="modal-body">
					
						<iframe src="${path }doc/kosbank_manual.pdf" style="width:100%; height:580px;"></iframe>
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