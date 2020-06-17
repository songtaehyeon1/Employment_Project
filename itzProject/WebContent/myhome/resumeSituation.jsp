<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 > 이력서 상태</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/resume.css">	
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>	
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script src="js/resume.js" type="text/javascript"></script>
<script>
	$(function () {
		$("#navb li").eq(1).css("font-weight","bold");
		$("#navb li>a").eq(1).css("color","white");
	});

</script>
</head>
<body class="bg-light">
	<%@ include file="/inc/myhomeMenu.jspf" %>
		
	<div class="tab-pane cotainer-fuild" id="myhomemain"
		style="margin-top: 40px; margin-left: 50px; margin-right: 50px">
		<div class="row p-2 center-block">
			<!-- 왼쪽 -->
			<div class="col-2">
				<!-- 왼쪽의 메뉴 -->
				<%@ include file="/inc/myhomeLeft.jspf" %>
			</div>
			<!-- 중간 정보창 -->
			<div class="col bg-light mr-3">
					<!-- 이력서 ddddddddddddddd -->
					이력서 상태
			</div>
			<div class="col-1">
				<img src="img/Advertising1.png" style="margin-bottom: 20px"><br />
				<img src="img/Advertising2.png">
			</div>

		</div>
	</div>

</body>
</html>