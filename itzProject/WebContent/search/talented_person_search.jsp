<%@page import="com.itzProject.home.search.SearchVO"%>
<%@ page language = "java" contentType = "text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name = "viewport" content = "width = device-width, initial-scale = 1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel = "stylesheet" href = "style.css" type = "text/css">
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src = "https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<style>
	.leftFixed{
		position : fixed;
		top : 52px;
	}
	
	.centerLeft{
		margin-left : 200px;
	}
</style>
<script>
	$(function(){
		// 페이지 들어올 시(새로고침) 화면 상단으로 보여주기
		$("body, html").stop().animate({"scrollTop":0}, 0);
		
		// 태그 초기화
		$("#tag_reset>button").click(function(){
			$("#tags>ul>li").remove();
			$("#detailed_search input:checkbox").prop("checked", false);
		});
		
		// 리스트 누르면 태그추가
		$("#big_search ul:nth-of-type(2) ~ ul input:checkbox, #big_search_2 input:checkbox").click(function(){
			var str = $(this).val();
			str = str.replace(" ", "");
			str = str.replace(" ", "");
			str = str.replace("(", "");
			str = str.replace(")", "");
			str = str.replace("~", "");
			str = str.replace("·", "");
			str = str.replace(",", "");
			//console.log($(this).attr("id"));
			
			// 체크 되었을 때
			if($(this).prop("checked")){
				$("#tags>ul").append("<li id = 'tag_" + str + "'><button class = 'btn btn-primary' value = '"
						+ $(this).attr("id") + "' name = '" + $(this).val() + "'>" + $(this).val() 
						+ "<span>×</span></button></li>");
			}else{	// 체크 풀었을 때
				var txt = $(this).val().substring(0, $(this).val().length);
				$("#tags>ul>#tag_" + str).remove();
			}
		});
		
		// 소분류 태그 추가
		$(document).on("click", "#job_search_unit_ul input:checkbox, #area_search_unit_ul input:checkbox", function(){
			var str = $(this).val();
			str = str.replace(" ", "");
			str = str.replace(" ", "");
			str = str.replace("(", "");
			str = str.replace(")", "");
			str = str.replace("~", "");
			str = str.replace("·", "");
			str = str.replace(",", "");
			var thisid = $(this).attr("id");
			var parentid = "#" + thisid.substring(0, thisid.indexOf("_") + 1) + $(this).attr("name");
			// 체크 되었을 때
			if($(this).prop("checked")){
				$("#tags>ul").append("<li id = 'tag_" + str + "'><button class = 'btn btn-primary' value = '"
						+ $(this).attr("id") + "' name = '" + $(this).val() + "'>" 
						+ $(parentid).val() + ">" + $(this).val() 
						+ "<span>×</span></button></li>");
			}else{	// 체크 풀었을 때
				var txt = $(this).val().substring(0, $(this).val().length);
				$("#tags>ul>#tag_" + str).remove();
			}
		});
		
		// 태그 삭제
		$(document).on("click", "#tags button", function(){
			var str = $(this).attr("name");
			str = str.replace(" ", "");
			str = str.replace(" ", "");
			str = str.replace("(", "");
			str = str.replace(")", "");
			str = str.replace("~", "");
			str = str.replace("·", "");
			str = str.replace(",", "");
			str = "tag_" + str;
			if(str != "tag_age" && str != "tag_gender"){
				document.getElementById($(this).val()).checked = false;
			}
			$("#tags #" + str).remove();
		});
		
		// 나이 숫자만 나오게
		$("#age_text").on("keyup", function(){
			$(this).val($(this).val().replace(/[^0-9]/g,""));
		});
		
		// 나이 확인버튼 눌렀을 때
		$("#age_btn").click(function(){
			if($("#tag_age").length){
				document.getElementById("tag_age").remove();
			}
			if($("#age_text").val() == ""){
				alert("나이를 입력하세요");
			}else{
				//$("#age_text").html("");
				$("#tags>ul").append("<li id = 'tag_age'><button class = 'btn btn-primary' value = '"
						+ $("#age_text").val() + "' name = 'age' >" + $("#age_text").val() 
						+ "세<span>×</span></button></li>");
			}
		});
		
		// 성별 확인버튼 눌렀을 때
		$("#gender_check").click(function(){
			if($("#tag_gender").length){
				document.getElementById("tag_gender").remove();
			}
			var gender_check;
			if($("#gender_li input[name='gender']:checked").val() == "남자"){
				gender_check = "남자";
			}else{
				gender_check = "여자";
			}
			if($("#tags #tag_gender"))
			$("#tags>ul").append("<li id = 'tag_gender'><button class = 'btn btn-primary' value = '"
					+ gender_check + "' name = 'gender'>" + gender_check + "<span>×</span></button></li>");
			console.log($(this).attr("value"));
		});
		
		// 탭메뉴(2개) 누르는 이벤트
		var status1=0, status2=0;
		$("#derailed_search_title .nav-link").click(function(){
			var idx = $("#derailed_search_title>ul a").index(this);
			$("#search_content div").removeClass("active");
			if(idx==0 && status1%2 == 0){
				$($(this).attr("href")).addClass("active");
				status1++;
				status2=0;
			}else if(idx==0 && status1%2 == 1){
				$($(this).attr("href")).removeClass("active");
				status1++;
			}else if(idx == 1 && status2%2 == 0){
				$($(this).attr("href")).addClass("active");
				status2++;
				status1=0;
			}else if(idx == 1 && status2%2 == 1){
				$($(this).attr("href")).removeClass("active");
				status2++;
			}
		});
		
		$("#job").click(function(){
			$("#job_a").addClass("active");
			status1++;
		});
		
		$("#area").click(function(){
			$("#area_a").addClass("active");
			status2++;
		});

		// 중분류 누르면 소분류 나오기
		$(document).on("click", "#job input:checkbox, #area input:checkbox", function(){
			var str = $(this).attr("id").substring(0, $(this).attr("id").indexOf("click"));
			$("#" + str + "_search").addClass("active");
			if(str == "job"){
				status1++;
			}else if(str == "area"){
				status2++;
			}
		});
		
		// 왼쪽에서 눌렀을 때 소분류 나오기
		$(document).on("click", "#left1, #left2", function(){
			if($(this).attr("id") == "left1"){
				if(status2%2 == 1){
					$("#area_search").removeClass("active");
					status2++;
				}
				$("#job_search").addClass("active");
				status1++;
			}else if($(this).attr("id") == "left2"){
				if(status1%2 == 1){
					$("#job_search").removeClass("active");
					status1++;
				}
				$("#area_search").addClass("active");
				status2++;
			}
		});
		
		// 소분류 리스트 보여주기
		<% SearchVO vo = (SearchVO)request.getAttribute("vo"); %>
		$(document).on("click", "#job_search_big input:checkbox, #area_search_big input:checkbox, #job input:checkbox, #area input:checkbox", function(){
			var idxstr = $(this).attr("id").indexOf("_") + 1;
			var lenstr = $(this).attr("id").length;
			var str1 = $(this).attr("id").substring(idxstr, lenstr);	// 중분류
			var ja = $(this).attr("id").substring(0,1);	// 대분류
			$.ajax({
				url : "<%= request.getContextPath() %>/search/detailListAjax.do"
				, data : { "str1" : str1, "ja" : ja }
				//, dataType : "json"
				, success : function(result){
					var index1 = result.indexOf("<hr id = 'qqq'>");
					var index2 = result.indexOf("<hr id = 'www'>");
					var detailList = result.substring(index1 + 15, index2);
					if(ja == "j"){
						$("#job_search_unit_ul").html(detailList);
					}else if(ja == "a"){
						$("#area_search_unit_ul").html(detailList);
					}
				}, error : function(result){
					console.log("에러나왔다");
				}
			});
		});
		
		// 왼쪽 중분류 누르면 센터상세검색 화면으로 가지기
		$(document).on("click", "#left label", function(){
			$("body, html").stop().animate({"scrollTop":100},1000)
		});

		// 스크롤 내리면 왼쪽 상세검색 고정
		$(window).scroll(function(){
			if($(document).scrollTop() > 60){
				$(".leftTop").addClass("leftFixed");
			}else{
				$(".leftTop").removeClass("leftFixed");
			}
		});

		// 검색한 인재 바로 위 검색창의 필터
		$("#solt_searchBtn").on('click',function(){
			var value = $("#solt_searchText").val().toLowerCase();
			$("#search_list .row").filter(function(){
				var idx = $(this).text().toLowerCase().indexOf(value);
				$(this).toggle(idx>-1);
			});
		});

		// window창 줄어들어도 센터가 왼쪽으로 안가는거
		$(window).resize(function(){
			if(window.innerWidth < 1555){
				$("#center").addClass("centerLeft");
			}else{
				$("#center").removeClass("centerLeft");
			}
		});
		
		// 인재 위에 마우스 올리면 생기는 이벤트
		$("#tpImg li").hover(function(){
			$(this).removeClass("border");
			$(this).removeClass("border-primary");
			$(this).css("border", "2px solid #007BFF");
		}, function(){
			$(this).addClass("border");
			$(this).addClass("border-primary");
			$(this).css("border", "none");
		});
	});
