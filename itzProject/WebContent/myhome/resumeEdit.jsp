<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 > 이력서 수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
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
<script src="<%=request.getContextPath()%>/myhome/js/resume.js"
	type="text/javascript"></script>
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
			window.open("<%=request.getContextPath()%>/myhome/resumePic.do","addPicBtn",'width=700, height=500');
		});
		
	
	
	});

</script>
</head>
<body class="bg-light" onload="infochk();openform()">
	<%@ include file="/inc/myhomeMenu.jspf"%>

	<div class="tab-pane cotainer-fuild" id="myhomemain"
		style="margin-top: 40px; margin-left: 50px; margin-right: 50px">
		<div class="row p-2 center-block">
			<!-- 왼쪽 -->
			<div class="col-2">
				<!-- 왼쪽의 메뉴 -->
				<%@ include file="/inc/myhomeLeft.jspf"%>
			</div>
			<!-- 중간 정보창 -->
			<div class="col bg-light mr-3">
				<!-- 이력서 등록 -->
				<form method="post" id="resumeFrm"
					action="<%=request.getContextPath()%>/myhome/resumeEditOk.do"
					enctype="multipart/form-data">
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
									type="checkbox" name="certificateChk" id="certificateChk"
									hidden />
									<button type="button" class="btn-primary" id="certificateBtn">추가+</button>
									<c:if test="${rvo.certificate_type=='on'}"><script>
										$(function () {
											$("#certificateBtn").click();
										});
										
									
										 </script></c:if>
								</li>
								<li
									class="list-group-item d-flex justify-content-between align-items-center">
									<a onclick="fnMove(careerdescriptioninfo)">경력기술서</a> <input
									type="checkbox" name="careerdescriptionChk"
									id="careerdescriptionChk" hidden />
									
									<button type="button" class="btn-primary"
										id="careerdescriptionBtn">추가+</button>
									<c:if test="${rvo.careerdescriptionChk=='on'}"><script>
										$(function () {
											$("#careerdescriptionBtn").click();
										});
										
										
									
										 </script></c:if>
								</li>
								<li
									class="list-group-item d-flex justify-content-between align-items-center">
									<a onclick="fnMove(portfolioinfo)">포트폴리오</a> <input
									type="checkbox" name="portfolioChk" id="portfolioChk" hidden />
									<button type="button" class="btn-primary" id="portfolioBtn">추가+</button>
									<c:if test="${rvo.portfolioChk=='on'}"><script>
										$(function () {
											$("#portfolioBtn").click();
										});
										
									
										 </script></c:if>
								</li>
								<li
									class="list-group-item d-flex justify-content-between align-items-center">
									<a onclick="fnMove(selfintroinfo)">자기소개서</a> <input
									type="checkbox" name="selfintroChk" id="selfintroChk" hidden />
									<button type="button" class="btn-primary" id="selfintroBtn">추가+</button>
									<c:if test="${rvo.selfinfo_type=='on'}"><script>
										$(function () {
											$("#selfintroBtn").click();
										});
										
									
										 </script></c:if>
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
							placeholder="이력서 제목을 입력하세요" value="${rvo.resume_title }">


						<div id="basicinfo" class="bg-white">
							<h3>기본정보</h3>
							<hr />
							<!-- 사진 -->
							<div id="picture">
								<div id="havePic"
									<c:if test="${userPic ==null || userPic =='' }">"" style='display:none'</c:if>>
									<button type="button" class="close" id="picdel">&times;</button>
									<img
										src=<c:if test="${userPic !=null && userPic !='' }">"<%=request.getContextPath()%>/myhome/resumePic/${userPic}" style='display:block'</c:if>
										<c:if test="${userPic ==null || userPic =='' }">"" style='display:none'</c:if>
										id="userPic" class="img-thumbnail" />
								</div>

								<div id="noPic"
									style="display: 
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
									placeholder=" 이름" value="${rvo.name }" />

							</div>
							<div class="row m-0 mb-4">
								<div class="input_title">
									생년월일<span class="small font-italic text-danger">필수</span>
								</div>
								<input type="text" class="input_text" name="birth"
									placeholder=" 생년월일" value="${rvo.birth }" />
								<div class="ml-3">
									<span class="m-0"><input type="radio" id="male"
										value="M" name="gender"
										<c:if test="${rvo.gender=='M' }"> checked</c:if> /><label
										for="male" class="sexlbl">남</label> </span> <span class="m-0"><input
										type="radio" id="female" name="gender" value="F"
										<c:if test="${rvo.gender=='F' }"> checked</c:if> /><label
										for="female" class="sexlbl">여</label> </span>
								</div>

							</div>

							<div class="row m-0 mb-4">
								<div class="input_title">
									이메일<span class="small font-italic text-danger">필수</span>
								</div>
								<input type="text" class="input_text" name="person_email"
									placeholder=" 이메일" value="${rvo.email }" />

							</div>

							<div class="row m-0 mb-4">
								<div class="input_title">
									휴대폰<span class="small font-italic text-danger">필수</span>
								</div>
								<input type="text" class="input_text" name="tel"
									placeholder=" 휴대폰" value="${rvo.tel }" />

							</div>

							<div class="row m-0 mb-4">
								<div class="input_title">
									전화번호<span class="small font-italic text-danger">필수</span>
								</div>
								<input type="text" class="input_text" name="tel2"
									placeholder=" 전화번호" value="${rvo.tel2}" />

							</div>

							<div class="row m-0 mb-4">
								<div class="input_title">
									주소<span class="small font-italic text-danger">필수</span>
								</div>
								<input type="text" class="input_text" name="useraddr"
									placeholder=" 주소" value="${rvo.useraddr} " /> <input
									type="text" class="input_text2" name="useraddrDetail"
									placeholder=" 상세주소" value="${rvo.useraddrDetail}" />
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
										type="radio" name="userschool_type" id="elementaryschool"
										value="E" <c:if test="${schooltype =='E'}"> checked</c:if>>
										초등학교 졸업
									</label> <label class="btn btn-outline-primary"> <input
										type="radio" name="userschool_type" id="middleschool"
										value="M" <c:if test="${schooltype =='M'}"> checked</c:if>>
										중학교 졸업
									</label> <label class="btn btn-outline-primary"> <input
										type="radio" name="userschool_type" id="highschool" value="H"
										<c:if test="${schooltype =='H'}"> checked</c:if>> 고등학교
										졸업
									</label> <label class="btn btn-outline-primary"> <input
										type="radio" name="userschool_type" id="university" value="U"
										<c:if test="${schooltype =='U'}"> checked</c:if>>
										대학/대학원이상
									</label>

								</div>
							</div>
							<hr />


							<div id="elementaryschoolinfo"
								style="display:<c:if test="${schooltype !='E'} }">none</c:if> ">
								<h3 style="margin-bottom: 20px">초등학교 정보 입력</h3>
								<div class="row m-0 mb-4">
									<div class="input_title">
										학교명<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text" name="school_name"
										id="e_school_name" placeholder="초등학교명"
										value="<c:if test="${schooltype =='E'}">${svo.school_name}</c:if>" />
								</div>

								<div class="row m-0 mb-4">
									<div class="input_title">
										지역<span class="small font-italic text-danger">필수</span>
									</div>
									<select class="input_text" name="school_location"
										id="e_school_location2">
										<option disabled="disabled">지역 선택</option>
										<option value="서울"
											<c:if test="${schooltype =='E' && svo.school_location =='서울'}">selected</c:if>>서울</option>
										<option value="경기"
											<c:if test="${schooltype =='E' && svo.school_location =='경기'}">selected</c:if>>경기</option>
										<option value="광주"
											<c:if test="${schooltype =='E' && svo.school_location =='광주'}">selected</c:if>>광주</option>
										<option value="대구"
											<c:if test="${schooltype =='E' && svo.school_location =='대구'}">selected</c:if>>대구</option>
										<option value="대전"
											<c:if test="${schooltype =='E' && svo.school_location =='대전'}">selected</c:if>>대전</option>
										<option value="부산"
											<c:if test="${schooltype =='E' && svo.school_location =='부산'}">selected</c:if>>부산</option>
										<option value="울산"
											<c:if test="${schooltype =='E' && svo.school_location =='울산'}">selected</c:if>>울산</option>
										<option value="인천"
											<c:if test="${schooltype =='E' && svo.school_location =='인천'}">selected</c:if>>인천</option>
										<option value="강원"
											<c:if test="${schooltype =='E' && svo.school_location =='강원'}">selected</c:if>>강원</option>
										<option value="경남"
											<c:if test="${schooltype =='E' && svo.school_location =='경남'}">selected</c:if>>경남</option>
										<option value="경북"
											<c:if test="${schooltype =='E' && svo.school_location =='경북'}">selected</c:if>>경북</option>
										<option value="전남"
											<c:if test="${schooltype =='E' && svo.school_location =='전남'}">selected</c:if>>전남</option>
										<option value="충북"
											<c:if test="${schooltype =='E' && svo.school_location =='충북'}">selected</c:if>>충북</option>
										<option value="충남"
											<c:if test="${schooltype =='E' && svo.school_location =='충남'}">selected</c:if>>충남</option>
										<option value="제주"
											<c:if test="${schooltype =='E' && svo.school_location =='제주'}">selected</c:if>>제주</option>
										<option value="세종"
											<c:if test="${schooltype =='E' && svo.school_location =='세종'}">selected</c:if>>세종</option>

									</select>




								</div>

								<div class="row m-0 mb-4">
									<div class="input_title">
										재학기간<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_date" name="school_start"
										id="e_school_start" placeholder="YYYYMM"
										value="<c:if test="${schooltype =='E'}">${svo.school_start}</c:if>" />
									<select class="input_date">
										<option selected>입학</option>
									</select> <span
										style="font-size: 20px; width: 40px; text-align: center;">
										- </span> <input type="text" class="input_date" name="school_end"
										id="e_school_end" placeholder="YYYYMM"
										value="<c:if test="${schooltype =='E'}">${svo.school_end}</c:if>" />
									<select class="input_date" name="school_end_type"
										id="e_school_end-type">
										<option
											<c:if test="${schooltype =='E' && svo.school_end_type =='졸업'}">selected</c:if>>졸업</option>
										<option
											<c:if test="${schooltype =='E' && svo.school_end_type =='중퇴'}">selected</c:if>>중퇴</option>
									</select>

								</div>

							</div>
							<div id="middleschoolinfo"
								style="display: <c:if test="${schooltype !='M'} }">none</c:if>">
								<h3 style="margin-bottom: 20px">중학교 정보 입력</h3>
								<div class="row m-0 mb-4">
									<div class="input_title">
										학교명<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text" name="school_name"
										id="m_school_name" placeholder="중학교명"
										value="<c:if test="${schooltype =='M'}">${svo.school_name}</c:if>" />

								</div>

								<div class="row m-0 mb-4">
									<div class="input_title">
										지역<span class="small font-italic text-danger">필수</span>
									</div>
									<select class="input_text" name="school_location"
										id="m_school_location2">
										<option disabled="disabled">지역 선택</option>
										<option value="서울"
											<c:if test="${schooltype =='M' && svo.school_location =='서울'}">selected</c:if>>서울</option>
										<option value="경기"
											<c:if test="${schooltype =='M' && svo.school_location =='경기'}">selected</c:if>>경기</option>
										<option value="광주"
											<c:if test="${schooltype =='M' && svo.school_location =='광주'}">selected</c:if>>광주</option>
										<option value="대구"
											<c:if test="${schooltype =='M' && svo.school_location =='대구'}">selected</c:if>>대구</option>
										<option value="대전"
											<c:if test="${schooltype =='M' && svo.school_location =='대전'}">selected</c:if>>대전</option>
										<option value="부산"
											<c:if test="${schooltype =='M' && svo.school_location =='부산'}">selected</c:if>>부산</option>
										<option value="울산"
											<c:if test="${schooltype =='M' && svo.school_location =='울산'}">selected</c:if>>울산</option>
										<option value="인천"
											<c:if test="${schooltype =='M' && svo.school_location =='인천'}">selected</c:if>>인천</option>
										<option value="강원"
											<c:if test="${schooltype =='M' && svo.school_location =='강원'}">selected</c:if>>강원</option>
										<option value="경남"
											<c:if test="${schooltype =='M' && svo.school_location =='경남'}">selected</c:if>>경남</option>
										<option value="경북"
											<c:if test="${schooltype =='M' && svo.school_location =='경북'}">selected</c:if>>경북</option>
										<option value="전남"
											<c:if test="${schooltype =='M' && svo.school_location =='전남'}">selected</c:if>>전남</option>
										<option value="충북"
											<c:if test="${schooltype =='M' && svo.school_location =='충북'}">selected</c:if>>충북</option>
										<option value="충남"
											<c:if test="${schooltype =='M' && svo.school_location =='충남'}">selected</c:if>>충남</option>
										<option value="제주"
											<c:if test="${schooltype =='M' && svo.school_location =='제주'}">selected</c:if>>제주</option>
										<option value="세종"
											<c:if test="${schooltype =='M' && svo.school_location =='세종'}">selected</c:if>>세종</option>

									</select>

								</div>

								<div class="row m-0 mb-4">
									<div class="input_title">
										재학기간<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_date" name="school_start"
										id="m_school_start" placeholder="YYYYMM" /> <select
										class="input_date"
										value="<c:if test="${schooltype =='M'}">${svo.school_start}</c:if>">
										<option selected>입학</option>
									</select> <span
										style="font-size: 20px; width: 40px; text-align: center;">
										- </span> <input type="text" class="input_date" name="school_end"
										id="m_school_end" placeholder="YYYYMM"
										value="<c:if test="${schooltype =='E'}">${svo.school_end}</c:if>" />
									<select class="input_date" name="school_end_type"
										id="m_school_end-type">
										<option
											<c:if test="${schooltype =='M' && svo.school_end_type =='졸업'}">selected</c:if>>졸업</option>
										<option
											<c:if test="${schooltype =='M' && svo.school_end_type =='중퇴'}">selected</c:if>>중퇴</option>
									</select>

								</div>

							</div>
							<div id="highschoolinfo"
								style="display: <c:if test="${schooltype !='H' && schooltype !='U'} }">none</c:if>">
								<h3 style="margin-bottom: 20px">고등학교 정보 입력</h3>
								<div class="row m-0 mb-4">
									<div class="input_title">
										학교명<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text" name="h_school_name"
										id="h_school_name" placeholder="고등학교명"
										value="<c:if test="${schooltype =='H' || schooltype =='U'}">${svo.h_school_name}</c:if>" />
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">
										재학기간<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_date" name="h_school_start"
										id="h_school_start" placeholder="YYYYMM"
										value="<c:if test="${schooltype =='H' || schooltype =='U'}">${svo.h_school_start}</c:if>" />
									<select class="input_date">
										<option selected>입학</option>
									</select> <span
										style="font-size: 20px; width: 40px; text-align: center;">
										- </span> <input type="text" class="input_date" name="h_school_end"
										name="h_school_end" placeholder="YYYYMM"
										value="<c:if test="${schooltype =='H' || schooltype =='U'}">${svo.h_school_end}</c:if>" />
									<select class="input_date" name="h_school_end_type"
										id="h_school_end_type">
										<option
											<c:if test="${(schooltype =='H' || schooltype =='U') && svo.h_school_end_type=='졸업'}">selected</c:if>>졸업</option>
										<option
											<c:if test="${(schooltype =='H' || schooltype =='U') && svo.h_school_end_type=='재학중'}">selected</c:if>>재학중</option>
										<option
											<c:if test="${(schooltype =='H' || schooltype =='U') && svo.h_school_end_type=='휴학중'}">selected</c:if>>휴학중</option>
										<option
											<c:if test="${(schooltype =='H' || schooltype =='U') && svo.h_school_end_type=='수료'}">selected</c:if>>수료</option>
										<option
											<c:if test="${(schooltype =='H' || schooltype =='U') && svo.h_school_end_type=='중퇴'}">selected</c:if>>중퇴</option>
										<option
											<c:if test="${(schooltype =='H' || schooltype =='U') && svo.h_school_end_type=='자퇴'}">selected</c:if>>자퇴</option>
										<option
											<c:if test="${(schooltype =='H' || schooltype =='U') && svo.h_school_end_type=='졸업예정'}">selected</c:if>>졸업예정</option>
									</select>
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">
										전공계열<span class="small font-italic text-danger">필수</span>
									</div>
									<select class="input_text" name="h_school_major2"
										id="h_school_major">
										<option selected disabled="disabled">전공 계열 선택</option>
										<option value="문과계열" <c:if test="${(schooltype =='H' || schooltype =='U') && svo.h_school_major=='문과계열'}">selected</c:if>>문과계열</option>
										<option value="이과계열" <c:if test="${(schooltype =='H' || schooltype =='U') && svo.h_school_major=='이과계열'}">selected</c:if>>이과계열</option>
										<option value="전문(실업)계" <c:if test="${(schooltype =='H' || schooltype =='U') && svo.h_school_major=='전문(실업)계'}">selected</c:if>>전문(실업)계</option>
										<option value="예체능계" <c:if test="${(schooltype =='H' || schooltype =='U') && svo.h_school_major=='예체능계'}">selected</c:if>>예체능계</option>
										<option value="특성화/마이스터고" <c:if test="${(schooltype =='H' || schooltype =='U') && svo.h_school_major=='특성화/마이스터고'}">selected</c:if>>특성화/마이스터고</option>
										<option value="특수목적고" <c:if test="${(schooltype =='H' || schooltype =='U') && svo.h_school_major=='특수목적고'}">selected</c:if>>특수목적고</option>

									</select>
								</div>
							</div>
							<div id="universityinfo"
								style="display: <c:if test="${schooltype !='U'} }">none</c:if>">
								<h3 style="margin-bottom: 20px">대학/대학원 정보 입력</h3>
								<div class="row m-0 mb-4">
									<div class="input_title">
										대학<span class="small font-italic text-danger">필수</span>
									</div>
									<select class="input_text" name="schooltype" id="u_schooltype">
										<option <c:if test="${schooltype =='U' && svo.schooltype =='대학교(2,3년)'}">selected</c:if>>대학교(2,3년)</option>
										<option <c:if test="${schooltype =='U' && svo.schooltype =='대학교(4년)'}">selected</c:if>>대학교(4년)</option>
										<option <c:if test="${schooltype =='U' && svo.schooltype =='대학원(석사)'}">selected</c:if>>대학원(석사)</option>
										<option <c:if test="${schooltype =='U' && svo.schooltype =='대학원(박사)'}">selected</c:if>>대학원(박사)</option>
									</select>
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">
										학교명<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text" name="school_name"
										id="u_school_name" placeholder="대학교명 입력" value="<c:if test="${schooltype =='U'}">${svo.school_name}</c:if>"/>
								</div>

								<div class="row m-0 mb-4">
									<div class="input_title">
										지역<span class="small font-italic text-danger">필수</span>
									</div>
									<select class="input_text" name="school_location"
										id="u_school_location">
										<option disabled="disabled">지역 선택</option>
										<option value="서울"
											<c:if test="${schooltype =='U' && svo.school_location =='서울'}">selected</c:if>>서울</option>
										<option value="경기"
											<c:if test="${schooltype =='U' && svo.school_location =='경기'}">selected</c:if>>경기</option>
										<option value="광주"
											<c:if test="${schooltype =='U' && svo.school_location =='광주'}">selected</c:if>>광주</option>
										<option value="대구"
											<c:if test="${schooltype =='U' && svo.school_location =='대구'}">selected</c:if>>대구</option>
										<option value="대전"
											<c:if test="${schooltype =='U' && svo.school_location =='대전'}">selected</c:if>>대전</option>
										<option value="부산"
											<c:if test="${schooltype =='U' && svo.school_location =='부산'}">selected</c:if>>부산</option>
										<option value="울산"
											<c:if test="${schooltype =='U' && svo.school_location =='울산'}">selected</c:if>>울산</option>
										<option value="인천"
											<c:if test="${schooltype =='U' && svo.school_location =='인천'}">selected</c:if>>인천</option>
										<option value="강원"
											<c:if test="${schooltype =='U' && svo.school_location =='강원'}">selected</c:if>>강원</option>
										<option value="경남"
											<c:if test="${schooltype =='U' && svo.school_location =='경남'}">selected</c:if>>경남</option>
										<option value="경북"
											<c:if test="${schooltype =='U' && svo.school_location =='경북'}">selected</c:if>>경북</option>
										<option value="전남"
											<c:if test="${schooltype =='U' && svo.school_location =='전남'}">selected</c:if>>전남</option>
										<option value="충북"
											<c:if test="${schooltype =='U' && svo.school_location =='충북'}">selected</c:if>>충북</option>
										<option value="충남"
											<c:if test="${schooltype =='U' && svo.school_location =='충남'}">selected</c:if>>충남</option>
										<option value="제주"
											<c:if test="${schooltype =='U' && svo.school_location =='제주'}">selected</c:if>>제주</option>
										<option value="세종"
											<c:if test="${schooltype =='U' && svo.school_location =='세종'}">selected</c:if>>세종</option>

									</select>
								</div>

								<div class="row m-0 mb-4">
									<div class="input_title">
										재학기간<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_date" name="school_start"
										id="u_school_start" placeholder="YYYYMM" value="<c:if test="${schooltype =='U'}">${svo.school_start}</c:if>" /> <select
										class="input_date" name="school_start_type"
										id="u_school_start_type" >
										<option <c:if test="${schooltype =='U' && svo.school_start_type =='입학'}">selected</c:if>>입학</option>
										<option <c:if test="${schooltype =='U' && svo.school_start_type =='편입'}">selected</c:if>>편입</option>
									</select> <span
										style="font-size: 20px; width: 40px; text-align: center;">
										- </span> <input type="text" class="input_date" name="school_end"
										id="u_school_end" placeholder="YYYYMM" value="<c:if test="${schooltype =='U'}">${svo.school_end}</c:if>" /> <select
										class="input_date" name="school_end_type"
										id="u_school_end_type">
										<option <c:if test="${schooltype =='U' && svo.school_end_type =='졸업'}">selected</c:if>>졸업</option>
										<option <c:if test="${schooltype =='U' && svo.school_end_type =='재학중'}">selected</c:if>>재학중</option>
										<option <c:if test="${schooltype =='U' && svo.school_end_type =='휴학중'}">selected</c:if>>휴학중</option>
										<option <c:if test="${schooltype =='U' && svo.school_end_type =='수료'}">selected</c:if>>수료</option>
										<option <c:if test="${schooltype =='U' && svo.school_end_type =='중퇴'}">selected</c:if>>중퇴</option>
										<option <c:if test="${schooltype =='U' && svo.school_end_type =='자퇴'}">selected</c:if>>자퇴</option>
										<option <c:if test="${schooltype =='U' && svo.school_end_type =='졸업예정'}">selected</c:if>>졸업예정</option>
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
									<c:if test="${schooltype =='U'}">
										<script>
											$(function () {
												$("#u_main_major_type").val(${svo.main_major_type });
											});
										</script>
									</c:if>
									<button type="button" id="addmajor" <c:if test="${svo.sub_type != null}">style="display:none"</c:if>>전공 추가</button>
								</div>
								
								<div class="row m-0 mb-4">
									<input type="text" class="input_text2" name="main_major_name"
										id="u_main_major_name" style="width: 350px"
										placeholder="전공학과명 입력" value="<c:if test="${schooltype =='U'}">${svo.main_major_name}</c:if>" />
								</div>

								<div id="submajor" <c:if test="${svo.sub_type == null}">style="display:none"</c:if>">
									<div class="row m-0 mb-2">
										<div class="input_title">
											전공<span class="small font-italic text-danger">필수</span>
										</div>
										<select class="input_date" style="text-align: center"
											value="전공선택" name="sub_type" id="u_sub_type">
											<option selected disabled="disabled">전공 구분 선택</option>
											<option <c:if test="${schooltype =='U' && svo.sub_type =='주전공'}">selected</c:if>>주전공</option>
											<option <c:if test="${schooltype =='U' && svo.sub_type =='복수전공'}">selected</c:if>>복수전공</option>
											<option <c:if test="${schooltype =='U' && svo.sub_type =='이중전공'}">selected</c:if>>이중전공</option>
										</select> <select class="input_text" name="sub_major_type"
											id="u_sub_major_type">
											<option selected disabled="disabled">전공 선택</option>
										</select>
										<button type="button" id="delmajor">삭제</button>
									</div>
									<div class="row m-0 mb-4">
										<input type="text" class="input_text2" name="sub_major_name"
											id="u_sub_major_name" style="width: 350px"
											placeholder="전공학과명 입력" value="<c:if test="${schooltype =='U'}">${svo.sub_major_name}</c:if>" />
									</div>
								</div>



								<div class="row m-0 mb-4">
									<div class="input_title">주/야간</div>
									<select class="input_text" name="day_and_night"
										id="u_day_and_night">
										<option <c:if test="${schooltype =='U' && svo.day_and_night =='주간'}">selected</c:if>>주간</option>
										<option <c:if test="${schooltype =='U' && svo.day_and_night =='야간'}">selected</c:if>>야간</option>
									</select>
								</div>

								<div class="row m-0 mb-4">
									<div class="input_title">학점</div>
									<input type="text" class="input_date" name="score" id="u_score"
										placeholder="학점입력"  value="<c:if test="${schooltype =='U'}">${svo.score}</c:if>"/> <select class="input_date"
										name="score_type" id="u_score_type" style="width: 130px">
										<option selected disabled="disabled">기준학점선택</option>
										<option <c:if test="${schooltype =='U' && svo.score_type =='4.0'}">selected</c:if>>4.0</option>
										<option <c:if test="${schooltype =='U' && svo.score_type =='4.3'}">selected</c:if>>4.3</option>
										<option <c:if test="${schooltype =='U' && svo.score_type =='4.5'}">selected</c:if>>4.5</option>
										<option <c:if test="${schooltype =='U' && svo.score_type =='5.0'}">selected</c:if>>5.0</option>
										<option <c:if test="${schooltype =='U' && svo.score_type =='7.0'}">selected</c:if>>7.0</option>
										<option <c:if test="${schooltype =='U' && svo.score_type =='100'}">selected</c:if>>100</option>
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
										<input type="radio" name="careerselect" id="new" value="N" <c:if test="${careertype =='N' }"> checked</c:if>>
										신입
									</label> <label class="btn btn-outline-primary" style="width: 200px">
										<input type="radio" name="careerselect" id="experience"
										value="E" <c:if test="${careertype =='E' }"> checked</c:if>> 경력
									</label>

								</div>
							</div>
							<div id="experienceinfo" class="bg-white" <c:if test="${careertype =='N' }">style="display: none"</c:if>>
								<hr />
								<div class="row m-0 mb-4">
									<div class="input_title">
										회사명<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text" name="company_name"
										id="company_name" placeholder="회사명 입력" value="<c:if test="${careertype =='E'}">${careervo.company_name}</c:if>"/>
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">
										재직기간<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_date" name="company_start"
										id="company_start" placeholder="YYYYMM" value="<c:if test="${careertype =='E'}">${careervo.company_start}</c:if>"/> <span
										style="font-size: 20px; width: 40px; text-align: center;">
										~ </span> <input type="text" class="input_date" name="company_end"
										id="company_end" placeholder="YYYYMM" value="<c:if test="${careertype =='E'}">${careervo.company_end}</c:if>" /> <select
										class="input_date" name="company_end_type"
										id="company_end_type">
										<option <c:if test="${careertype =='E' && careervo.company_end_type =='퇴사'}">selected</c:if>>퇴사</option>
										<option <c:if test="${careertype =='E' && careervo.company_end_type =='재직중'}">selected</c:if>>재직중</option>
									</select>
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">퇴사사유</div>
									<select class="input_text" name="fire_type" id="fire_type">
										<option selected disabled="disabled">퇴사사유 선택</option>
										<option <c:if test="${careertype =='E' && careervo.fire_type =='업직종 전환'}">selected</c:if>>업직종 전환</option>
										<option <c:if test="${careertype =='E' && careervo.fire_type =='근무조건'}">selected</c:if>>근무조건</option>
										<option <c:if test="${careertype =='E' && careervo.fire_type =='경영악화'}">selected</c:if>>경영악화</option>
										<option <c:if test="${careertype =='E' && careervo.fire_type =='계약만료'}">selected</c:if>>계약만료</option>
										<option <c:if test="${careertype =='E' && careervo.fire_type =='출산/육아'}">selected</c:if>>출산/육아</option>
										<option <c:if test="${careertype =='E' && careervo.fire_type =='학업'}">selected</c:if>>학업</option>
										<option <c:if test="${careertype =='E' && careervo.fire_type =='유학'}">selected</c:if>>유학</option>
										<option <c:if test="${careertype =='E' && careervo.fire_type =='개인사정'}">selected</c:if>>개인사정</option>
									</select>
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">
										직급/직책<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text" name="company_position"
										id="company_position" data-toggle="modal"
										data-target="#positionmodal" placeholder="직급/직책" readonly value="<c:if test="${careertype =='E'}">${careervo.company_position}</c:if>" />
									<input type="text" class="input_date" name="company_year"
										id="company_year" placeholder="년차" maxlength="2" value="<c:if test="${careertype =='E'}">${careervo.company_year}</c:if>">
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">
										직종<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text" name="occupation_type"
										data-toggle="modal" data-target="#occupation_type_modal"
										id="occupation_type" placeholder="직종선택" value="<c:if test="${careertype =='E'}">${careervo.occupation_type}</c:if>" />
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">근무지역</div>
									<select class="input_text" name="company_location"
										id="company_location2">
										<option selected disabled="disabled">지역 선택</option>
										<option value="서울"
											<c:if test="${careertype =='E' && careervo.company_location =='서울'}">selected</c:if>>서울</option>
										<option value="경기"
											<c:if test="${careertype =='E' && careervo.company_location =='경기'}">selected</c:if>>경기</option>
										<option value="광주"
											<c:if test="${careertype =='E' && careervo.company_location =='광주'}">selected</c:if>>광주</option>
										<option value="대구"
											<c:if test="${careertype =='E' && careervo.company_location =='대구'}">selected</c:if>>대구</option>
										<option value="대전"
											<c:if test="${careertype =='E' && careervo.company_location =='대전'}">selected</c:if>>대전</option>
										<option value="부산"
											<c:if test="${careertype =='E' && careervo.company_location =='부산'}">selected</c:if>>부산</option>
										<option value="울산"
											<c:if test="${careertype =='E' && careervo.company_location =='울산'}">selected</c:if>>울산</option>
										<option value="인천"
											<c:if test="${careertype =='E' && careervo.company_location =='인천'}">selected</c:if>>인천</option>
										<option value="강원"
											<c:if test="${careertype =='E' && careervo.company_location =='강원'}">selected</c:if>>강원</option>
										<option value="경남"
											<c:if test="${careertype =='E' && careervo.company_location =='경남'}">selected</c:if>>경남</option>
										<option value="경북"
											<c:if test="${careertype =='E' && careervo.company_location =='경북'}">selected</c:if>>경북</option>
										<option value="전남"
											<c:if test="${careertype =='E' && careervo.company_location =='전남'}">selected</c:if>>전남</option>
										<option value="충북"
											<c:if test="${careertype =='E' && careervo.company_location =='충북'}">selected</c:if>>충북</option>
										<option value="충남"
											<c:if test="${careertype =='E' && careervo.company_location =='충남'}">selected</c:if>>충남</option>
										<option value="제주"
											<c:if test="${careertype =='E' && careervo.company_location =='제주'}">selected</c:if>>제주</option>
										<option value="세종"
											<c:if test="${careertype =='E' && careervo.company_location =='세종'}">selected</c:if>>세종</option>

									</select>

								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">근무부서</div>
									<input type="text" class="input_text" name="company_department"
										id="company_department" placeholder="근무부서 입력" value="<c:if test="${careertype =='E'}">${careervo.company_department}</c:if>" />
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">연봉</div>
									<input type="text" class="input_date" name="company_salary"
										id="company_salary" placeholder="연봉 입력" value="<c:if test="${careertype =='E'}">${careervo.company_salary}</c:if>"/> <select
										class="input_date" name="company_salary_type"
										id="company_salary_type" >
										<option <c:if test="${careertype =='E' && careervo.company_salary_type =='원'}">selected</c:if>>원</option>
										<option <c:if test="${careertype =='E' && careervo.company_salary_type =='엔'}">selected</c:if>>엔</option>
										<option <c:if test="${careertype =='E' && careervo.company_salary_type =='달러'}">selected</c:if>>달러</option>
									</select>
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">담당업무</div>
									<input type="text" class="input_text" name="company_worktype"
										id="company_worktype" style="width: 600px"
										placeholder="담당 업무 입력" value="<c:if test="${careertype =='E'}">${careervo.company_worktype}</c:if>" >
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
										<input type="text" class="input_text" name=""
											placeholder="자격증명 입력">
									</div>
									<div class="row m-0 mb-4">
										<div class="input_title">발행처/기관</div>
										<input type="text" class="input_text" name=""
											placeholder="발행처/기관 입력">
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
										<input type="text" class="input_date" name=""
											placeholder="YYYYMM" />
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
										<input type="text" class="input_text" name=""
											placeholder="시험종류입력">
									</div>
									<div class="row m-0 mb-4">
										<div class="input_title">점수입력</div>
										<input type="text" class="input_text" name=""
											placeholder="점수입력">
									</div>
									<div class="row m-0 mb-4">
										<div class="input_title">급수입력</div>
										<input type="text" class="input_text" name=""
											placeholder="급수입력">
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
										<input type="text" class="input_date" name=""
											placeholder="YYYYMM" />
									</div>
								</div>
								<div class="certificate_type3" style="display: none">
									<div class="row m-0 mb-4">
										<div class="input_title">수상명</div>
										<input type="text" class="input_text" name=""
											placeholder="수상명입력">
									</div>
									<div class="row m-0 mb-4">
										<div class="input_title">수여기관</div>
										<input type="text" class="input_text" name=""
											placeholder="수여기관입력">
									</div>
									<div class="row m-0 mb-4">
										<div class="input_title">수상/공모일</div>
										<input type="text" class="input_date" name=""
											placeholder="YYYYMM" />
									</div>
								</div>
								<hr />
							</div>
							<div id="certificateinfoContent"></div>
							<button type="button" id="addcertificate"
								class="btn btn-primary btn-block">자격증 추가</button>
						</div>


						<div id="careerdescriptioninfo" class="bg-white">
							<h3>경력기술서</h3>

							<div class="p-5">
								<textarea rows="13" cols="100" name="content" id="content">${content }</textarea>
								<div>
									<span style="color: #aaa;" id="counter">(0 / 최대 1000자)</span>
								</div>
							</div>
						</div>

						<div id="portfolioinfo" class="bg-white">
							<h3>포트폴리오 및 기타문서</h3>
							<hr />
							<input type='file' id="imgInp" name="url"
								class="btn btn-primary row ml-5" />
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
								<textarea rows="13" cols="100" name="" class="form-control"
									onkeyup="countText()" style="border: 1px lightblue solid;"></textarea>
								<div>
									<span style="color: #aaa;">(0 / 최대 1000자)</span>
								</div>
							</div>
							<div id="selfintrocontent"></div>
							<button type="button" id="addselfintro"
								class="btn btn-primary btn-block">자기소개 항목 추가</button>
						</div>

						<%@ include file="/inc/hopeinfo.jspf"%>

						<input type="submit" id="submit"
							class="btn btn-primary btn-block mt-5" style="font-size: 2.5em"
							value="이력서  수정" />
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



