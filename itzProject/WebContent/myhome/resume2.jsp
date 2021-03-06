<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
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
<link rel="stylesheet" href="css/joboffer.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
<script src="jquery-ui.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script src="<%=request.getContextPath()%>/myhome/js/companyresume.js"
	type="text/javascript"></script>
<script>
$(function () {
	$(document).on("click","#picdel",function() {
		if (confirm("삭제하시겠습니까?")) {
			$.ajax({
		        type : 'post',
		        url : 'corpimgDel.do',
		        data : {corpno : ${corpno}},
		       	success : function (result) {
		       		$("#havePic").css("display", "none");
					$("#noPic").css("display", "block");
	  	        }							     
		    });
			
		}
	});
	$("#addPicBtn").click(function() {
		window.open("<%=request.getContextPath()%>/myhome/corpPic.do","addPicBtn",'width=900, height=500');
	});
	


});

</script>
</head>
<body class="bg-light" onload="optionage()">

	<div style="height: 70px"></div>

	<div class="tab-pane cotainer-fuild" id="myhomemain"
		style="margin-top: 40px; margin-left: 50px; margin-right: 50px">
		<div class="row p-2 center-block">
			<!-- 왼쪽 -->
			<div class="col-2">

				<!-- 왼쪽의 메뉴 -->
				<div id="accordion" class="shadow">
					<!-- 이력서 -->
					<div class="card">
						<div class="card-header bg-white">
							<a class="card-link bg-white" data-toggle="collapse"
								href="#resumeMenu" id="resume"> 채용 등록</a>
						</div>

					</div>



				</div>
			</div>
			<!-- 중간 정보창 -->
			<div class="col bg-light mr-3">
				<!-- 탭 -->
				<ul class="nav nav-tabs nav-justified mb-2" hidden>
					<li class="nav-item flex-fill m-0"><a class="nav-link"
						data-toggle="tab" href="#situation"></a></li>
					<li class="nav-item flex-fill m-0"><a class="nav-link active"
						data-toggle="tab" href="#Registration"></a></li>
					<li class="nav-item flex-fill m-0"><a class="nav-link"
						data-toggle="tab" href="#state"></a></li>
				</ul>
				<div class="tab-content">
					<!-- 이력서 현황 -->
					<div class="tab-pane container" id="situation">
						<div class="container-fluid bg-white">
							<h2>채용 등록현황</h2>

							<h6>
								총 <span style="color: red">3</span>건
							</h6>
							<div class="container-fluid img-thumbnail shadow mb-2"
								style="background: white; height: 100px">
								<a href="#">채용공고 1</a>
							</div>
							<div class="container-fluid img-thumbnail shadow mb-2"
								style="background: white; height: 100px">
								<a href="#">채용공고 2</a>
							</div>
							<div class="container-fluid img-thumbnail shadow mb-2"
								style="background: white; height: 100px">
								<a href="#">채용공고 3</a>
							</div>
							<button type="button" class="btn btn-primary btn-block"
								id="gohire">채용 등록하기</button>


						</div>
					</div>

					<!-- 채용 등록 -->
					<div class="tab-pane container active" id="Registration">
						<form method="post" id="resumeFrm"
							action="<%=request.getContextPath()%>/myhome/resume2Ok.do">
							<div class="sticky-top bg-white"
								style="float: right; margin-right: -220px; top: 98px; width: 220px;">
								<h3>채용 등록 항목</h3>
								<hr />
								<ul class="list-group">
									<li
										class="list-group-item d-flex justify-content-between align-items-center">
										<a href="#" onclick="fnMove(managerinfo)">담당자 정보</a>
									</li>

									<li
										class="list-group-item d-flex justify-content-between align-items-center">
										<a href="#" onclick="fnMove(recruitfieldinfo)">모집분야</a>
									</li>
									<li
										class="list-group-item d-flex justify-content-between align-items-center">
										<a href="#" onclick="fnMove(qualificationinfo)">자격/조건</a>
									</li>
									<li
										class="list-group-item d-flex justify-content-between align-items-center">
										<a href="#" onclick="fnMove(job_progressinfo)">채용절차</a>
									</li>



								</ul>
							</div>

							<input type="text" class="p-3 mb-5"
								style="font-size: 1.em; border: 5px gray solid; width: 100%"
								name="cititle" placeholder="채용 공고 제목을 입력하세요">


							<div id="managerinfo" class="bg-white">
								<h3>담당자정보</h3>
								<hr />
								<!-- 사진 -->
								<div id="picture">
									<div id="havePic"
										<c:if test="${corp_pic ==null || corp_pic =='' }"> style='display:none'</c:if>>
										<button type="button" class="close" id="picdel">&times;</button>
										<img
											src=<c:if test="${corp_pic !=null && corp_pic !='' }">"<%=request.getContextPath()%>/myhome/corpPic/${corp_pic}" style='display:block'</c:if>
											<c:if test="${corp_pic ==null || corp_pic =='' }">"" style='display:none'</c:if>
											id="userPic" class="img-thumbnail" />
									</div>

									<div id="noPic"
										style="display: 
								<c:if test="${corp_pic !=null && corp_pic !='' }">none</c:if>
								<c:if test="${corp_pic ==null || corp_pic =='' }">block</c:if> ">
										<input type="button" class="btn" id="addPicBtn" value="사진추가"
											style="height: 100%; width: 100%" />
									</div>
								</div>

								<div class="row m-0 mb-4">
									<div class="input_title">
										담당자명<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text" name="ciname"
										placeholder="담당자명 입력" value="${vo.corp_charge }" />
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">
										전화번호<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text" name="citel"
										placeholder=" 전화번호" value="${vo.tel }" />

								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">휴대폰</div>
									<input type="text" class="input_text" name="ciphone"
										placeholder=" 휴대폰" />
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">
										이메일<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text" name="ciemail"
										placeholder=" 이메일" value="${vo.corp_email }" />
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">
										근무지역<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_text" name="ciwa"
										placeholder=" 주소" value="${vo.company_addr1 }" />
									<div class="custom-control custom-checkbox ml-5 p-2">
										<input type="checkbox" class="custom-control-input"
											id="citelecommuting" name="citelecommuting"> <label
											class="custom-control-label" for="citelecommuting">재택근무
											가능</label>
									</div>


									<input type="text" class="input_text2" name="ciwa2"
										placeholder=" 상세주소" value="${vo.company_addr2 }" />
								</div>

							</div>

							<div id="recruitfieldinfo" class="bg-white">
								<h3>모집분야</h3>
								<hr />
								<div id="recruitfieldcontent">
									<div id="recruitfieldform" style="display: block">
										<div class="row m-0 mb-4">
											<div class="input_title">
												분야명<span class="small font-italic text-danger">필수</span>
											</div>

											<input type="text" class="input_text" name="rfname"
												id="rfname" placeholder="예)웹프로그래머"> <input
												type="text" class="input_date" name="rfcount" id="rfcount"
												placeholder="0">명 모집
										</div>
										<div class="row m-0 mb-4">
											<div class="input_title">
												경력여부<span class="small font-italic text-danger">필수</span>
											</div>
											<div class="custom-control custom-checkbox ml-5 p-2">
												<input type="checkbox" class="custom-control-input"
													id="customCheck3" name="rfcareerstatus" value="1">
												<label class="custom-control-label" for="customCheck3">신입</label>
											</div>
											<div class="custom-control custom-checkbox ml-5 p-2">
												<input type="checkbox" class="custom-control-input"
													id="customCheck4" name="rfcareerstatus" value="2">
												<label class="custom-control-label" for="customCheck4">경력</label>
											</div>
											<div class="custom-control custom-checkbox ml-5 p-2">
												<input type="checkbox" class="custom-control-input"
													id="customCheck5" name="rfcareerstatus" value="3">
												<label class="custom-control-label" for="customCheck5">경력무관</label>
											</div>

										</div>

										<div class="row m-0 mb-4">
											<div class="input_title">담당업무</div>
											<input type="text" class="input_text2"
												style="margin-left: 0px" name="rfassignedtask"
												id="rfassignedtask" placeholder="담당업무를 기재할 수록 지원율이 높아집니다.">
										</div>

										<div class="row m-0 mb-4">
											<div class="input_title">
												<input type="checkbox" id="work_space"
													name="rfworkingdepartmentChk" />근무부서
											</div>
											<input type="text" class="input_text2" id="work_space_text"
												name="rfworkingdepartment"
												style="margin-left: 0px; display: none"
												placeholder="근무부서를 입력해 주세요">
										</div>

										<div class="row m-0 mb-4">
											<div class="input_title">
												<input type="checkbox" id="work_position" name="rfjobpositionChk" />직급직책
											</div>
											<input type="text" class="input_text" data-toggle="modal"
												data-target="#positionmodal" id="user_company_position"
												name="rfjobposition" style="display: none"
												placeholder="직급/직책" readonly />
										</div>

										<div class="row m-0 mb-4">
											<div class="input_title">
												<input type="checkbox" id="preferential" name="rfpreferentialChk" />필수/우대
											</div>
											<input type="text" class="input_text2" id="preferential_text"
												name="rfpreferential"
												style="margin-left: 0px; display: none"
												placeholder="필수/우대사항을 입력해주세요">
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
										<hr />
									</div>

								</div>
							</div>

							<div id="qualificationinfo" class="bg-white mb-4 pb-1">
								<h3>자격/조건</h3>
								<hr />
								<div class="row m-0 mb-4">
									<div class="input_title">
										지원자학력<span class="small font-italic text-danger">필수</span>
									</div>
									<select class="input_text custom-select"
										name="qcacademicbackground" id="qcacademicbackground"
										style="width: 200px">
										<option selected>학력 무관</option>
										<option>고등학교졸업이상</option>
										<option>대학졸업(2,3년)이상</option>
										<option>대학교졸업(4년)이상</option>
										<option>석사졸업이상</option>
										<option>박사졸업</option>
									</select> <input type="text" class="input_text" style="width: 300px"
										name="qcacdemicdetail" placeholder="(선택)기타 학력사항" />
									<div class="custom-control custom-checkbox ml-5 p-2">
										<input type="checkbox" class="custom-control-input"
											id="customCheck" name="qcbeforegraduation" value="졸업예정자 지원가능"> <label
											class="custom-control-label" for="customCheck">졸업예정자
											지원가능</label>
									</div>
								</div>

								<div class="row m-0 mb-1">
									<div class="input_title">
										연봉/급여<span class="small font-italic text-danger">필수</span>
									</div>
									<select class="input_date custom-select" name="qcsalarytype"
										id="qualification_salary">
										<option selected>연봉</option>
										<option>월급</option>
										<option>주급</option>
										<option>일급</option>
										<option>시급</option>
										<option>건당</option>
									</select> <select name="qcsalary" class="input_date custom-select"
										style="width: 200px" id="year_salary">
										<option selected disabled="disabled">급여를 선택하세요</option>
										<option>1,400 만원 이하</option>
										<option>1,400~1,600만원</option>
										<option>1,600~1,800만원</option>
										<option>1,800~2,000만원</option>
										<option>2,000~2,200만원</option>
										<option>2,200~2,400만원</option>
										<option>2,400~2,600만원</option>
										<option>2,600~2,800만원</option>
										<option>2,800~3,000만원</option>
										<option>3,000~3,200만원</option>
										<option>3,200~3,400만원</option>
										<option>3,400~3,600만원</option>
										<option>3,600~3,800만원</option>
										<option>3,800~4,000만원</option>
										<option>4,000~5,000만원</option>
										<option>5,000~6,000만원</option>
										<option>6,000~7,000만원</option>
										<option>7,000~8,000만원</option>
										<option>8,000~9,000만원</option>
										<option>9,000~1억원</option>
										<option>1억원 이상</option>
										<option>면접 후 결정</option>
										<option>회사내규에 따름</option>
									</select>
									<div id="not_year_salary"
										style="margin-left: 0px; width: 300px; height: 40px; display: none">
										<input type="text"
											style="margin-left: 0px; height: 40px; width: 100px"
											name="qcsalary2" placeholder="금액"><span class="p-2"
											id="won_manwon">원</span>
									</div>

									<input type="text" class="form-control" name="qcdescription"
										style="margin-left: 20px; height: 40px; width: 400px"
										placeholder="(선택)기타 급여사항">
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title"></div>
									<div id="noti_salary">
										<p class="noti_salary">
											<strong id="salary_msg">일 8시간 기준 최저일급 약 68,720원입니다.</strong>
											<a href="http://www.minimumwage.go.kr/index.jsp"
												target="_blank" class="link_info" title="새창으로 이동">최저임금제도
												안내</a><br> 최저임금을 준수하지 않는 경우, 공고 강제 마감 및 행정처분을 받을 수 있습니다.
										</p>
									</div>
								</div>

								<div class="row m-0 mb-4">
									<div class="input_title">
										근무형태<span class="small font-italic text-danger">필수</span>
									</div>
									<div class="d-flex justify-content-center">
										<div class="btn-group btn-group-toggle" data-toggle="buttons">
											<label class="btn btn-outline-primary"> <input
												type="checkbox" name="qcservicetype" id="permanentchk"
												value="정규직"> 정규직
											</label> <label class="btn btn-outline-primary"> <input
												type="checkbox" name="qcservicetype" id="contractchk"
												value="계약직"> 계약직
											</label> <label class="btn btn-outline-primary"> <input
												type="checkbox" name="qcservicetype" id="albachk"
												value="아르바이트"> 아르바이트
											</label> <label class="btn btn-outline-primary"> <input
												type="checkbox" name="qcservicetype" id="internchk"
												value="인턴직"> 인턴직
											</label><label class="btn btn-outline-primary"> <input
												type="checkbox" name="qcservicetype" id="freelancer"
												value="프리랜서"> 프리랜서
											</label><label class="btn btn-outline-primary"> <input
												type="checkbox" name="qcservicetype" id="parttimechk"
												value="파트"> 파트
											</label><label class="btn btn-outline-primary"> <input
												type="checkbox" name="qcservicetype" id="commissionchk"
												value="위촉직"> 위촉직
											</label><label class="btn btn-outline-primary"> <input
												type="checkbox" name="qcservicetype" id="dispatchchk"
												value="파견직"> 파견직
											</label><label class="btn btn-outline-primary"> <input
												type="checkbox" name="qcservicetype" id="full_timechk"
												value="전임"> 전임
											</label><label class="btn btn-outline-primary"> <input
												type="checkbox" name="qcservicetype" id="armychk"
												value="병역특례"> 병역특례
											</label><label class="btn btn-outline-primary"> <input
												type="checkbox" name="qcservicetype" id="educhk" value="교육생">
												교육생
											</label><label class="btn btn-outline-primary"> <input
												type="checkbox" name="qcservicetype" id="overseachk"
												value="해외취업"> 해외취업
											</label>
										</div>
									</div>
									<div class="row m-0 mb-4" id="qaz">
										<div class="input_title"></div>
										<div class="rounded-lg" style="width: 900px">
											<div class="row m-0 mb-2 p-2 " id="permanentinfo">
												<div class="input_title p-2 text-center">
													<strong>정규직</strong>
												</div>
												<div class="input_date p-2 text-center">수습기간</div>
												<input type="text" class="input_date" name="permanentinfo"><span
													class="p-2">개월</span>
											</div>


											<div class="row m-0 mb-2 p-2" id="contractinfo"
												style="border-top: 1px solid #fff;">
												<div class="input_title p-2 text-center">
													<strong>계약직</strong>
												</div>
												<div class="input_date p-2 text-center">계약기간</div>
												<input type="text" class="input_date" name="contractinfo"><span
													class="p-2 mr-4">개월</span>

												<div class="custom-control custom-checkbox ml-3 mr-4 p-2">
													<input type="checkbox" class="custom-control-input"
														id="customCheck7" name="contractinfo" value="정규직 전환가능">
													<label class="custom-control-label" for="customCheck7">정규직
														전환가능</label>
												</div>
												<div class="custom-control custom-checkbox mr-4 p-2">
													<input type="checkbox" class="custom-control-input"
														id="customCheck8" name="contractinfo" value="기간제">
													<label class="custom-control-label" for="customCheck8">기간제</label>
												</div>

												<div class="custom-control custom-checkbox p-2">
													<input type="checkbox" class="custom-control-input"
														id="customCheck9" name="contractinfo" value="무기계약직">
													<label class="custom-control-label" for="customCheck9">무기계약직</label>
												</div>
											</div>


											<div class="row m-0 mb-2 p-2"
												style="border-top: 1px solid #fff;" id="interninfo">
												<div class="input_title p-2 text-center">
													<strong>인턴직</strong>
												</div>
												<div class="input_date p-2 text-center">계약기간</div>
												<input type="text" class="input_date" name="interninfo"><span
													class="p-2 mr-4">개월</span>

												<div class="custom-control custom-checkbox ml-3 mr-4 p-2">
													<input type="checkbox" class="custom-control-input"
														id="customCheck10" name="interninfo" value="정규직 전환가능">
													<label class="custom-control-label" for="customCheck10">정규직
														전환가능</label>
												</div>
											</div>

											<div class="row m-0 mb-2 p-2" id="dispatchinfo"
												style="border-top: 1px solid #fff;">
												<div class="input_title p-2 text-center">
													<strong>파견직</strong>
												</div>
												<div class="input_date p-2 text-center">계약기간</div>
												<input type="text" class="input_date" name="dispatchinfo"><span
													class="p-2 mr-4">개월</span>

												<div class="custom-control custom-checkbox ml-3 mr-4 p-2">
													<input type="checkbox" class="custom-control-input"
														id="customCheck11" name="dispatchinfo" value="정규직 전환가능">
													<label class="custom-control-label" for="customCheck11">정규직
														전환가능</label>
												</div>
											</div>

											<div class="row m-0 mb-2 p-2" id="armyinfo"
												style="border-top: 1px solid #fff;">
												<div class="input_title p-2 text-center">
													<strong>병역특례</strong>
												</div>

												<div class="custom-control custom-checkbox ml-3 mr-4 p-2">
													<input type="checkbox" class="custom-control-input"
														id="customCheck12" name="armyinfo" value="현역"> <label
														class="custom-control-label" for="customCheck12">현역</label>
												</div>
												<div class="custom-control custom-checkbox ml-3 mr-4 p-2">
													<input type="checkbox" class="custom-control-input"
														id="customCheck13" name="armyinfo" value="보충역"> <label
														class="custom-control-label" for="customCheck13">보충역</label>
												</div>
												<div class="custom-control custom-checkbox ml-3 mr-4 p-2">
													<input type="checkbox" class="custom-control-input"
														id="customCheck14" name="armyinfo" value="전문연구원">
													<label class="custom-control-label" for="customCheck14">전문연구원</label>
												</div>
												<div class="custom-control custom-checkbox ml-3 mr-4 p-2">
													<input type="checkbox" class="custom-control-input"
														id="customCheck15" name="armyinfo" value="산업기능요원">
													<label class="custom-control-label" for="customCheck15">산업기능요원</label>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">근무요일</div>
									<select class="input_text custom-select" name="qcworkdate"
										id="work_day" style="width: 200px">
										<option selected disabled="disabled">선택</option>
										<option>주 5일(월~금)</option>
										<option>토요일 격주휴무(월~토)</option>
										<option>주 6일(월~토)</option>
										<option>주 3일(격일제)</option>
										<option>탄력적근무제</option>
										<option>2교대</option>
										<option>3교대</option>
										<option>4교대</option>
									</select>

								</div>
								<div class="row m-0 mb-4">
									<div class="input_title">근무시간</div>
									<select class="input_text custom-select" name="qcworktime"
										id="work_time" style="width: 200px">
										<option selected disabled="disabled">선택</option>
										<option>오전 9시~오후 6시</option>
										<option>오전 8시 30분~오후 5시 30분</option>
										<option>오전 10시~오후 7시</option>
										<option>탄력근무제</option>
									</select>
								</div>
								<div class="row m-0 mb-1">
									<div class="input_title" id="addgenderage">성별,연령 추가입력▽</div>
								</div>
								<div id="gender_age_content" style="display: none">
									<div class="row m-0 mb-3">
										<div class="input_title">성별</div>
										<select class="input_text custom-select" name="qcgender"
											id="select_sex" style="width: 200px">
											<option selected>성별무관</option>
											<option>남성</option>
											<option>여성</option>
										</select>
									</div>
									<div class="row mx-auto mb-3"
										style="width: 800px; display: none" id="gender_law">
										<strong>성차별금지 주요내용</strong>
										<hr />
										<p>모집・채용에서 남녀를 차별하거나, 여성근로자를 채용할 때 직무 수행에 불필요한 용모, 키, 체중등의
											신체조건, 미혼조건을 제시 또는 요구하는 경우 남녀고용평등과 일가정 양립 지원에 관한 법률 위반에 따른
											500만원 이하의 벌금이 부과 될 수 있습니다.</p>
										<table>
											<tr style="border: 1px gray solid">
												<td
													style="height: 100px; width: 100px; border: 1px gray solid; text-align: center"
													class="bg-light">관련법령</td>
												<td>
													<div class="row m-0 mb-2">
														<strong>성차별금지 주요내용</strong>
													</div> 남녀고용평등과 일・가정 양립 지원에 관한 법률 제 7조 1항에 의거 근로자를 모집하거나 채용 시 합리적인
													이유없이 남녀를 차별할 수 없음 < 차별 시 500만원 이하 벌금 >

												</td>
											</tr>
											<tr style="border: 1px gray solid">
												<td
													style="height: 100px; width: 100px; border: 1px gray solid; text-align: center"
													class="bg-light">차별사례</td>
												<td><div class="row m-0 mb-2 p-2">
														특정성을 지칭하는 직종명 등 사용하는 경우, 특정성 배제<br> - 남성 선반공, 병역필 남,
														여성 비서, 미용사 &lt;여성 환영&gt; 등<br> 직종 등 남녀 분리모집 등<br>
														- 관리・사무직 남성 10명, 판매직 여성 5명
													</div></td>
											</tr>
											<tr style="border: 1px gray solid">
												<td
													style="height: 100px; width: 100px; border: 1px gray solid; text-align: center"
													class="bg-light">차별로 보지않는 사례</td>
												<td><div class="row m-0 mb-2 p-2">
														직무 성질상 특정한 성이 불가피한 경우<br> - 남성 역할을 위한 배우, 모델 등<br>
														- 여성 목욕탕의 여성 목욕관리사, 여성장애인・여성환자의 도우미 등<br> - 여성 기숙사의
														여성 사감 등<br>현존하는 차별을 없애거나 고용평등 촉진을 위해 잠정적으로 특정성 우대하는
														조치를 하는 경우
													</div></td>
											</tr>
										</table>
									</div>



									<div class="row m-0 mb-3">
										<div class="input_title">연령</div>
										<select class="input_text custom-select" name="qcage"
											id="select_age" style="width: 200px">
											<option selected>연령무관</option>
											<option>연령제한</option>
										</select> <select class="input_date custom-select" name="qcage_start"
											id="start_age" disabled style="width: 150px">
											<option selected>전체</option>
										</select> <span class="p-2"> ~ </span> <select
											class="input_date custom-select" name="qcage_end"
											id="end_age" disabled style="width: 150px">
											<option selected>전체</option>
										</select>
									</div>
									<div class="row mx-auto mb-3"
										style="width: 800px; display: none" id="age_law">
										<strong>연령차별금지 주요내용</strong>
										<hr />
										<p>채용공고에 합리적인 이유 없이 “OO세 이하”, “19OO년 이후 출생자”, “20OO년 졸업자”,
											“대학 졸업 후 2년 이내” 등 직 · 간접적인 연령 제한을 할 수 없게 되었습니다. 모집 · 채용에서
											불합리한 연령 제한 시 고용상 연령차별 금지 및 고령자 고용촉진에 관한 법률 위반에 따른 500만원 이하의
											벌금이 부과될 수 있습니다.</p>
										<table>
											<tr style="border: 1px gray solid">
												<td
													style="height: 100px; width: 100px; border: 1px gray solid; text-align: center"
													class="bg-light">관련법령</td>
												<td>
													<div class="row m-0 mb-2">남녀고용평등과 일・가정 양립 지원에 관한 법률 제
														7조 1항에 의거 근로자를 모집하거나 채용 시 합리적인 이유없이 남녀를 차별할 수 없음 < 차별 시
														500만원 이하 벌금 ></div>

												</td>
											</tr>
											<tr style="border: 1px gray solid">
												<td
													style="height: 100px; width: 100px; border: 1px gray solid; text-align: center"
													class="bg-light">차별사례</td>
												<td><div class="row m-0 mb-2 p-2">지원자의 나이를 제한하거나
														특정 연령층을 선호하는경우</div></td>
											</tr>
											<tr style="border: 1px gray solid">
												<td
													style="height: 100px; width: 100px; border: 1px gray solid; text-align: center"
													class="bg-light">차별로 보지않는 사례</td>
												<td><div class="row m-0 mb-2 p-2">
														직무 성질상 특정 연령기준이 불가피한 경우 (진정직업자격)<br> - 연극 · 영화에서 청년
														역할의 수행을 위한 연령 제한 등<br> <br> 근속기간의 차이를 고려하여 임금이나
														임금 외의 금품과 복리후생에서 합리적인 차등을 두는 경우<br> <br> 법률 등에
														근거한 정년의 설정<br> <br> 이 법이나 다른 법률에 따라 특정 연령집단의
														고용유지 · 촉진을 위한 지원초치를 하는 경우<br>
													</div></td>

											</tr>
										</table>
									</div>
								</div>
							</div>
							<div id="job_progressinfo" class="bg-white pb-1">
								<h3>채용절차</h3>
								<hr />
								<div class="row m-0 mb-3">
									<div class="input_title">
										대표 직무<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" style="width: 70%" id="job_search_btn"
										name="rpjob">

								</div>
								<div class="row m-0 mb-3" id="job_search">
									<div class="input_title"></div>
									12312414

								</div>
								<div class="row m-0 mb-3">
									<div class="input_title">
										접수기간<span class="small font-italic text-danger">필수</span>
									</div>
									<input type="text" class="input_date"
										name="rpregisterdate_start" placeholder="YYYYMM" /><select
										class="input_date custom-select" id="recruit_start_time">

									</select><span style="font-size: 20px; width: 40px; text-align: center;">
										- </span> <input type="text" class="input_date"
										name="rpregisterdate_end" id="user_recruit_end_date"
										placeholder="YYYYMM" /> <select
										class="input_date custom-select" id="recruit_end_time">
									</select> <select id="recruit_state" name="rptype"
										class="custom-select ml-5" style="width: 200px">
										<option>마감일 지정</option>
										<option>채용시 마감</option>
										<option>상시 채용</option>
									</select>
								</div>
								<div class="row m-0 mb-3">
									<div class="input_title">
										지원접수방법<span class="small font-italic text-danger">필수</span>
									</div>
									<div class="d-flex justify-content-center">
										<div class="btn-group btn-group-toggle" data-toggle="buttons">
											<label class="btn btn-outline-primary"> <input
												type="checkbox" name="rpregisterway" id="homepagechk" value="홈페이지">
												홈페이지
											</label> <label class="btn btn-outline-primary"> <input
												type="checkbox" name="rpregisterway" id="mailchk" value="우편">
												우편
											</label> <label class="btn btn-outline-primary"> <input
												type="checkbox" name="rpregisterway" id="offlinechk" value="방문">
												방문
											</label> <label class="btn btn-outline-primary"> <input
												type="checkbox" name="rpregisterway" id="telchk" value="전화"> 전화
											</label><label class="btn btn-outline-primary"> <input
												type="checkbox" name="rpregisterway" id="faxchk" value="FAX">
												FAX
											</label>
										</div>
									</div>
									<div class="row m-0" id="recruit_content">
										<div class="input_title"></div>
										<div class="rounded-lg" style="width: 900px">
											<div class="row m-0 mb-2 p-2 " id="homepageinfo">
												<div class="input_title p-2 text-center">
													<strong>홈페이지주소</strong>
												</div>
												<input type="text" class="input_date" name="rphomepage"
													style="width: 650px" placeholder="홈페이지 주소 입력">
											</div>

											<div class="row m-0 mb-2 p-2" id="faxinfo">
												<div class="input_title p-2 text-center">
													<strong>팩스번호</strong>
												</div>
												<input type="text" class="input_date" name="rpfax"
													style="width: 200px" placeholder="팩스번호 입력">
											</div>

										</div>
									</div>

								</div>
								<div>
									<div class="row m-0">
										<div class="input_title">
											전형절차<span class="small font-italic text-danger">필수</span>
										</div>
										<div class="rounded-lg border border-primary p-3"
											style="height: 80px; width: 800px; font-size: 1.5em;">
											<span class="badge badge-pill badge-secondary">서류</span>
											&nbsp&nbsp&nbsp <span id="paper_title">서류전형</span>
											<button type="button" class="btn btn-primary float-right"
												id="openpaperContent" onclick="papercontentOpen()">열기</button>
										</div>
									</div>
									<div class="row" id="papercontent"
										style="margin: -3px 0px 16px 0px; display: none">
										<div class="input_title"></div>
										<div class="rounded-lg bg-light p-2"
											style="height: 150px; width: 800px;">
											<div class="row m-0 mb-3">
												<div class="input_title">진행절차명</div>
												<input type="text" style="width: 400px"
													id="paper_title_change">
											</div>

											<div class="row m-0">
												<div class="input_title">
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="paper_date_on"> <label
															class="custom-control-label" for="paper_date_on">전형기간</label>
													</div>
												</div>
												<input type="text" id="user_paper_start_date"
													name="rpdocumentdate" style="width: 200px"
													placeholder="YYYYMM" disabled="disabled"> <span
													style="font-size: 20px; width: 40px; text-align: center;">
													- </span> <input type="text" style="width: 200px"
													name="rpdocumentdate" id="user_paper_end_date"
													placeholder="YYYYMM" disabled="disabled" />
											</div>

											<button type="button" class="float-right btn btn-secondary"
												id="paper_save">적용하기</button>

										</div>

									</div>
								</div>

								<div>
									<div class="row m-0">
										<div class="input_title">
											전형절차<span class="small font-italic text-danger">필수</span>
										</div>
										<div class="rounded-lg border border-primary p-3"
											style="height: 80px; width: 800px; font-size: 1.5em;">
											<span class="badge badge-pill badge-secondary">면접</span>
											&nbsp&nbsp&nbsp <span id="interview_title">1차면접</span>
											<button type="button" class="btn btn-primary float-right"
												id="openinterviewContent" onclick="interviewcontentOpen()">열기</button>
										</div>
									</div>
									<div class="row" id="interviewcontent"
										style="margin: -3px 0px 16px 0px; display: none">
										<div class="input_title"></div>
										<div class="rounded-lg bg-light p-2"
											style="height: 150px; width: 800px;">
											<div class="row m-0 mb-3">
												<div class="input_title">진행절차명</div>
												<input type="text" style="width: 400px"
													id="interview_title_change">
											</div>

											<div class="row m-0">
												<div class="input_title">
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="interview_date_on"> <label
															class="custom-control-label" for="interview_date_on">전형기간</label>
													</div>
												</div>
												<input type="text" id="user_interview_start_date"
													name="rpprimaryinterviewdate" style="width: 200px"
													placeholder="YYYYMM" disabled="disabled"> <span
													style="font-size: 20px; width: 40px; text-align: center;">
													- </span> <input type="text" style="width: 200px"
													name="rpprimaryinterviewdate" id="user_interview_end_date"
													placeholder="YYYYMM" disabled="disabled" />
											</div>

											<button type="button" class="float-right btn btn-secondary"
												id="interview_save">적용하기</button>

										</div>

									</div>
								</div>



								<div>
									<div class="row m-0">
										<div class="input_title">
											전형절차<span class="small font-italic text-danger">필수</span>
										</div>
										<div class="rounded-lg border border-primary p-3"
											style="height: 80px; width: 800px; font-size: 1.5em;">
											<span class="badge badge-pill badge-secondary">면접</span>
											&nbsp&nbsp&nbsp <span id="interview_title2">2차면접</span>
											<button type="button" class="btn btn-primary float-right"
												id="openinterviewContent2" onclick="interviewcontentOpen2()">열기</button>
										</div>
									</div>
									<div class="row" id="interviewcontent2"
										style="margin: -3px 0px 16px 0px; display: none">
										<div class="input_title"></div>
										<div class="rounded-lg bg-light p-2"
											style="height: 150px; width: 800px;">
											<div class="row m-0 mb-3">
												<div class="input_title">진행절차명</div>
												<input type="text" style="width: 400px"
													id="interview_title_change2">
											</div>

											<div class="row m-0">
												<div class="input_title">
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="interview_date_on2"> <label
															class="custom-control-label" for="interview_date_on2">전형기간</label>
													</div>
												</div>
												<input type="text" id="user_interview_start_date2"
													name="rpsecondaryinterviewdate" style="width: 200px"
													placeholder="YYYYMM" disabled="disabled"> <span
													style="font-size: 20px; width: 40px; text-align: center;">
													- </span> <input type="text" style="width: 200px"
													name="rpsecondaryinterviewdate"
													id="user_interview_end_date2" placeholder="YYYYMM"
													disabled="disabled" />
											</div>

											<button type="button" class="float-right btn btn-secondary"
												id="interview_save2">적용하기</button>

										</div>

									</div>
								</div>
								<input type="hidden" name="rpdocumentscreening"
									id="rpdocumentscreening" value="서류전형"> <input
									type="hidden" name="rpprimaryinterview" id="rpprimaryinterview"
									value="1차면접"> <input type="hidden"
									name="rpsecondaryinterview" id="rpsecondaryinterview"
									value="2차면접">
								<div class="row m-0">
									<div class="input_title">
										전형절차<span class="small font-italic text-danger">필수</span>
									</div>
									<div class="rounded-lg border border-primary p-3"
										style="height: 80px; width: 800px; font-size: 1.5em;">
										<span class="badge badge-pill badge-danger">합격</span>
										&nbsp&nbsp&nbsp <span>최종합격</span>
									</div>
								</div>
							</div>
							<button type="submit" class="btn btn-primary btn-block"
								style="font-size: 2.5em">채용 등록하기</button>
						</form>
					</div>

				</div>





			</div>
			<div class="col-1">
				<img src="img/Advertising1.png" style="margin-bottom: 20px"><br />
				<img src="img/Advertising2.png">
			</div>
		</div>
	</div>


	<footer class="text-center "
		style="font-size: 1.1em; background-color: #eef">
		<ul class="info text-center"
			style="font-size: 1.1em; background-color: #eee">
			<li>(주) IT-z</li>
			<li>대표 : 김비트</li>
			<li>사업자등록번호: 214-85-24928</li>
			<br>
			<li>서울시 서초구 강남대로 459 (서초동, 백암빌딩)</li>
			<br>
			<li>이메일 : it-z@gmail.com</li>
			<li>대표전화 : 02.123.4567</li>
			<li>팩스 : 02.1234.5678</li>
		</ul>
		<!--info end-->

		<p class="copy">&copy; 2020 IT-z All rights reserved</p>
	</footer>

</body>
</html>