</script>
</head>
<body>
<div style = "width : 100%;">
	<div class = "container-fuild" style = "width : 100%; height : 115px;">
		<div id = "header">
			<div class = "btn-group" id = "login">
				<div class = "btn btn-primary"><a href = "../myhome/myhome.html">내정보</a></div>
				<div class = "btn btn-primary"><a data-toggle="modal" data-target="#myModal">기업로그인</a></div>
				<div class = "btn btn-primary"><a data-toggle="modal" data-target="#myModal">로그인</a></div>
				<div class = "btn btn-primary"><a href="../account/join.html">회원가입</a></div>
			</div>
		</div>
		<div id = "bar" class = "bg-primary">
			<div id="search_bar">
				<a href = "<%= ctx %>/search/recruitment_search.do">채용 검색</a>
				<a href = "<%= ctx %>/search/talented_person_search.do" style = "font-weight : bold; font-size : 1.5em;">인재 검색</a>
				<a href = "<%= ctx %>/search/project_search.do">프로젝트 검색</a>
				<a href = "<%= ctx %>/ask/orderProject.do">프로젝트 의뢰</a>
			</div>
		</div>
	</div>
	<% int cnt = 1; %>
	<div id = "left" class = "leftTop">
		<ul id = "accordion">
			<li class = "card">
				<div id = "left1" class = "card-header card-link bg-white" data-toggle = "collapse" data-target = "#v1"><span>직무</span><span class = "left_down">∨</span></div>
				<ul class = "collapse" id = "v1" data-parent = "#accordion">
					<% cnt = 1; %>
					<c:forEach var = "i" items = "${vo.job}">
						<li><label for = "job_<%= cnt %>">${i}</label></li>
						<% cnt++; %>
					</c:forEach>
				</ul>
			</li>
			<li class = "card">
				<div id = "left2" class = "card-header card-link bg-white" data-toggle = "collapse" data-target = "#v2"><span>근무지역</span><span class = "left_down">∨</span></div>
				<ul class = "collapse" id = "v2" data-parent = "#accordion">
					<c:forEach var = "i" items = "${vo.area}">
						<li><label for = "area_<%= cnt %>">${i}</label></li>
						<% cnt++; %>
					</c:forEach>
				</ul>
			</li>
			<li class = "card">
				<div id = "left3" class = "card-header card-link bg-white" data-toggle = "collapse" data-target = "#v3"><span>경력</span><span class = "left_down">∨</span></div>
				<ul class = "collapse" id = "v3" data-parent = "#accordion">
					<% cnt = 1; %>
					<c:forEach var = "i" items = "${vo.career}">
						<li><label for = "career_<%= cnt %>">${i}</label></li>
						<% cnt++; %>
					</c:forEach>
				</ul>
			</li>
			<li class = "card">
				<div id = "left4" class = "card-header card-link bg-white" data-toggle = "collapse" data-target = "#v4"><span>학력</span><span class = "left_down">∨</span></div>
				<ul class = "collapse" id = "v4" data-parent = "#accordion">
					<% cnt = 1; %>
					<c:forEach var = "i" items = "${vo.academic}">
						<li><label for = "academic_<%= cnt %>">${i}</label></li>
						<% cnt++; %>
					</c:forEach>
				</ul>
			</li>
			<li class = "card">
				<div id = "left5" class = "card-header card-link bg-white" data-toggle = "collapse" data-target = "#v5"><span>기업형태</span><span class = "left_down">∨</span></div>
				<ul class = "collapse" id = "v5" data-parent = "#accordion">
					<% cnt = 1; %>
					<c:forEach var = "i" items = "${vo.business}">
						<li><label for = "business_<%= cnt %>">${i}</label></li>
						<% cnt++; %>
					</c:forEach>
				</ul>
			</li>
			<li class = "card">
				<div id = "left6" class = "card-header card-link bg-white" data-toggle = "collapse" data-target = "#v6"><span>고용형태</span><span class = "left_down">∨</span></div>
				<ul class = "collapse" id = "v6" data-parent = "#accordion">
					<% cnt = 1; %>
					<c:forEach var = "i" items = "${vo.employmen}">
						<li><label for = "employmen_<%= cnt %>">${i}</label></li>
						<% cnt++; %>
					</c:forEach>
				</ul>
			</li>
			<li class = "card">
				<div id = "left7" class = "card-header card-link bg-white" data-toggle = "collapse" data-target = "#v7"><span>자격증</span><span class = "left_down">∨</span></div>
				<ul class = "collapse" id = "v7" data-parent = "#accordion">
					<% cnt = 1; %>
					<c:forEach var = "i" items = "${vo.certificate}">
						<li><label for = "certificate_<%= cnt %>">${i}</label></li>
						<% cnt++; %>
					</c:forEach>
				</ul>
			</li>
			<li class = "card">
				<div id = "left8" class = "card-header card-link bg-white" data-toggle = "collapse" data-target = "#v8"><span>직급</span><span class = "left_down">∨</span></div>
				<ul class = "collapse" id = "v8" data-parent = "#accordion">
					<% cnt = 1; %>
					<c:forEach var = "i" items = "${vo.position}">
						<li><label for = "position_<%= cnt %>">${i}</label></li>
						<% cnt++; %>
					</c:forEach>
				</ul>
			</li>
			<li class = "card">
				<div id = "left9" class = "card-header card-link bg-white" data-toggle = "collapse" data-target = "#v9"><span>연봉</span><span class = "left_down">∨</span></div>
				<ul class = "collapse" id = "v9" data-parent = "#accordion">
					<% cnt = 1; %>
					<c:forEach var = "i" items = "${vo.salary}">
						<li><label for = "salary_<%= cnt %>">${i}</label></li>
						<% cnt++; %>
					</c:forEach>
				</ul>
			</li>
		</ul>
		<div style = "width : 200px; height : 150px;"></div>
	</div>
	<div class = "container" id = "center">
		<div id = "person_seardetailed_search_contentch_title">
			<h2>인재 검색</h2>
		</div>
		<!-- 상세검색 -->
		<div id = "detailed_search">
			<div id = "detailed_search_above">
				<div id = "derailed_search_title">
					<ul class = "nav nav-tabs">
						<li class = "nav-item col-2">
							<a href = "#job_search" id = "job_a" class = "nav-link" data-toggle = "tab">직무<span>∨</span></a>
						</li>
						<li class = "nav-item col-2">
							<a href = "#area_search" id = "area_a" class = "nav-link" data-toggle = "tab">근무지역<span>∨</span></a>
						</li>
						<li class = "col-2">경력</li>
						<li class = "col-2">학력</li>
						<li class = "col-2">기업형태</li>
						<li class = "col-2">고용형태</li>
					</ul>
					<div id = "search_content" class = "tab-content">
						<div id = "job_search" class = "tab-pane">
							<div id = "job_search_big">
								<ul>
									<% cnt = 1; %>
									<c:forEach var = "i" items = "${vo.job}">
										<li>
											<label for = "job_<%= cnt %>">${i}</label>
											<input type = "checkbox" id = "job_<%= cnt %>" name = "big_search_list" value = "${i}">
										</li>
										<% cnt++; %>
									</c:forEach>
								</ul>
							</div>
							<div id = "job_search_unit">
								<ul id = "job_search_unit_ul"></ul>
							</div>
						</div>
						<div id = "area_search" class = "tab-pane">
							<div id = "area_search_big">
								<ul>
									<c:forEach var = "i" items = "${vo.area}">
										<li>
											<label for = "area_<%= cnt %>">${i}</label>
											<input type = "checkbox" id = "area_<%= cnt %>" name = "big_search_list" value = "${i}">
										</li>
										<% cnt++; %>
									</c:forEach>
								</ul>
							</div>
							<div id = "area_search_unit">
								<ul id = "area_search_unit_ul"></ul>
							</div>
						</div>
					</div>
				</div>
				<div id = "big_search">
					<ul class = "nav col-2" id = "job">
						<% cnt = 1; %>
						<c:forEach var = "i" items = "${vo.job}">
							<li>
								<label for = "jobclick_<%= cnt %>">${i}</label>
								<input type = "checkbox" id = "jobclick_<%= cnt %>" name = "big_search_list" value = "${i}">
							</li>
							<% cnt++; %>
						</c:forEach>
					</ul>
					<ul class = "nav col-2" id = "area">
						<c:forEach var = "i" items = "${vo.area}">
							<li>
								<label for = "areaclick_<%= cnt %>">${i}</label>
								<input type = "checkbox" id = "areaclick_<%= cnt %>" name = "big_search_list" value = "${i}">
							</li>
							<% cnt++; %>
						</c:forEach>
					</ul>
					<ul class = "nav col-2" id = "career">
						<% cnt = 1; %>
						<c:forEach var = "i" items = "${vo.career}">
							<li>
								<label for = "career_<%= cnt %>">${i}</label>
								<input type = "checkbox" id = "career_<%= cnt %>" name = "big_search_list" value = "${i}">
							</li>
							<% cnt++; %>
						</c:forEach>
					</ul>
					<ul class = "nav col-2" id = "academic">
						<% cnt = 1; %>
						<c:forEach var = "i" items = "${vo.academic}">
							<li>
								<label for = "academic_<%= cnt %>">${i}</label>
								<input type = "checkbox" id = "academic_<%= cnt %>" name = "big_search_list" value = "${i}">
							</li>
							<% cnt++; %>
						</c:forEach>
					</ul>
					<ul class = "nav col-2" id = "business">
						<% cnt = 1; %>
						<c:forEach var = "i" items = "${vo.business}">
							<li>
								<label for = "business_<%= cnt %>">${i}</label>
								<input type = "checkbox" id = "business_<%= cnt %>" name = "big_search_list" value = "${i}">
							</li>
							<% cnt++; %>
						</c:forEach>
					</ul>
					<ul class = "nav col-2" id = "employmen">
						<% cnt = 1; %>
						<c:forEach var = "i" items = "${vo.employmen}">
							<li>
								<label for = "employmen_<%= cnt %>">${i}</label>
								<input type = "checkbox" id = "employmen_<%= cnt %>" name = "big_search_list" value = "${i}">
							</li>
							<% cnt++; %>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div id = "detailed_search_above">
				<div id = "derailed_search_title_2">
					<ul class = "nav">
						<li class = "col-2">자격증</li>
						<li class = "col-2">직급</li>
						<li class = "col-2">연봉</li>
						<li class = "col-2">나이</li>
						<li class = "col-2">성별</li>
						<li class = "col-2"></li>
					</ul>
				</div>
				<div id = "big_search_2">
					<ul class = "nav col-2" id = "certificate">
						<% cnt = 1; %>
						<c:forEach var = "i" items = "${vo.certificate}">
							<li>
								<label for = "certificate_<%= cnt %>">${i}</label>
								<input type = "checkbox" id = "certificate_<%= cnt %>" name = "big_search_list" value = "${i}">
							</li>
							<% cnt++; %>
						</c:forEach>
					</ul>
					<ul class = "nav col-2" id = "position">
						<% cnt = 1; %>
						<c:forEach var = "i" items = "${vo.position}">
							<li>
								<label for = "position_<%= cnt %>">${i}</label>
								<input type = "checkbox" id = "position_<%= cnt %>" name = "big_search_list" value = "${i}">
							</li>
							<% cnt++; %>
						</c:forEach>
					</ul>
					<ul class = "nav col-2" id = "salary">
						<% cnt = 1; %>
						<c:forEach var = "i" items = "${vo.salary}">
							<li>
								<label for = "salary_<%= cnt %>">${i}</label>
								<input type = "checkbox" id = "salary_<%= cnt %>" name = "big_search_list" value = "${i}">
							</li>
							<% cnt++; %>
						</c:forEach>
					</ul>
					<ul class = "nav col-2">
						<li>
							연령&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type = "text" id = "age_text" style = "width : 50px;" maxlength="2"> 세
							<button id = "age_btn" style = "border : 1px solid #D5D5D5; margin : 10px 0px;">확인</button>
						</li>
					</ul>
					<ul class = "nav col-2">
						<li id = "gender_li">
							<input type = "radio" name = "gender" value = "남자" checked>남자
							<input type = "radio" name = "gender" value = "여자">여자
							<button id = "gender_check" style = "border : 1px solid #D5D5D5; margin : 10px 0px;">확인</button>
						</li>
					</ul>
					<ul class = "nav col-2">
						<li><a href = "#"></a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 태그 -->
		<div id = "tag_search">
			<div id = "tags">
				<ul>
				</ul>
			</div>
			<div id = "tag_reset"><button class = "btn btn-primary">초기화</button></div>
			<div id = "tag_search_div"><button id = "tag_search_btn" class = "btn btn-primary">선택된 조건 검색하기</button></div>
		</div>
		<!-- 인재 -->
		<div id = "tpImg">
			<ul>
				<c:forEach var = "vo" items = "${tList}">
					<li class = "border border-primary ml-1 mb-1">
						<a href = "../jobs_user_info/companyHire.html" target = "_black">
							<div class = "userInfo">
								<span class = "tpLogo">
									<c:if test = "${vo.userImg == null || vo.userImg == ''}"><img src = "<%= ctx %>/upload/undefined.jpg"></c:if>
									<c:if test = "${vo.userImg != null && vo.userImg != ''}"><img src = "<%= ctx %>/upload/${vo.userImg}"></c:if>
								</span>
								<span class = "tpName">${vo.userName.substring(0, 1)}OO</span>
								<span class = "tpAge">(${vo.gender}${vo.age})</span>
								<span class = "tpCareer">${vo.careerYear}년</span>
							</div>
							<div class = "tpTitle">${vo.title}</div>
							<div class = "tpJob">${vo.occupation_type}</div>
						</a>
					</li>
				</c:forEach>
			</ul>
		</div>
		<!-- 검색한 인재 -->
		<div id = "list">
			<div id = "search_solt">
				<!-- <div id = "solt_div">
					<select name = "solt" id = "solt">
						<option value = "registration_date">등록일순</option>
						<option value = "recent_updates">최신업데이트순</option>
						<option value = "closing_date">마감일순</option>
						<option value = "career">경력순</option>
						<option value = "academic">학력순</option>
						<option value = "recommendation">추천순</option>
					</select>
				</div> -->
				<div id = "solt_search_div">
					<div id = "solt_searchText_div">
						<input type = "text" placeholder = "검색" id = "solt_searchText">
					</div>
					<div id = "solt_searchBtn_div">
						<input type = "button" value = "검색" id = "solt_searchBtn">
					</div>
				</div>
			</div>
			<div id = "search_list">
				<c:forEach var = "vo" items = "${tList}">
					<div class = "row">
						<div class = "col-2 pl-4 pt-4">
							<span class = "search_tpName">${vo.userName.substring(0, 1)}OO</span>
							<span class = "search_tpInfo">${vo.gender} | ${vo.birthY}년, ${vo.age}세</span>
						</div>
						<div class = "col pt-4">
							<div class = "pb-2 font-weight-bold">
								<a href = "../jobs_user_info/companyHire.html" target = "_black">${vo.title}</a>
							</div>
							<div class = "pb-1">
								<div class = "schoolType">${vo.schoolType} ${vo.u_majorEndType} | ${vo.u_major}</div>
								<div class = ""></div>
							</div>
							<div class = "pt-4 search_tpJob">${vo.companyLocation} | ${vo.occupation_type}</div>
						</div>
						<div class = "col-2 pt-4 pl-5">
							<button class="btn btn-primary"	onclick="location.href ='../jobs_user_info/companyHire.html'">즉시 지원</button>
						</div>
					</div>
				</c:forEach>
				<!-- <ul class="pagination justify-content-center" id = "paging" style = "position : relative; left : 400px;">
					<li class="page-item"><a class = "page-link" href = "#">이전</a></li>
					<li class="page-item"><a class = "page-link" href = "#">1</a></li>
					<li class="page-item"><a class = "page-link" href = "#">2</a></li>
					<li class="page-item"><a class = "page-link" href = "#">3</a></li>
					<li class="page-item"><a class = "page-link" href = "#">다음</a></li>
				</ul> -->
			</div>
		</div>
	</div><!-- center -->
	<div>
		<style>
