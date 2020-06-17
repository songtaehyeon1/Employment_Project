<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${result>0 }">
	<script>
		console.log("글 등록 완료")		
		alert("글이 등록되었습니다. 게시판 리스트로 이동합니다")
		location.href = "<%=request.getContextPath()%>/ask/projectList.do";
	</script>
</c:if>
<c:if test="${result<=0 }">
	<script>
		alert("글등록이 실패하였습니다. 글등록 페이지로 이동합니다")
		history.go(-1);
	</script>
</c:if>