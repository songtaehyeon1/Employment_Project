<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/resume.css">	
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>	
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script src="js/resume.js" type="text/javascript"></script>
<script>
	$(function () {
		$("#navb li").eq(0).css("font-weight","bold");
		$("#navb li>a").eq(0).css("color","white");
	});
</script>
</head>
<body>
	<%@ include file="/inc/myhomeMenu.jspf" %>
	<div class="tab-pane cotainer-fuild active" id="myhomemain"
		style="margin-top: 40px; margin-left: 50px; margin-right: 50px">
		<div class="row p-2 center-block">
			<!-- 왼쪽 -->
			<div class="col-2">
				<!-- 왼쪽의 개인정보+사진 -->
				<div class="card shadow">
					<div class="card-header bg-white">
						<img src="img/pic.jpg" class="rounded-circle" style="width: 100%;" />
					</div>
					<div class="card-body text-center bg-white">${username }님</div>
					<div class="card-footer text-center bg-white">
						<a href="<%=ctx %>/person/personInfoEdit.do"><button type="button"
								class="btn btn-outline-primary">개인정보 수정</button></a>
					</div>
				</div>
				<!-- 왼쪽의 메뉴 -->
				<%@ include file="/inc/myhomeLeft.jspf" %>
			</div>
			<!-- 중간 정보창 -->
			<div class="col bg-light mr-3">
				<!-- 대쉬보드 창 -->
				<div id="dashboard">
					<ul id="activity_list" class="d-flex justify-content-around">
						<li class="rounded-lg p-4"><a href="resume.html"> <span><span
									style="font-size: 3em;">2</span>/ 10</span><br /> <span>이력서</span>
								<div class="progress">
									<div class="progress-bar progress-bar-striped"
										style="width: 20%" id="progressbar">20%</div>
								</div>
						</a></li>
						<li class="rounded-lg p-3"><a href="apply.html"> <span
								style="font-size: 3.5em;">2</span><br /> <span>지원횟수</span>
						</a></li>
						<li class="rounded-lg p-3"><a href="scrap.html"> <span
								style="font-size: 3.5em;">2</span><br /> <span>스크랩</span>
						</a></li>
					</ul>
				</div>
				<!-- 중간에 그림 -->
				<img src="img/1.png" class="mb-4" style="width: 100%" />
				<!-- 탭 -->
				<ul class="nav nav-tabs nav-justified mb-3">
					<li class="nav-item flex-fill m-0"><a class="nav-link active"
						data-toggle="tab" href="#recomand">추천공고</a></li>
					<li class="nav-item flex-fill m-0"><a class="nav-link"
						data-toggle="tab" href="#searchjob">나의 검색 공고</a></li>

				</ul>
				<div class="tab-content">
					<div class="tab-pane container active" id="recomand">
						<div class="row img-thumbnail shadow mb-2"
							style="background: white; height: 100px" name="companys">
							<div class="col-2 py-2 mr-2">
								<img src="img/company1.png" />
							</div>
							<ul class="col">
								<li class="mb-2"><strong>동원 그룹</strong></li>
								<li>2020 상반기 동원그룹 채용연계형 인턴모집</li>
								<li>신입 대학교(4년)↑ 서울전체 인턴직</li>
							</ul>
							<div class="col-2 py-3 text-center">
								~ 05/19(화)
								<button class="btn btn-primary"
									onclick="location.href ='../jobs_user_info/companyHire.html'">즉시
									지원</button>
							</div>
						</div>
						<ul class="pagination justify-content-center"
							style="margin: 20px 0">
							<li class="page-item"><a class="page-link" href="#">이전</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">다음</a></li>
						</ul>
					</div>
					<div class="tab-pane container fade" id="searchjob">
						<div class="row img-thumbnail shadow mb-2"
							style="background: white; height: 100px" name="companys">
							<div class="col-2 py-2 mr-2">
								<img src="img/company6.png" />
							</div>
							<ul class="col">
								<li class="mb-2"><strong>(주)케이티엠하우스</strong></li>
								<li>개발/디자인 프리랜서, 전문계약직 채용</li>
								<li>신입 대학교(4년)↑ 서울전체 인턴직</li>
							</ul>
							<div class="col-2 py-3 text-center">
								~ 05/19(화)
								<button class="btn btn-primary"
									onclick="location.href ='../jobs_user_info/companyHire.html'">즉시
									지원</button>
							</div>
						</div>

						<ul class="pagination justify-content-center"
							style="margin: 20px 0">
							<li class="page-item"><a class="page-link" href="#">이전</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">다음</a></li>
						</ul>

					</div>

				</div>
			</div>
			<div class="col-1">
				<img src="img/Advertising1.png" style="margin-bottom: 20px"><br />
				<img src="img/Advertising2.png">
			</div>
		</div>
	</div>

</body>
</html>