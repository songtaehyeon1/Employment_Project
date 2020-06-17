<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<hr id='z'>
<c:if test="${result=='idOk'}">
idOk <%-- idOk는 회원가입폼에 입력한 이메일이 이미 가입되어있어 사용 할 수 없는 이메일인 경우를 말한다. --%>
</c:if>
<c:if test="${result=='mailOk'}">
mailOk <%-- mailOk는 회원가입폼에 입력한 메일로 인증코드 전송을 성공한 경우를 말한다. --%>
</c:if>
<c:if test="${result==null || result=='' }">
not
</c:if>
<hr id='z'>