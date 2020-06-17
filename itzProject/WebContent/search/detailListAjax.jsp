<%@ page language = "java" contentType = "text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<hr id = 'qqq'>
<c:forEach var = "i" items = "${result}" varStatus = "status">
	<c:if test = "${ja == null || ja == 'asd'}">
		<li>에러 고쳐라<li>
	</c:if>
	<c:if test = "${ja == 'j'}">
		<li>
			<label for = "job_detail_${vo.sno3[status.index]}">${i}</label>
			<input type = "checkbox" id = "job_detail_${vo.sno3[status.index]}" name = "${vo.job_detail[status.index][0]}" value = "${i}">
		</li>
	</c:if>
	<c:if test = "${ja == 'a'}">
		<li>
			<label for = "area_detail_${vo.sno3[status.index]}">${i}</label>
			<input type = "checkbox" id = "area_detail_${vo.sno3[status.index]}" name = "${vo.area_detail[status.index][0]}" value = "${i}">
		</li>
	</c:if>
</c:forEach>
<input type = "hidden" value = "${ja}" name = "ja">
<hr id = 'www'>