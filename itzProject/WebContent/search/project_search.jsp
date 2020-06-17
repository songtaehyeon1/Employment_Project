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
		$("#big_search ul:nth-of-type(1) ~ ul input:checkbox, #big_search_2 input:checkbox").click(function(){
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
		$(document).on("click", "#area_search_unit_ul input:checkbox", function(){
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
			if(str != "tag_work" && str != "tag_price"){
				document.getElementById($(this).val()).checked = false;
			}
			$("#tags #" + str).remove();
		});
		
		// 근무/작업일수, 단가 숫자만 나오고 천의 자리마다 (,)찍기
		$("#workDayTxt, #priceTxt").on("keyup", function(){
			$(this).val($(this).val().replace(/[^0-9]/g,""));
			$(this).val($(this).val().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
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
		
		$("#area").click(function(){
			$("#area_a").addClass("active");
			status1++;
		});

		// 중분류 누르면 소분류 나오기
		$(document).on("click", "#area input:checkbox", function(){
			var str = $(this).attr("id").substring(0, $(this).attr("id").indexOf("click"));
			$("#" + str + "_search").addClass("active");
			if(str == "job"){
				status1++;
			}else if(str == "area"){
				status1++;
			}
		});
		
		// 왼쪽에서 눌렀을 때 소분류 나오기
		$(document).on("click", "#left1, #left2", function(){
			if($(this).attr("id") == "left1"){
				if(status1%2 == 1){
					$("#area_search").removeClass("active");
					status1++;
				}
				$("#job_search").addClass("active");
				status1++;
			}else if($(this).attr("id") == "left2"){
				if(status1%2 == 1){
					$("#job_search").removeClass("active");
					status1++;
				}
				$("#area_search").addClass("active");
				status1++;
			}
		});
		
		// 소분류 리스트 보여주기
		<% SearchVO vo = (SearchVO)request.getAttribute("vo"); %>
		$(document).on("click", "#area_search_big input:checkbox, #area input:checkbox", function(){
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

		// 검색한 프로젝트 바로 위 검색창의 필터
		$("#solt_searchBtn").on('click',function(){
			var value = $("#solt_searchText").val().toLowerCase();
			$("#proTr").filter(function(){
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
		
		// 근무/작업일수 확인 버튼 누르면 태그
		$("#workDayBtn").click(function(){
			if($("#tag_work").length){
				document.getElementById("tag_work").remove();
			}
			if($("#workDayTxt").val() == ""){
				alert("근무/작업일수를 입력하세요");
			}else{
				//$("#age_text").html("");
				$("#tags>ul").append("<li id = 'tag_work'><button class = 'btn btn-primary' value = '"
						+ $("#workDayTxt").val() + "' name = 'work' >" + $("#workDayTxt").val() 
						+ "개월<span>×</span></button></li>");
			}
		});
		
		$("#priceBtn").click(function(){
			if($("#tag_price").length){
				document.getElementById("tag_price").remove();
			}
			if($("#priceTxt").val() == ""){
				alert("근무/작업일수를 입력하세요");
			}else{
				//$("#age_text").html("");
				$("#tags>ul").append("<li id = 'tag_price'><button class = 'btn btn-primary' value = '"
						+ $("#priceTxt").val() + "' name = 'price' >" + $("#priceTxt").val() 
						+ "원<span>×</span></button></li>");
			}
		});
		
		// 프로젝트 위에 마우스 올리면 생기는 이벤트
		$("#reImg li").hover(function(){
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
				<a href = "<%= ctx %>/search/talented_person_search.do">인재 검색</a>
				<a href = "<%= ctx %>/search/project_search.do" style = "font-weight : bold; font-size : 1.5em;">프로젝트 검색</a>
				<a href = "<%= ctx %>/ask/orderProject.do">프로젝트 의뢰</a>
			</div>
		</div>
	</div>
	<% int cnt = 1; %>
	<div id = "left" class = "leftTop">
		<ul id = "accordion">
			<li class = "card">
				<div id = "left2" class = "card-header card-link bg-white" data-toggle = "collapse" data-target = "#v2"><span>근무지역</span><span class = "left_down">∨</span></div>
				<ul class = "collapse" id = "v2" data-parent = "#accordion">
					<% cnt = 18; %>
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
				<div id = "left4" class = "card-header card-link bg-white" data-toggle = "collapse" data-target = "#v4"><span>프로젝트 타입</span><span class = "left_down">∨</span></div>
				<ul class = "collapse" id = "v4" data-parent = "#accordion">
					<% cnt = 1; %>
					<c:forEach var = "i" items = "${vo.projectType}">
						<li><label for = "projectType_<%= cnt %>">${i}</label></li>
						<% cnt++; %>
					</c:forEach>
				</ul>
			</li>
			<li class = "card">
				<div id = "left5" class = "card-header card-link bg-white" data-toggle = "collapse" data-target = "#v5"><span>작업형태</span><span class = "left_down">∨</span></div>
				<ul class = "collapse" id = "v5" data-parent = "#accordion">
					<% cnt = 1; %>
					<c:forEach var = "i" items = "${vo.operationType}">
						<li><label for = "operationType_<%= cnt %>">${i}</label></li>
						<% cnt++; %>
					</c:forEach>
				</ul>
			</li>
		</ul>
		<div style = "width : 200px; height : 150px;"></div>
	</div>
	<div class = "container" id = "center">
		<div id = "person_seardetailed_search_contentch_title">
			<h2>프로젝트 검색</h2>
		</div>
		<!-- 상세검색 -->
		<div id = "detailed_search">
			<div id = "detailed_search_above">
				<div id = "derailed_search_title">
					<ul class = "nav nav-tabs">
						<li class = "nav-item col-2">
							<a href = "#area_search" id = "area_a" class = "nav-link" data-toggle = "tab">근무지역<span>∨</span></a>
						</li>
						<li class = "col-2" style = "line-height : 40px;">경력</li>
						<li class = "col-2">프로젝트 타입</li>
						<li class = "col-2">근무/작업기간</li>
						<li class = "col-2">근무/작업일수</li>
						<li class = "col-2">단가</li>
					</ul>
					<div id = "search_content" class = "tab-content">
						<div id = "area_search" class = "tab-pane">
							<div id = "area_search_big">
								<ul>
									<% cnt = 18; %>
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
					<ul class = "nav col-2" id = "area">
						<% cnt = 18; %>
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
					<ul class = "nav col-2" id = "projectType">
						<% cnt = 1; %>
						<c:forEach var = "i" items = "${vo.projectType}">
							<li>
								<label for = "projectType_<%= cnt %>">${i}</label>
								<input type = "checkbox" id = "projectType_<%= cnt %>" name = "big_search_list" value = "${i}">
							</li>
							<% cnt++; %>
						</c:forEach>
					</ul>
					<ul class = "nav col-2" id = "workPeriod">
						<li>
							<span>시작일 : </span>
						</li>
						<li>
							<span>종료일 : </span>
						</li>
					</ul>
					<ul class = "nav col-2" id = "workDay">
						<li>
							<input type = "text" id = "workDayTxt" size = "7" maxlength = "3" style = "text-align : right;">
							<span>개월</span>
							<button class = "btn btn-primary btn-sm" id = "workDayBtn">확인</button>
						</li>
					</ul>
					<ul class = "nav col-2" id = "price">
						<li>
							<input type = "text" id = "priceTxt" size = "9" maxlength = "10" style = "text-align : right;">
							<span>원</span>
							<button class = "btn btn-primary btn-sm" id = "priceBtn">확인</button>
						</li></ul>
				</div>
			</div>
			<div id = "detailed_search_above">
				<div id = "derailed_search_title_2">
					<ul class = "nav">
						<li class = "col-2">작업형태</li>
						<li class = "col-2">인원</li>
						<li class = "col-2"></li>
						<li class = "col-2"></li>
						<li class = "col-2"></li>
						<li class = "col-2"></li>
					</ul>
				</div>
				<div id = "big_search_2">
					<ul class = "nav col-2" id = "operationType">
						<% cnt = 1; %>
						<c:forEach var = "i" items = "${vo.operationType}">
							<li>
								<label for = "operationType_<%= cnt %>">${i}</label>
								<input type = "checkbox" id = "operationType_<%= cnt %>" name = "big_search_list" value = "${i}">
							</li>
							<% cnt++; %>
						</c:forEach>
					</ul>
					<ul class = "nav col-2" id = "personnel">
						<li>
							<div>
								<label for = "personnel_individual">개인</label>
								<input type = "checkbox" id = "personnel_individual" name = "big_search_list" value = "개인">
							</div>
							<div>
								<label for = "personnel_group">그룹</label>
								<input type = "checkbox" id = "personnel_group" name = "big_search_list" value = "그룹">
							</div>
						</li>
					</ul>
					<ul class = "nav col-2"></ul>
					<ul class = "nav col-2"></ul>
					<ul class = "nav col-2"></ul>
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
		<!-- 프로젝트 -->
		<div id = "reImg">
			<ul>
				<c:forEach var = "vo" items = "${proList}">
					<li class = "border border-primary ml-1 mb-1">
						<a href = "../jobs_user_info/companyHire.html" target = "_black">
							<span class = "slideLogo">
								<c:if test = "${vo.com_pic == null || vo.com_pic == ''}"><img src = "<%= ctx %>/upload/re_undefoned.jpg"></c:if>
								<c:if test = "${vo.com_pic != null}"><img src = "<%= ctx %>/upload/${vo.com_pic}"></c:if>
							</span>
							<strong>${vo.companyName}</strong>
							<span>${vo.projectName}</span>
						</a>
					</li>
				</c:forEach>
			</ul>
		</div>
		<!-- 검색한 프로젝트 -->
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
				<table class = "table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<td>분야</td>
							<td>프로젝트</td>
							<td>작업기간</td>
							<td>인원수</td>
							<td>근무위치</td>
							<td>마감날짜</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var = "vo" items = "${proList}">
							<tr id = "proTr">
								<td>${vo.projectType}</td>
								<td><a href = "../jobs_user_info/companyHire.html" target = "_black">${vo.projectName}</a></td>
								<td>${vo.workperiod}개월</td>
								<td>${vo.workMember}명</td>
								<td>${vo.workplace}</td>
								<td>${vo.projectDeadLine}</td>
							</tr>
						</c:forEach>
					</tbody>
					<tfoot>
						<tr>
							<td colspan = "6" style = "text-align : right;">문의사항 02-707-1480</td>
						</tr>
					</tfoot>
				</table>
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
		<jsp:include page="<%=ctx %>/inc/footer.jspf"></jsp:include>
	</div>
</div>
</body>
</html>