footer{
		background-color:#eee;
		text-align:center;
		padding:50px;
		width : 100%;
		float : left;
	}
	.info li{
		display:inline-block;
		margin:0 10px;
	}
	.info li:after{
		content:"|";  /* | :shift+\ */ 
		margin:0 20px;
	}
	.info li:nth-child(3):after,
	.info li:nth-child(5):after, /* <br>도 객체로 인식하기때문에 5번째로 불러야한다. */
	.info li:last-child:after{
		content:"";	
	}
	.top_btn{
		width:40px;
		height:40px;
		border-radius:40px;
		font-weight:bold;
		position:fixed;
		bottom:20px;
		right:20px;
		display:none;
	}
</style>
<script>
$(function(){
	//탑버튼 이벤트
    $(window).scroll( function(){     //스크롤 시      
            var scr_t = $(window).scrollTop();  //현재 스크롤 위치
            
        	//탑버튼
            if(scr_t > 400){
    			$(".top_btn").fadeIn()
    		}else{
    			$(".top_btn").fadeOut()
    		}
    });
    
    //탑버튼
    $(".top_btn").click(function(){
		$("body, html").stop().animate({"scrollTop":0},1000) 
	}); 
});
</script>
<footer>
	<ul class="info">
    	<li>(주) IT-z</li>
        <li>대표 : 김비트</li>  
        <li>사업자등록번호: 214-85-24928</li> <br>
        <li>서울시 서초구 강남대로 459 (서초동, 백암빌딩)</li> <br>
        <li>이메일 : it-z@gmail.com</li>  
        <li>대표전화 : 02.123.4567</li>  
        <li>팩스 : 02.1234.5678</li> 
    </ul> <!--info end-->
    
    <p class="copy">
    	&copy; 2020 IT-z All rights reserved
    </p>
</footer> 
	</div>
</div>
</body>
</html>