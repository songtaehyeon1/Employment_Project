<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${result <=0 }">
	<script>
		alert("채용등록 실패");
		history.back();
	</script>
</c:if>
<c:if test="${result >0 }">
	<h1> 성공</h1>
</c:if>