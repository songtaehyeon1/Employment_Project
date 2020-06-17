<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${pVO.searchKey!=null&&pVO.searchKey!=''&&pVO.searchWord!=null&&pVO.searchWord!='' }">
	<c:set var='url'>
		&searchKey=${pVO.searchKey }&searchWord=${pVO.searchWord }
	</c:set>
</c:if>

<c:if test="${result>0 }">
	<script>
		alert("게시물이 수정되었습니다.");
		location.href="<%=request.getContextPath()%>/ask/projectList.do?no=${projectNumber}&pageNum=${pVO.pageNum}${url}";
	</script>
</c:if>
<c:if test="${result<0 }">
		<script>
			alert("게시물 수정 실패하였습니다. 다시 시도해주세요")
			history.go(-1);
		</script>
</c:if>
