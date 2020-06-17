<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<style>
	#boardList, #boardList>li{margin:0;padding:0;list-style-type:none;text-align:center}
	
 	#boardList>li{float:left;width:10%;height:50px;line-height:50px;border-bottom:1px solid gray}
	#boardList>li:nth-of-type(7n-5){width:15%}
	#boardList>li:nth-of-type(7n-4){width:35%}
	.wordCut{white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
</style>
<script>
	$(function(){
		$("#searchForm").submit(function(){
			//검색어를 입력했는지 확인하기.
			if($("#searchWord").val()==""){
				alert("찾으실 검색어를 입력하세요")
				return false;
			}
		})
	})

</script>
</head>
<body>
	<div class="container">
		<h2>
			<strong>프로젝트 리스트</strong> 
		</h2>
		<ul id="boardList">
			
			<li><strong>기업명</strong></li>
			<li><strong>분야</strong></li>
			<li><strong>프로젝트</strong></li>
			<li><strong>프로젝트 기간</strong></li>
			<li><strong>작업형태</strong></li>
			<li><strong>근무위치</strong></li>
			<li><strong>마감일</strong></li>
			
			<c:forEach var="vo" items ="${list }">
				<li>${vo.corpName }</li>
				<li>${vo.workField }</li>
				<li class="wordCut" style="text-align:left"><a href="<%=request.getContextPath()%>/ask/projectListContent.do?projectNumber=${vo.projectNumber}&pageNum=${pageVO.pageNum}<c:if test="${pageVO.searchKey!=null&&pageVO.searchWord!=null }">&$searchKey=${pageVO.searchKey }&searchWord=${pageVO.searchWord }</c:if>">${vo.projectName }</a></li>
				<li>${vo.workPeriod }일</li>
				<li>${vo.workForm }</li>
				<li>${vo.workPlace }</li>
				<li>${vo.projectDeadline }</li>
<%-- 				<li style="display:hidden">${vo.hit }</li> --%>
			</c:forEach>
			
		</ul>
		<div>
			<!-- 페이징	 -->
			<!-- 현재 페이지가 1페이지 일때 -->
			<c:if test="${pageVO.pageNum==1 }">
				prev
			</c:if>
			<!-- 현재 페이지가 1페이지 아닐때 -->
			<c:if test="${pageVO.pageNum>1 }">
				<a href="<%=request.getContextPath()%>/ask/projectList.do?pageNum=${pageVO.pageNum-1}
				<c:if test="${pageVO.searchKey!=null&&pageVO.searchWord!=null }">&searchKey=${pageVO.searchKey }&searchWord=${pageVO.searchWord }</c:if>">prev</a></c:if>
		 	<c:forEach var="i" begin="${pageVO.startPage }" end="${pageVO.startPage + pageVO.onePageCount-1}">
		 		<c:if test="${i<= pageVO.totalPage }">
					<a href="<%=request.getContextPath()%>/ask/projectList.do?pageNum=${i}<c:if test="${pageVO.searchKey!=null&&pageVO.searchWord!=null }">&searchKey=${pageVO.searchKey }&searchWord=${pageVO.searchWord }</c:if>"
					<c:if test="${i==pageVO.pageNum}">style='border:1px solid red'</c:if>> ${i} </a> 
				</c:if>
			</c:forEach>
			
			
			<!-- 현재 페이지가 마지막일 경우 다음페이지가 뜨면 안된다. -->
			<c:if test="${pageVO.pageNum == pageVO.totalPage }">
				next
			</c:if>
			<c:if test="${pageVO.pageNum<pageVO.totalPage }">
				<a href="<%=request.getContextPath()%>/ask/projectList.do?pageNum=${pageVO.pageNum+1}
				<c:if test="${pageVO.searchKey!=null&&pageVO.searchWord!=null }">&searchKey=${pageVO.searchKey }&searchWord=${pageVO.searchWord }</c:if>">next</a></c:if>
		</div>
		<div>
			<!-- 검색 -->
			<form id="searchForm" action="<%=request.getContextPath()%>/ask/projectList.do" >
				<select name="searchKey">
					<option value="projectName">제목</option>
					<option value="projectDetail">글내용</option>
					<option value="corpName">작성자</option>
				</select>
				<input type="text" name="searchWord">
				<input type="submit" value="검색">
			</form>
		</div>
		<div>
		<!--글쓰기 -->
			<a href="<%=request.getContextPath()%>/ask/projectList.do">게시판 목록</a>
			<c:if test="${logStatus!=null && logStatus=='Y'}">
				<a href="<%=request.getContextPath()%>/ask/orderProject.do">글쓰기</a>
			</c:if>
		</div>	
			
		
	</div>
</body>
</html>



