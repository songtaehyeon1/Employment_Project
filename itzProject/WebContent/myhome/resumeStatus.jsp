<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 > 이력서 현황</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
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
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
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
		$("#navb li").eq(1).css("font-weight","bold");
		$("#navb li>a").eq(1).css("color","white");
	});

</script>
</head>
<body class="bg-light">
	<%@ include file="/inc/myhomeMenu.jspf" %>
		
	<div class="tab-pane cotainer-fuild" id="myhomemain"
		style="margin-top: 40px; margin-left: 50px; margin-right: 50px">
		<div class="row p-2 center-block">
			<!-- 왼쪽 -->
			<div class="col-2">
				<!-- 왼쪽의 메뉴 -->
				<%@ include file="/inc/myhomeLeft.jspf" %>
			</div>
			<!-- 중간 정보창 -->
			<div class="col bg-light mr-3">
					<!-- 이력서 현황 -->
					<div class="tab-pane container active" id="situation">
						<div class="container-fluid bg-white">
							<h2>이력서 현황</h2>
							<ul>
								<li>이력서는 최대 10개까지 작성하여 등록 가능합니다.</li>
								<li>이력서 공개 설정은 1개의 이력서만 가능합니다.</li>
								<li>미완성 이력서는 이력서 등록이 완료되지 않은 상태에서 저장된 이력서입니다.</li>
								<li>미완성 이력서로 입사지원 및 이력서 공개는 불가합니다.</li>
								<li>"완성하기" 버튼을 클릭하여, 필수 항목을 모두 입력 후 등록을 완료해야 입사지원 및 이력서 공개가
									가능합니다.</li>
							</ul>
							<h6>
								총 <span style="color: red">${resumeCount }</span>건
							</h6>
							
							<c:forEach var="list" items="${list }">
							<c:if test="${list.resume_no == resume_no }">
							<div class="row img-thumbnail shadow mb-2"
								style="background: white; height: 130px" name="resumes">								
								<ul class="col">
									<li>수정 <span id="openresumedate${list.resume_no }">${list.resume_date }</span></li>
									<li class="mb-2"><strong>${list.resume_title }</strong></li>
									<li><c:if test="${list.career_type =='N'}">
										신입
									</c:if>
									<c:if test="${list.career_type =='E'}">
										경력
									</c:if></li>
									<li class="mt-2">
										<c:if test="${list.resume_no == resume_no }"><div class="custom-control custom-switch">
											<input type="checkbox" class="custom-control-input"
												id="openresume${list.resume_no }"> <label
												class="custom-control-label" for="openresume${list.resume_no }">이력서
												비공개</label>
										</div></c:if>
									</li>
								</ul>
								
								<div class="col-2 py-3 text-center">
									<a class="btn btn-primary" href="<%=request.getContextPath() %>/myhome/resumeEdit.do?resumeno=${list.resume_no}">수정하기</a>
									<c:if test="${list.resume_no != resume_no }"><a class="btn btn-outline-primary" href="<%=request.getContextPath() %>/myhome/primaryEdit.do?resumeno=${list.resume_no}">대표설정</a></c:if>
								</div>
							</div>
								</c:if>
							</c:forEach>						
							
							<c:forEach var="list" items="${list }">
							<c:if test="${list.resume_no != resume_no }">
							<div class="row img-thumbnail shadow mb-2"
								style="background: white; height: 130px" name="resumes">								
								<ul class="col">
									<li>수정 <span id="openresumedate${list.resume_no }">${list.resume_date }</span></li>
									<li class="mb-2"><strong>${list.resume_title }</strong></li>
									<li><c:if test="${list.career_type =='N'}">
										신입
									</c:if>
									<c:if test="${list.career_type =='E'}">
										경력
									</c:if></li>
									<li class="mt-2">
										<c:if test="${list.resume_no == resume_no }"><div class="custom-control custom-switch">
											<input type="checkbox" class="custom-control-input"
												id="openresume${list.resume_no }"> <label
												class="custom-control-label" for="openresume${list.resume_no }">이력서
												비공개</label>
										</div></c:if>
									</li>
								</ul>
								
								<div class="col-2 py-3 text-center">
									<a class="btn btn-primary" href="<%=request.getContextPath() %>/myhome/resumeEdit.do?resumeno=${list.resume_no}">수정하기</a>
									<c:if test="${list.resume_no != resume_no }"><a class="btn btn-outline-primary" href="<%=request.getContextPath() %>/myhome/primaryEdit.do?resumeno=${list.resume_no}">대표설정</a></c:if>
								</div>
							</div>
								</c:if>
							</c:forEach>
						
							

							<button type="button" class="btn btn-primary btn-block"
								onclick="goresume()">이력서 등록하기</button>


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