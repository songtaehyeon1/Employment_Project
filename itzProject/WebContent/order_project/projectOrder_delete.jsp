<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${result>0 }">
	<script>
		location.href="<%=request.getContextPath()%>/ask/projectList.do"	
	</script>
</c:if>

<c:if test="${result<=0 }">
	<script>
		alert("게시물 삭제 실패하였습니다")
		history.back();
	</script>
</c:if>