<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${result>0 }">
<button type="button" class="close" id="picdel">&times;</button><img src="<%=request.getContextPath()%>/myhome/corpPic/${filename}" style='display:block'	id="userPic" class="img-thumbnail"/>
</c:if>