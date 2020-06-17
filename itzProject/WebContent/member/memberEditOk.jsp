
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${logStatus==null || logStatus=='N'}">
	<script>
		alert("로그인 후 접속이 가능합니다.");
		location.href="<%=ctx%>/index.do";
	</script>
</c:if>

<c:if test="${result<=0}">
	<script>
		alert("회원정보 수정에 실패하였습니다. 회원정보 수정 페이지로 이동합니다.");
	</script>
</c:if>

<c:if test="${result>0}">
	<script>
		alert("회원정보 수정이 완료 되었습니다.");
	</script>
</c:if>

<script>
	location.href="<%=ctx%>/person/personInfoEdit.do";
</script>