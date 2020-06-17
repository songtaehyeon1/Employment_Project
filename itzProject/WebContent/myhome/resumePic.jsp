<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>이미지 저장</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.11.2/css/all.css"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://unpkg.com/cropperjs/dist/cropper.css"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<!-- Content -->
	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<div class="img-container">
					<img id="image" src="img/pic.jpg">
				</div>
			</div>
			<div class="col-md-3">
				<h3 style="text-align: center;">확정 사진</h3>
				<div class="img-preview preview-lg"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9 docs-buttons">
				<div class="btn-group fixed-bottom">
					<button type="button" class="btn btn-primary" data-method="zoom"
						data-option="0.1" title="Zoom In">
						<span class="docs-tooltip" data-toggle="tooltip"
							data-animation="false" title="확대">
							<span class="fa fa-search-plus">사진확대</span>
						</span>
					</button>
					<button type="button" class="btn btn-primary" data-method="zoom"
						data-option="-0.1" title="Zoom Out">
						<span class="docs-tooltip" data-toggle="tooltip"
							data-animation="false"
							title="축소"> <span
							class="fa fa-search-minus">사진축소</span>
						</span>
					</button>
					
					<button type="button" class="btn btn-primary" data-method="scaleX"
						data-option="-1" title="Flip Horizontal">
						<span class="docs-tooltip" data-toggle="tooltip"
							data-animation="false"
							title="좌우반전"> <span
							class="fa fa-arrows-alt-h">좌우반전</span>
						</span>
					</button>
					<button type="button" class="btn btn-primary" data-method="scaleY"
						data-option="-1" title="Flip Vertical">
						<span class="docs-tooltip" data-toggle="tooltip"
							data-animation="false"
							title="상하반전"> <span
							class="fa fa-arrows-alt-v">상하반전</span>
						</span>
					</button>
					<label class="btn btn-primary btn-upload" for="inputImage"
						title="Upload image file"> <input type="file"
						class="sr-only" id="inputImage" name="file"
						accept=".jpg,.jpeg,.png,.gif,.bmp,.tiff"> <span
						class="docs-tooltip" data-toggle="tooltip" data-animation="false"
						title="사진 불러오기"> <span
							class="fa fa-upload">불러오기</span>
					</span>
					</label>
					
					<button type="button" class="btn btn-success"
						data-method="getCroppedCanvas"
						data-option="{ &quot;width&quot;: 320, &quot;height&quot;: 180 }">
						<span class="docs-tooltip" data-toggle="tooltip"
							data-animation="false">
							사진 확정 </span>
					</button>
				</div>

				<!-- 확정 모달창 -->
				<div class="modal fade docs-cropped" id="getCroppedCanvasModal"
					aria-hidden="true" aria-labelledby="getCroppedCanvasTitle"
					role="dialog" tabindex="-1">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="getCroppedCanvasTitle">사진 확정 창</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body"></div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
								<a class="btn btn-primary" id="download"
									>확정하기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>



	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		crossorigin="anonymous"></script>
	
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="https://fengyuanchen.github.io/shared/google-analytics.js"
		crossorigin="anonymous"></script>
	
	<script src="https://unpkg.com/cropperjs/dist/cropper.js"
		crossorigin="anonymous"></script>
	<script src="js/jquery-cropper.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
