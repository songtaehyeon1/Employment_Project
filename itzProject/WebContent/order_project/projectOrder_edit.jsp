<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ include file="/inc/loginCheck.jspf" %> --%>
<%-- <c:if test="${vo.userid!=userid }"><!-- 글쓴이와 세션아이디가 같을 경우 수정가능하고 다를경우는 홈으로 보낸다. --> --%>
<!-- 	<script> -->
<!-- 		alert("잘못된 접근입니다. 홈으로 이동합니다.") -->
<%-- 		location.href='<%=ctx%>/index.do' --%>
<!-- 	</script> -->
<%-- </c:if> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="//cdn.ckeditor.com/4.14.0/full/ckeditor.js"></script>
<script>
	$(function(){
		CKEDITOR.replace('content');//name을 넣어줘야함.
		
		$("#boardFrm").submit(function(){
			if($("#subject").val()==""){
				alert("제목을 입력하세요");
				return false;
			}
			if(CKEDITOR.instances.content.getData()==""){
				alert("글 내용을 입력하세요");
				return false;
			}
		})
	})
</script>
</head>
<body>
	<div class="container">
		<h1>게시판 글수정</h1>
		<form method="post" id="boardFrm" action="<%=request.getContextPath()%>/ask/project_editOk.do">
			제목<input type="text" name="projectName" id="projectName" style="width:100%" value="${vo.projectName }"/><br>
			글내용<textarea name="projectDetail" id="projectDetail">${vo.projectDetail }</textarea><br>
		
		
			<input type="hidden" name="projectNumber" value="${vo.projectNumber }">
			<input type="hidden" name="pageNum" value="${pVO.pageNum }">
			<input type="hidden" name="searchKey" value="${pVO.searchKey }">
			<input type="hidden" name="searchWord" value="${pVO.searchWord }">
			
			
			<input type="submit" value="글수정"/>
			<input type="reset" value="reset">
		</form>
	</div>
</body>
</html>








