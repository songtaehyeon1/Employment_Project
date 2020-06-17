<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/order_project/myDefault.css"/>
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
<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js"
	type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />
</head>
<style>
	.jumbotron {
	background: #4CA1AF; /* fallback for old browsers */
	background: -webkit-linear-gradient(to left, #C4E0E5, #4CA1AF);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to left, #C4E0E5, #4CA1AF);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	color:white;
}
#mainTag{
/* 	background-image: url(/itzProject/img/WorkTogether.png); */
/*     background-repeat: no-repeat; */
/*     background-size: contain; */
    height: 250px;
    background-position-x: 80%;
}
#mainTag>label:after {
    content: '';
    width: 100%;
    height: 2px;
    background-color: #fff;
    position: absolute;
    left: 0;
    bottom: -4px;
}

</style>
<script>
	function test(){
		var id=document.getElementById("test");
		console.log(id)
		if(id.style.display=='none'){
			id.style.display=='block'
		}else if(id.style.display=='block'){
			id.style.display=='none'
		}
		
	}
</script>
<body>
	<div class="jumbotron jumbotron-fluid" style="padding-bottom:50px">
		<div id="mainTag" style="margin-left:20%">
			<label style="position:relative">${vo.workField } </label>
			<h1>${vo.projectName }</h1>
		</div>
	</div>	
	
	<div class="container">

		<div class="row" style="margin-left:0px;margin-right:0px">
			<ul class="col-lg-12 info" style="padding-left:0px;padding-right:0px">
				<li class="col-6 col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-left:0px;padding-right:0px">
					<div class="title">작업형태</div>
					<div class="content">${vo.workForm}</div>
				</li>
				<li class="col-6 col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-left:0px;padding-right:0px">
					<div class="title">근무위치</div>
					<div class="content"><c:if test="${(vo.workPlace==null||vo.workPlace=='')&&vo.workForm=='재택' }">재택근무</c:if><c:if test="${vo.workForm!='재택' }">${vo.workPlace}, ${vo.workPlaceDetail}</c:if></div>
				</li>
				<li class="col-6 col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-left:0px;padding-right:0px">
					<div class="title">작업기간</div>
					<div class="content"><c:if test="${vo.workPeriod==0 }">협의</c:if><c:if test="${vo.workPeriod!=0 }">${vo.workPeriod }일</c:if></div>
				</li>
				<li class="col-6 col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-left:0px;padding-right:0px">
					<div class="title">필요경력</div>
					<div class="content">${vo.neededEXP }</div>
				</li>
				<li class="col-6 col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-left:0px;padding-right:0px">
					<div class="title">모집인원</div>
					<div class="content">${vo.neededMember }명</div>
				</li>
				<li class="col-6 col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-left:0px;padding-right:0px">
					<div class="title">보수</div>
					<div class="content">${vo.minPrice }원~<c:if test="${vo.maxPrice!=''||vo.maxPrice!=null }">${vo.maxPrice }원 </c:if><c:if test="${vo.maxPrice==''||vo.maxPrice==null }">협의</c:if></div>
				</li>
				<li class="col-6 col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-left:0px;padding-right:0px">
					<div class="title">사전미팅 여부</div>
					<div class="content">${vo.meeting }</div>
				</li>
				<li class="col-6 col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-left:0px;padding-right:0px">
					<div class="title">미팅장소</div>
					<div class="content"><c:if test="${vo.meeting!='아니오' }">${vo.meetingPlace}, ${vo.meetingPlaceDetail }</c:if></div>
				</li>
			</ul>
		</div>

		<div class="row borderGray" style="margin-left:0px;margin-right:0px">
			<ul class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12" style="padding-left:0px;padding-right:0px">
				<li class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12" style="padding-left:0px;padding-right:0px">
					<div class="title" style="width: 100%">상세 설명</div>
				</li>
				<li class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12" style="padding-left:0px;padding-right:0px">
					<div class="content" style="height: auto">
						${vo.projectDetail }
						<h6>참고 파일: <a href="<%=request.getContextPath()%>/upload/${vo.fileName}" download>${vo.fileName }</a></h6>
						<h6>참고url: <a href="${vo.urlAddress }">${vo.urlAddress }</a></h6>
						
					</div>
				</li>
			</ul>
		</div>

		<div class="d-flex justify-content-between">
			<div class="p-2">
				<button class="p-2 btn-primary"  data-toggle="collapse" data-target="#applyProject">프로젝트 지원</button>
				<button class="p-2 btn-secondary" onclick="test();">프로젝트 문의</button>
				<button class="p-2 btn-dark" onclick="location.href='<%=request.getContextPath()%>/ask/projectList.do'">목록</button>
			</div>
			
			<!-- 접었따펴기 -->
			<div id="test" style="display:none">
				<h1>내용내용</h1>
			
			</div>
			<!--  -->
			
			<div class="p-2">
				<c:if test="${pnVO.leadSubject!='이전글' }"><button class="btn btn-link btn-block" onclick="location.href='<%=request.getContextPath()%>/ask/projectListContent.do?projectNumber=${pnVO.leadNo }&pageNum=${pVO.pageNum}&<c:if test='${pVO.searchKey!=null&&pVO.searchWord!=null }'>&searchKey=${pVO.searchKey }&searchWord=${pVO.searchWord}</c:if>'">이전글 : ${pnVO.leadSubject }</button></c:if>
				<c:if test="${pnVO.lagSubject!='다음글' }"><button class="btn btn-link btn-block" onclick="location.href='<%=request.getContextPath()%>/ask/projectListContent.do?projectNumber=${pnVO.lagNo }&pageNum=${pVO.pageNum}&<c:if test='${pVO.searchKey!=null&&pVO.searchWord!=null }'>&searchKey=${pVO.searchKey }&searchWord=${pVO.searchWord}</c:if>'">다음글: ${pnVO.lagSubject }</button></c:if>
			</div>
	</div>
	<a></a>
	
	<!-- 프로젝트 지원 -->
	<div class="container">
		 <div id="applyProject" class="collapse">
			<div class="row" style="margin-left:0px;margin-right:0px">
				<h1>프로젝트 지원</h1>
				<ul class="col-lg-12 info" style="padding-left:0px;padding-right:0px">
					<li class="col-6 col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-left:0px;padding-right:0px">
						<div class="title">이름</div>
						<div class="content"></div>
					</li>
					<li class="col-6 col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-left:0px;padding-right:0px">
						<div class="title">경력</div>
						<div class="content"> </div>
					</li>
					<li class="col-6 col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-left:0px;padding-right:0px">
						<div class="title">연락처</div>
						<div class="content"></div>
					</li>
					<li class="col-6 col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-left:0px;padding-right:0px">
						<div class="title">이메일</div>
						<div class="content"></div>
					</li>
					<li class="col-6 col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-left:0px;padding-right:0px">
						<div class="title">희망급여</div>
						<div class="content"></div>
					</li>
					<li class="col-6 col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-left:0px;padding-right:0px">
						<div class="title">투입가능일</div>
						<div class="content"></div>
					</li>
					<li class="col-6 col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-left:0px;padding-right:0px">
						<div class="title">인증번호</div>
						<div class="content"></div>
					</li>
					<li class="col-6 col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-left:0px;padding-right:0px">
						<div class="title">보유 레퍼런스</div>
						<div class="content"></div>
					</li>
				</ul>
					<input type="submit" value="프로젝트 지원" class="btn-primary btn-block">
			</div>
		</div>
	</div>
	</div>

	<!-- 추천 프로젝트 -->
	<div style="margin-top: 50px">
		<div class="container" id="recommend" style="background-color: #fff">
			<h2>
				<strong>추천</strong> 프로젝트
			</h2>
			<table class="table">
				<tbody>
					<tr>
						<th>기업명</th>
						<th>공고명</th>
						<th>마감일, 등록일</th>
					</tr>
					<tr>
						<td><a>아드반테스트코리아(주)</a>
							<button>
								<span>관심기업 등록</span>
							</button></td>
						<td><span> <a>아드반테스트코리아㈜ 신입/경력 모집</a> <input
								type="checkbox" class="starCheck" id="starCheck"> <label
								for="starCheck"> </label>
						</span> <span> 이천시 <span>|</span> 신입/경력 <span>|</span> 대졸↑
						</span></td>
						<td><span><span>~ 4/26(일)</span>13일 전 등록</span></td>
					</tr>

					<tr>
						<td><a>기업222(주)</a>
							<button>
								<span>관심기업 등록</span>
							</button></td>
						<td><span> <a>아드반테스트코리아㈜ 신입/경력 모집</a> <input
								type="checkbox" class="starCheck" id="starCheck"> <label
								for="starCheck"> </label>
						</span> <span> 이천시 <span>|</span> 신입/경력 <span>|</span> 대졸↑
						</span></td>
						<td><span><span>~ 4/26(일)</span>13일 전 등록</span></td>
					</tr>

					<tr>
						<td><a>기업3333(주)</a>
							<button>
								<span>관심기업 등록</span>
							</button></td>
						<td><span> <a>아드반테스트코리아㈜ 신입/경력 모집</a> <input
								type="checkbox" class="starCheck" id="starCheck"> <label
								for="starCheck"> </label>
						</span> <span> 이천시 <span>|</span> 신입/경력 <span>|</span> 대졸↑
						</span></td>
						<td><span><span>~ 4/26(일)</span>13일 전 등록</span></td>
					</tr>

					<tr>
						<td><a>기업4444(주)</a>
							<button>
								<span>관심기업 등록</span>
							</button></td>
						<td><span> <a>아드반테스트코리아㈜ 신입/경력 모집</a> <input
								type="checkbox" class="starCheck" id="starCheck"> <label
								for="starCheck"> </label>
						</span> <span> 이천시 <span>|</span> 신입/경력 <span>|</span> 대졸↑
						</span></td>
						<td><span><span>~ 4/26(일)</span>13일 전 등록</span></td>
					</tr>


				</tbody>
			</table>
		</div>

	</div>
	<!-- 추천채용정보 끝 -->

</body>
</html>