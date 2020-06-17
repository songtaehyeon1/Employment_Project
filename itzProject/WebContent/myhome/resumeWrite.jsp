<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 > 이력서 등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<link rel="stylesheet" href="jquery-ui.min.css" type="text/css" />
<link rel="stylesheet" href="css/resume.css">	
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="jquery-ui.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>	
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script src="<%=request.getContextPath()%>/myhome/js/resume.js" type="text/javascript"></script>
<script>
	$(function () {
		$("#navb li").eq(1).css("font-weight","bold");
		$("#navb li>a").eq(1).css("color","white");
		$(document).on("click","#picdel",function() {
			if (confirm("삭제하시겠습니까?")) {
				$.ajax({
			        type : 'post',
			        url : 'imgDel.do',
			        data : {personno:${personno }},
			       	success : function (result) {
			        	$("#havePic").css("display", "none");
						$("#noPic").css("display", "block");
		  	        }							     
			    });
				
			}
		});
		$("#addPicBtn").click(function() {
			window.open("<%=request.getContextPath()%>/myhome/resumePic.do","addPicBtn",'width=800, height=500');
		});
		
	
	
	});

</script>
</head>
<body class="bg-light" onload="infochk();openform()">
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
					<!-- 이력서 등록 -->
					<form method="post" id="resumeFrm" action="<%=request.getContextPath()%>/myhome/resumeWriteOk.do" enctype="multipart/form-data">
					<div class="container" id="Registration">
						<h2>이력서 등록</h2>
						<hr />
						<div class="sticky-top bg-white"
							style="float: right; margin-right: -220px; top: 98px; width: 220px;">
							<h3>이력서 항목</h3>
							<hr />
							<ul class="list-group">
								<li
									class="list-group-item d-flex justify-content-between align-items-center">
									<a onclick="fnMove(basicinfo)">기본정보</a> <span
									class="badge badge-pill badge-danger">필수</span>
								</li>

								<li
									class="list-group-item d-flex justify-content-between align-items-center">
									<a onclick="fnMove(schoolinfo)">학력사항</a> <span
									class="badge badge-pill badge-danger">필수</span>
								</li>
								<li
									class="list-group-item d-flex justify-content-between align-items-center">
									<a onclick="fnMove(careerinfo)">경력사항</a> <span
									class="badge badge-pill badge-danger">필수</span>
								</li>
								<li
									class="list-group-item d-flex justify-content-between align-items-center">
									<a onclick="fnMove(certificateinfo)">자격증/수상</a> <input
									type="checkbox" name="certificateChk" id="certificateChk" hidden />
									<button type="button" class="btn-primary" id="certificateBtn">추가+</button>
								</li>
								<li
									class="list-group-item d-flex justify-content-between align-items-center">
									<a onclick="fnMove(careerdescriptioninfo)">경력기술서</a> <input
									type="checkbox" name="careerdescriptionChk" id="careerdescriptionChk" hidden />
									<button type="button" class="btn-primary" id="careerdescriptionBtn">추가+</button>
								</li>
								<li
									class="list-group-item d-flex justify-content-between align-items-center">
									<a onclick="fnMove(portfolioinfo)">포트폴리오</a> <input
									type="checkbox" name="portfolioChk" id="portfolioChk" hidden />
									<button type="button" class="btn-primary" id="portfolioBtn">추가+</button>
								</li>
								<li
									class="list-group-item d-flex justify-content-between align-items-center">
									<a onclick="fnMove(selfintroinfo)">자기소개서</a> <input
									type="checkbox" name="selfintroChk" id="selfintroChk" hidden />
									<button type="button" class="btn-primary" id="selfintroBtn">추가+</button>
								</li>
								<!-- 
								<li
									class="list-group-item d-flex justify-content-between align-items-center">
									<a href="#">희망 근무조건</a> <span
									class="badge badge-pill badge-danger">필수</span>
								</li> -->

							</ul>
						</div>
						
						<input type="text" class="p-3 mb-5" name="resume_title"
							style="font-size: 1.em; border: 5px gray solid; width: 100%"
							placeholder="이력서 제목을 입력하세요">


						<div id="basicinfo" class="bg-white">
							<h3>기본정보</h3>
							<hr />
							<!-- 사진 -->
							<div id="picture">
								<div id="havePic" <c:if test="${userPic ==null || userPic =='' }">"" style='display:none'</c:if>>
									<button type="button" class="close" id="picdel">&times;</button>
									<img src=
									<c:if test="${userPic !=null && userPic !='' }">"<%=request.getContextPath()%>/myhome/resumePic/${userPic}" style='display:block'</c:if>
									<c:if test="${userPic ==null || userPic =='' }">"" style='display:none'</c:if> 
									
									id="userPic" class="img-thumbnail"/>									
								</div>
								
								<div id="noPic" style="display: 
								<c:if test="${userPic !=null && userPic !='' }">none</c:if>
								<c:if test="${userPic ==null || userPic =='' }">block</c:if> ">
									<input type="button" class="btn" id="addPicBtn" value="사진추가"
										style="height: 100%; width: 100%" />
								</div>
							</div>

							<div class="row m-0 mb-4">
								<div class="input_title">
									이름<span class="small font-italic text-danger">필수</span>
								</div>
								<input type="text" class="input_text" name="name"
									placeholder=" 이름" value="${vo.name }"/>

							</div>
							<div class="row m-0 mb-4">
								<div class="input_title">
									생년월일<span class="small font-italic text-danger">필수</span>
								</div>
								<input type="text" class="input_text" name="birth"
									placeholder=" 생년월일" value="${vo.birth }"/>
								<div class="ml-3">
									<span class="m-0"><input type="radio" id="male"
										value="M" name="gender" <c:if test="${vo.gender=='M' }"> checked</c:if> /><label for="male"
										class="sexlbl">남</label> </span>
										<span class="m-0"><input type="radio" id="female" name="gender" value="F"  <c:if test="${vo.gender=='F' }"> checked</c:if>/><label
										for="female" class="sexlbl">여</label> </span>
								</div>

							</div>

							<div class="row m-0 mb-4">
								<div class="input_title">
									이메일<span class="small font-italic text-danger">필수</span>
								</div>
								<input type="text" class="input_text" name="person_email"
									placeholder=" 이메일" value="${vo.person_email }" />

							</div>

							<div class="row m-0 mb-4">
								<div class="input_title">
									휴대폰<span class="small font-italic text-danger">필수</span>
								</div>
								<input type="text" class="input_text" name="tel"
									placeholder=" 휴대폰" value="${vo.tel }"/>

							</div>

							<div class="row m-0 mb-4">
								<div class="input_title">
									전화번호<span class="small font-italic text-danger">필수</span>
								</div>
								<input type="text" class="input_text" name="tel2"
									placeholder=" 전화번호" />

							</div>

							<div class="row m-0 mb-4">
								<div class="input_title">
									주소<span class="small font-italic text-danger">필수</span>
								</div>
								<input type="text" class="input_text" name="useraddr"
									placeholder=" 주소" /> <input type="text" class="input_text2"
									name="useraddrDetail" placeholder=" 상세주소" />
							</div>
						</div>

						<div id="schoolinfo" class="bg-white">
							<h3>
								학력사항<span class="font-italic text-default"
									style="font-size: 0.5em">최종학력 선택 후 학력사항을 입력하세요</span>
							</h3>
							<hr />
							<div class="d-flex justify-content-center">
								<div class="btn-group btn-group-toggle" data-toggle="buttons">
									<label class="btn btn-outline-primary"> <input
										type="radio" name="userschool_type" id="elementaryschool" value="E">
										초등학교 졸업
									</label> <label class="btn btn-outline-primary"> <input
										type="radio" name="userschool_type" id="middleschool" value="M"> 중학교 졸업
									</label> <label class="btn btn-outline-primary"> <input
										type="radio" name="userschool_type" id="highschool" value="H"> 고등학교 졸업
									</label> <label class="btn btn-outline-primary"> <input
										type="radio" name="userschool_type" id="university" value="U" checked>
										대학/대학원이상
									</label>

								</div>
							</div>
							<hr />

							<div id="elementaryschoolinfo" style="display: none">
								<h3 style="margin-bottom: 20px">초등학교 정보 입력</h3>
								<div class="row m-0 mb-4">
									<div class="input_title">
										학교명<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text"
										name="school_name" id="e_school_name" placeholder="초등학교명" />
								</div>

								<div class="row m-0 mb-4">
									<div class="input_title">
										지역<span class="small font-italic text-danger">필수</span>
									</div>
									<select class="input_text"
										name="school_location"
										id="e_school_location">
										<option selected disabled="disabled">지역 선택</option>
									</select>
								</div>

								<div class="row m-0 mb-4">
									<div class="input_title">
										재학기간<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_date"
										name="school_start" id="e_school_start" placeholder="YYYYMM" />
									<select class="input_date">
										<option selected>입학</option>
									</select> <span
										style="font-size: 20px; width: 40px; text-align: center;">
										- </span> <input type="text" class="input_date"
										name="school_end" id="e_school_end" placeholder="YYYYMM" />
									<select class="input_date" name="school_end_type" id="e_school_end-type">
										<option selected>졸업</option>
										<option>중퇴</option>
									</select>
								</div>

							</div>
							<div id="middleschoolinfo" style="display: none">
								<h3 style="margin-bottom: 20px">중학교 정보 입력</h3>
								<div class="row m-0 mb-4">
									<div class="input_title">
										학교명<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text"
										name="school_name" id="m_school_name" placeholder="중학교명" />

								</div>

								<div class="row m-0 mb-4">
									<div class="input_title">
										지역<span class="small font-italic text-danger">필수</span>
									</div>
									<select class="input_text" name="school_location"
										id="m_school_location">
										<option selected disabled="disabled">지역 선택</option>

									</select>

								</div>

								<div class="row m-0 mb-4">
									<div class="input_title">
										재학기간<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_date"
										name="school_start" id="m_school_start" placeholder="YYYYMM" />
									<select class="input_date">
										<option selected>입학</option>
									</select> <span
										style="font-size: 20px; width: 40px; text-align: center;">
										- </span> <input type="text" class="input_date"
										name="school_end" id="m_school_end" placeholder="YYYYMM" /> <select
										class="input_date" name="school_end_type" id="m_school_end-type">
										<option selected>졸업</option>
										<option>중퇴</option>
									</select>

								</div>

							</div>
							<div id="highschoolinfo" style="display: none">
								<h3 style="margin-bottom: 20px">고등학교 정보 입력</h3>
								<div class="row m-0 mb-4">
									<div class="input_title">
										학교명<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text"
										name="h_school_name" id="h_school_name" placeholder="고등학교명" />
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">
										재학기간<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_date"
										name="h_school_start" id="h_school_start" placeholder="YYYYMM" /> <select
										class="input_date">
										<option selected>입학</option>
									</select> <span
										style="font-size: 20px; width: 40px; text-align: center;">
										- </span> <input type="text" class="input_date"
										name="h_school_end" name="h_school_end" placeholder="YYYYMM" /> 
										<select	class="input_date" name="h_school_end_type" id="h_school_end_type">
										<option selected>졸업</option>
										<option>재학중</option>
										<option>휴학중</option>
										<option>수료</option>
										<option>중퇴</option>
										<option>자퇴</option>
										<option>졸업예정</option>
									</select>
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">
										전공계열<span class="small font-italic text-danger">필수</span>
									</div>
									<select class="input_text" name="h_school_major"
										id="h_school_major">
										<option selected disabled="disabled">전공 계열 선택</option>
									</select>
								</div>
							</div>
							<div id="universityinfo" style="display: none">
								<h3 style="margin-bottom: 20px">대학/대학원 정보 입력</h3>
								<div class="row m-0 mb-4">
									<div class="input_title">
										대학<span class="small font-italic text-danger">필수</span>
									</div>
									<select class="input_text" name="schooltype"
										id="u_schooltype">
										<option selected>대학교(2,3년)</option>
										<option>대학교(4년)</option>
										<option>대학원(석사)</option>
										<option>대학원(박사)</option>
									</select>
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">
										학교명<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text"
										name="school_name" id="u_school_name" placeholder="대학교명 입력" />
								</div>

								<div class="row m-0 mb-4">
									<div class="input_title">
										지역<span class="small font-italic text-danger">필수</span>
									</div>
									<select class="input_text" name="school_location"
										id="u_school_location">
										<option selected disabled="disabled">지역 선택</option>
									</select>
								</div>

								<div class="row m-0 mb-4">
									<div class="input_title">
										재학기간<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_date"
										name="school_start" id="u_school_start" placeholder="YYYYMM" /> <select
										class="input_date" name="school_start_type" id="u_school_start_type">
										<option selected>입학</option>
										<option>편입</option>
									</select> <span
										style="font-size: 20px; width: 40px; text-align: center;">
										- </span> <input type="text" class="input_date"
										name="school_end" id="u_school_end" placeholder="YYYYMM" /> 
										<select	class="input_date" name="school_end_type" id="u_school_end_type">
										<option selected>졸업</option>
										<option>재학중</option>
										<option>휴학중</option>
										<option>수료</option>
										<option>중퇴</option>
										<option>자퇴</option>
										<option>졸업예정</option>
									</select>
								</div>

								<div class="row m-0 mb-2">
									<div class="input_title">
										전공<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_date"
										style="text-align: center" value="주전공" readonly> <select
										class="input_text" name="main_major_type"
										id="u_main_major_type">
										<option selected disabled="disabled">전공 선택</option>
									</select>
									<button type="button" id="addmajor">전공 추가</button>
								</div>
								<div class="row m-0 mb-4">
									<input type="text" class="input_text2"
										name="main_major_name" id="u_main_major_name" style="width: 350px"
										placeholder="전공학과명 입력" />
								</div>

								<div id="submajor" style="display: none">
									<div class="row m-0 mb-2">
										<div class="input_title">
											전공<span class="small font-italic text-danger">필수</span>
										</div>
										<select class="input_date" style="text-align: center"
											value="전공선택" name="sub_type" id="u_sub_type">
											<option selected disabled="disabled">전공 구분 선택</option>
											<option>주전공</option>
											<option>복수전공</option>
											<option>이중전공</option>
										</select> <select class="input_text" name="sub_major_type"
											id="u_sub_major_type">
											<option selected disabled="disabled">전공 선택</option>
										</select>
										<button type="button" id="delmajor">삭제</button>
									</div>
									<div class="row m-0 mb-4">
										<input type="text" class="input_text2"
											name="sub_major_name" id="u_sub_major_name"style="width: 350px"
											placeholder="전공학과명 입력" />
									</div>
								</div>



								<div class="row m-0 mb-4">
									<div class="input_title">주/야간</div>
									<select class="input_text" name="day_and_night"
										id="u_day_and_night">
										<option selected>주간</option>
										<option>야간</option>
									</select>
								</div>

								<div class="row m-0 mb-4">
									<div class="input_title">학점</div>
									<input type="text" class="input_date"
										name="score" id="u_score" placeholder="학점입력" /> <select
										class="input_date" name="score_type" id="u_score_type" style="width: 130px">
										<option selected disabled="disabled">기준학점선택</option>
										<option>4.0</option>
										<option>4.3</option>
										<option>4.5</option>
										<option>5.0</option>
										<option>7.0</option>
										<option>100</option>
									</select>
								</div>
						  <!-- <div class="row m-0 mb-4">
									<div class="input_title">졸업작품</div>
									<input type="text" name="graduation_work" id="u_graduation_work" class="input_text" style="width: 600px">
								</div> -->

							</div>
						</div>

						<div id="careerinfo">
							<h3>경력사항</h3>
							<hr />
							<div class="d-flex justify-content-center">
								<div class="btn-group btn-group-toggle" data-toggle="buttons">
									<label class="btn btn-outline-primary" style="width: 200px">
										<input type="radio" name="careerselect" id="new" value="N"> 신입
									</label> <label class="btn btn-outline-primary" style="width: 200px">
										<input type="radio" name="careerselect" id="experience" value="E"
										> 경력
									</label>

								</div>
							</div>
							<div id="experienceinfo" class="bg-white" style="display: none">
								<hr />
								<div class="row m-0 mb-4">
									<div class="input_title">
										회사명<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text" name="company_name" id="company_name"
										placeholder="회사명 입력" />
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">
										재직기간<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_date"
										name="company_start" id="company_start" placeholder="YYYYMM" /> <span
										style="font-size: 20px; width: 40px; text-align: center;">
										~ </span> <input type="text" class="input_date"
										name="company_end" id="company_end" placeholder="YYYYMM" /> <select
										class="input_date" name="company_end_type" id="company_end_type">
										<option selected>퇴사</option>
										<option>재직중</option>
									</select>
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">퇴사사유</div>
									<select class="input_text" name="fire_type"
										id="fire_type">
										<option selected disabled="disabled">퇴사사유 선택</option>
										<option>업직종 전환</option>
										<option>근무조건</option>
										<option>경영악화</option>
										<option>계약만료</option>
										<option>출산/육아</option>
										<option>학업</option>
										<option>유학</option>
										<option>개인사정</option>
									</select>
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">
										직급/직책<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text"
										name="company_position" id="company_position" data-toggle="modal"
										data-target="#positionmodal" 
										placeholder="직급/직책" readonly /> <input type="text"
										class="input_date" name="company_year" id="company_year" placeholder="년차"
										maxlength="2">
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">
										직종<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text"
										name="occupation_type" data-toggle="modal"
										data-target="#occupation_type_modal" id="occupation_type"
										placeholder="직종선택"/>
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">근무지역</div>
									<select class="input_text" name="company_location"
										id="company_location">
										<option selected disabled="disabled">지역 선택</option>

									</select>

								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">근무부서</div>
									<input type="text" class="input_text"
										name="company_department" id="company_department"
										placeholder="근무부서 입력" />
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">연봉</div>
									<input type="text" class="input_date"
										name="company_salary" id="company_salary"
										placeholder="연봉 입력" /> <select class="input_date" name="company_salary_type" id="company_salary_type">
										<option selected>원</option>
										<option>엔</option>
										<option>달러</option>
									</select>
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">담당업무</div>
									<input type="text" class="input_text" name="company_worktype" id="company_worktype" style="width: 600px"
										placeholder="담당 업무 입력">
								</div>


								<div class="modal" id="positionmodal">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h4 class="modal-title">직급/직책선택</h4>
												<button type="button" class="close" data-dismiss="modal">&times;</button>
											</div>
											<div class="modal-body">
												<table>
													<tr style="border: 1px gray solid">
														<td
															style="height: 200px; width: 100px; border: 1px gray solid; text-align: center"
															class="bg-light">직급(필수)</td>
														<td>
															<div class="row m-0 mb-4" id="positionselect"></div>

														</td>
													</tr>
													<tr style="border: 1px gray solid">
														<td
															style="height: 200px; width: 100px; border: 1px gray solid; text-align: center"
															class="bg-light">직책(선택)</td>
														<td>
															<div class="row m-0 mb-4" id="positionselect2"></div>

														</td>
													</tr>
												</table>

											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-primary"
													id="positionresult">적용</button>
												<button type="button" class="btn" data-dismiss="modal"
													id="position_modal_close">취소</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div id="certificateinfo" class="bg-white">
							<h3>자격증/어학/수상 내역</h3>
							<hr />
							<div id="certificateform" style="display: none">
									<div class="row m-0 mb-4">
										<div class="input_title">항목선택</div>
										<select class="input_text" name=""
											onchange="certificatechange()">
											<option value="c_type1" selected>자격증/면허증</option>
											<option value="c_type2">어학시험</option>
											<option value="c_type3">수상내역/공모전</option>
										</select>

									</div>

									<div class="certificate_type1">
										<div class="row m-0 mb-4">
											<div class="input_title">자격증명</div>
											<input type="text" class="input_text" name="" placeholder="자격증명 입력">
										</div>
										<div class="row m-0 mb-4">
											<div class="input_title">발행처/기관</div>
											<input type="text" class="input_text" name="" placeholder="발행처/기관 입력">
										</div>
										<div class="row m-0 mb-4">
											<div class="input_title">합격구분</div>
											<select class="input_text" name="">
												<option selected disabled="disabled">합격구분 선택</option>
												<option>1차합격</option>
												<option>2차합격</option>
												<option>필기합격</option>
												<option>실기합격</option>
												<option>최종합격</option>
											</select>
										</div>
										<div class="row m-0 mb-4">
											<div class="input_title">취득일</div>
											<input type="text" class="input_date"
												name="" placeholder="YYYYMM" />
										</div>
									</div>
									
									<div class="certificate_type2" style="display: none">
										<div class="row m-0 mb-4">
											<div class="input_title">언어선택</div>
											<select class="input_text" name="">
												<option selected disabled="disabled">언어 선택</option>
												<option>영어</option>
												<option>일본어</option>
												<option>중국어</option>
												<option>독일어</option>
												<option>불어</option>
												<option>스페인어</option>
												<option>러시아어</option>
												<option>이탈리아어</option>
												<option>한국어</option>
												<option>기타</option>
											</select>
										</div>
										<div class="row m-0 mb-4">
											<div class="input_title">시험종류</div>
											<input type="text" class="input_text" name="" placeholder="시험종류입력">
										</div>
										<div class="row m-0 mb-4">
											<div class="input_title">점수입력</div>
											<input type="text" class="input_text" name="" placeholder="점수입력">
										</div>
										<div class="row m-0 mb-4">
											<div class="input_title">급수입력</div>
											<input type="text" class="input_text" name="" placeholder="급수입력">
										</div>
										<div class="row m-0 mb-4">
											<div class="input_title">취득여부</div>
											<select class="input_text" name="">
												<option selected disabled="disabled">취득여부 선택</option>
												<option>취득(PASS)</option>
											</select>
										</div>

										<div class="row m-0 mb-4">
											<div class="input_title">취득일</div>
											<input type="text" class="input_date"
												name="" placeholder="YYYYMM" />
										</div>
									</div>
									<div class="certificate_type3" style="display: none">
										<div class="row m-0 mb-4">
											<div class="input_title">수상명</div>
											<input type="text" class="input_text" name="" placeholder="수상명입력">
										</div>
										<div class="row m-0 mb-4">
											<div class="input_title">수여기관</div>
											<input type="text" class="input_text" name="" placeholder="수여기관입력">
										</div>
										<div class="row m-0 mb-4">
											<div class="input_title">수상/공모일</div>
											<input type="text" class="input_date"
												name="" placeholder="YYYYMM" />
										</div>
									</div>
									<hr />
								</div>
							<div id="certificateinfoContent">
								

							</div>
							<button type="button" id="addcertificate" class="btn btn-primary btn-block">자격증
								추가</button>
						</div>
						

						<div id="careerdescriptioninfo" class="bg-white">
							<h3>경력기술서</h3>

							<div class="p-5">
								<textarea rows="13" cols="100" name="content"
									id="content"></textarea>
								<div>
									<span style="color: #aaa;" id="counter">(0 / 최대 1000자)</span>
								</div>
							</div>
						</div>

						<div id="portfolioinfo" class="bg-white">
							<h3>포트폴리오 및 기타문서</h3>
							<hr />
							<input type='file' id="imgInp" name="url" class="btn btn-primary row ml-5"
								/>
							<div style="width: 95%; height: 300px; overflow: scroll;">
								<img id="blah" src="#" style="width: 100%" alt="" />
							</div>
						</div>

						<div id="selfintroinfo" class="bg-white">
							<h3>자기소개서</h3>
							<hr />
							<div id="selfintroform" class="p-2" style="display: none">
									<input type="text" name=""
										style="border: 1px lightblue solid; height: 40px; font-size: 1.5em"
										class="form-control" placeholder="자기소개서 제목" />
									<textarea rows="13" cols="100" name=""
										class="form-control" onkeyup="countText()"
										style="border: 1px lightblue solid;"></textarea>
									<div>
										<span style="color: #aaa;">(0 / 최대 1000자)</span>
									</div>
								</div>
							<div id="selfintrocontent">
								
							</div>
							<button type="button" id="addselfintro" class="btn btn-primary btn-block">자기소개
								항목 추가</button>
						</div>
						
						<%@ include file="/inc/hopeinfo.jspf" %> 

						<input type="submit" id="submit"class="btn btn-primary btn-block mt-5"
							style="font-size: 2.5em" value="이력서 저장"/>
					</div>
					</form>
			</div>
			<div class="col-1">
				<img src="img/Advertising1.png" style="margin-bottom: 20px"><br />
				<img src="img/Advertising2.png">
			</div>

		</div>
	</div>

</body>
</html>