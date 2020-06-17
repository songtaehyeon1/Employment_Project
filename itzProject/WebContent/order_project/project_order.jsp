<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
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
<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js"
	type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/order_project/order_project.css">
<style>

</style>
<script>
	var id = "order_page_";
	var count = 0;
	var currentId = id + count
	var percent = 0;
	var percentspan = 0;
	$(function() {
		$('#minPrice').on('change',function(){
			var n = $(this).val();
			n = Math.floor(n/1000)*1000;
			$(this).val(n)
			if($(this).val()<5000){
				alert("최소금액은 5000원 이상이여야 합니다.")
				$(this).focus();
				return false;
			}
			var $input = $("#minPrice");
			var _$self = $(this);
			var value = _$self.val();
			var result = AddComma(value);
			_$self.val(result);
		})
		$('#maxPrice').on('change',function(){
			var n =$(this).val();
			n = Math.floor(n/1000)*1000;
			$(this).val(n)
			var $input = $("#maxPrice");
			var _$self = $(this);
			var value = _$self.val();
			var result = AddComma(value);
			_$self.val(result);
			
			if(($(this).val()<$(minPrice).val())&&($(this).val()!=''||$(this).val()!=0||$(this).val()!=null)){
				alert("최대금액이 최소금액보다 작을 수 없습니다")
				$(this).focus();
				return false;
			}			
			if($(this).val()==''||$(this).val()==null||$(this).val()==0){
				$(this).val()=='협의'
			}
			
		})
		function AddComma(dataValue) {
			isNumber(dataValue);
			var separateValue = Number(dataValue).toLocaleString('en');
			if (separateValue == 'NaN') {
			  return '';
			}
			return separateValue;
		}
		function isNumber(checkValue) {
		    checkValue = '' + checkValue;
		    if (isNaN(checkValue) || checkValue == "") {
		      alert('숫자만 입력해 주세요');
		      return;
		    }
		}
		
		$("#order_start").on("click", function() {
			if(currentId=='order_page_1'){
				if (workField.value =='') {
					alert("분야를 선택해주세요")
					$("#workField").focus();
					return false;
				}
				if ($("#projectName").val() == "") {
					alert("프로젝트명을 입력해주세요")
					$("#projectName").focus()
					return false;
				}
			}
			if(currentId=='order_page_2'){
				console.log(neededMember.value)
				console.log($("#neededMember").val())
				if(neededMember.value==''){
					alert("오더에 필요한 인원을 선택해주세요")
					$("#neededMember").focus();
					return false;
				}
				if(neededMember.value=='-1'){
					if($("#member_number_manually").val()==''||$("#member_number_manually").val()<1){
						alert("오더에 필요한 인원을 선택해주세요")						
						$("#member_number_manually").focus()
						return false;
					}
				}
				if(neededEXP.value==''){
					alert("프로젝트에 필요한 경력을 선택해주세요")
					$("#neededEXP").focus();
					return false;
				}
			}	
			if(currentId=='order_page_3'){
				console.log($("input[name='workPeriod']")[0])
				console.log($("input[name='workPeriod']")[1])
				console.log($("input:radio[name='workPeriod'].checked").val(1))
				console.log($("input:radio[name='workPeriod'].checked"))
				
				val = $("input[name='workPeriod']");
				if($("input[name='workPeriod']:checked").val()=='-1'){
					if(val.eq(11).val()==''||val.eq(11).val()<1){
						alert("작업기간을 입력해주세요")
						val.eq(11).focus();
						return false;
					}
				}
			}
			
			if(currentId=='order_page_4'){
				console.log($(maxPrice).val())
				if($(maxPrice).val()!=0&&($(maxPrice).val()<$(minPrice).val())){
					alert("최대금액이 최소금액보다 작을 수 없습니다")
					$(maxPrice).focus();
					return false;
				}
				if($(minPrice).val()<5000){
					alert("최소금액은 5000원 이상이여야 합니다.")
					$(minPrice).focus();
					return false;
				}
			}
			
			if(currentId=='order_page_5'){
				var arrayParam = new Array();
	
				$("input:radio[name='workForm']:checked").each(function(){
					arrayParam.push($(this).val());
				});
				
				if($("input[name='workForm']:radio:checked").length!=1){
					alert("근무형태를 선택하셔야 합니다")
					return false;
				}
				if($("input[name='workForm']:radio:checked").val()=='정규'||
						$("input[name='workForm']:radio:checked").val()=='파견'||
						$("input[name='workForm']:radio:checked").val()=='반상주'||
						$("input[name='workForm']:radio:checked").val()=='기타'){
					if(workPlaceDetail.value==''){
						alert("근무지역을 자세히 기재해주세요")
						return false;
					}
				}
			}
			if(currentId=='order_page_6'){
				if($("#projectDetail").val() == '') {
					alert("작업에 대한 상세 정보를 입력해주세요")
					$("#projectDetail").focus();
					return false;
				}
			}
			if(currentId=='order_page_7'){
				if($("input:radio[name='meeting']:checked").val()=='네'){
					if($("#meetingPlace").val()==null||meetingPlace.value==''){	
						alert("지역을 선택하세요")
						$("#meetingPlace").focus()
						return false;
						}
					if($("#meetingPlaceDetail").val()==''){
						alert("상세 지역을 입력해주세요")
						$("#meetingPlaceDetail").focus()
						return false;
						}
					}
			}
					
			if(currentId=='order_page_8'){
			}
			
			if(currentId=='order_page_9'){
				console.log(deadline.value)
				console.log($("deadline").val())
				if($("#deadline").val()==''){
					alert("구인 마감 날짜를 선택하세요")
					$("#deadline").focus();
					return false;
				}
			}
			
			percent += 10;
			document.getElementById("percent_bar").style.width = percent + "%"
			document.getElementById("percent_spot").innerHTML = percent + "%";
			document.getElementById(currentId).style.display = "none";
			count++;
			currentId = id + count;
			document.getElementById(currentId).style.display = "block";
			if (currentId == 'order_page_0') {
				$("#order_start").html('의뢰 시작하기')
			}if (currentId != 'order_page_0') {
				$("#order_start").html('다음')
				document.getElementById("prevPage").style.display="block";
			}if(currentId=='order_page_10') {
				document.getElementById('order_start').style.visibility="hidden"
			}
			
		});
	})
	
	function prevPage() {
		percent -= 10;
		document.getElementById("percent_bar").style.width = percent + "%"
		document.getElementById("percent_spot").innerHTML = percent + "%";
		document.getElementById(currentId).style.display = "none"
		count--;
		currentId = id + count;
		document.getElementById(currentId).style.display = "block"
	
		if (currentId != 'order_page_0') {
			$("#order_start").html('다음')
		}
		if (currentId == 'order_page_0') {
			$("#order_start").html('의뢰 시작하기')
			document.getElementById("prevPage").style.display="none";
		}
		if (currentId != 'order_page_10') {
			document.getElementById('order_start').style.visibility = "visible"
		}
	}
	
	function write_period_visible(val) {
		console.log(val.value)
		var manuallyWrite = document.getElementById("period_div");
		if(val.value!="-1"){
			manuallyWrite.style.display='none';
			$("#workPeriod_manually").val('');
		}
		if(val.value=="-1"){
			manuallyWrite.style.display='block';
		}
	}
	function membernumbermanually(val){
		if(val.value=="-1")
		document.getElementById("member_number_manually_div").style.display='block';
		if(val.value!="-1")
		document.getElementById("member_number_manually_div").style.display='none';
		$("#member_number_manually").val('');
	}
	function meetingAnswer(val){
		if(val.value=="네")
			document.getElementById("meeting_place_wrap").style.display='block'
		if(val.value=="아니오")
			document.getElementById("meeting_place_wrap").style.display='none'
			$("#meetingPlace").val('');
			$("#meetingPlaceDetail").val('');
	}
	function show_workPlace_wrap(){
		$("input:radio[name='workForm']").each(function(){
			if(this.value=='파견'||this.value=='정규'||this.value=='반상주'||this.value=='기타'){
				document.getElementById("workPlace_wrap").style.display = "block"
				}
			if(($("input[name='workForm']:radio:checked").length<1)||
			   ($("input[name='workForm']:radio:checked").length==1&&$("input[name='workForm']:radio:checked").val()=='재택')){
				document.getElementById("workPlace_wrap").style.display = "none"
				document.getElementById("workPlaceDetail_wrap").style.display = "none"
				document.getElementById("workPlaceDetail").value= ""
			}
		})	
	}
			
	function show_workplaceDetail(){
		document.getElementById("workPlaceDetail_wrap").style.display="block"
	}
	
	function wordLengthCheck(obj,maxByte){
		var stringValue = obj.value;
		var strValLength = stringValue.length; 
		var byteLength = 0;
		var li_len = 0;
		var oneChar = "";
		var returnValue = "";
		 
		for ( var i=0; i< strValLength; i++) {
		    oneChar = stringValue.charAt(i);
		 
		    if (escape(oneChar).length > 4) {
		      byteLength += 2;
		    } else {
		      byteLength++;
		    }
		        
		    if(byteLength <= maxByte) {
		      li_len = i + 1;
		    }
		  }
		  if(byteLength > maxByte) {
			var warning = "한글" + maxByte/2 +"자/ 영문" +maxByte+"자를 초과 입력 할 수 없습니다.";
		    alert(warning)
		    returnValue = stringValue.substr(0, li_len);
		    obj.value = returnValue;
		    wordLengthCheck(obj, 4000);
		  } 
	}

</script>
</head>
<body>
	<div class="jumbotron jumbotron-fluid" style="padding-bottom:0">
		<div id="mainTag" style="margin-left:20%">
			<h1>내가 원하는 맞춤 프로젝트를 주문할 수 있습니다.</h1>
			<p>다수의 전문가에게 견적을 받아보세요.</p>
			<button type="button" id="orderbutton" class="btn btn-primary"
			data-toggle="modal" data-target="#myModal" data-backdrop="static"
			data-keyboard="false">>프로젝트 의뢰하기</button>
		</div>
	</div>

	<div class="container" style="padding:10px 0 80px">
		<div class="row">
			<div class="col-12 text-center">
				<h1>프로젝트 주문을 이용하는 방법</h1>
			</div>
			<div class="col-sm-3">
				<h3>1.주문하기</h3>
				<p>필요한 정보를 입력하고
맞춤 프로젝트 주문하기</p>
			</div>
			<div class="col-sm-3">
				<h3>2.제안받기</h3>
				<p>다수의 전문가에게 
작업 제안받기</p>
			</div>
			<div class="col-sm-3">
				<h3>3.결제하기</h3>
				<p>조건에 맞는 제안을 선택하여 
안전하게 결제하기</p>
			</div>
			<div class="col-sm-3">
				<h3>4.구매확정</h3>
				<p>작업 완료 후 구매확정하면 
판매자에게 대금 지급</p>
			</div>
		</div>
	</div>
	
<!-- 이곳은 프로젝트 전문가 목록을 띄우는 곳임. 나중에 데이터가 쌓이면 반복문 돌릴것. -->
<div id="demo" class="carousel slide" data-ride="carousel">
	<div class="col-12 text-center">
		<h1>추천 프로젝트 전문가</h1>
	</div>
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
		<div class="container">	
		<div class="row">
			    <div class="card col col-sm-4" style="width:400px;">
				    <img class="card-img-top" src="<%=request.getContextPath() %>/img/profile1.png" alt="Card image" style="width:100%">
				    <div class="card-body">
					    <h4 class="card-title">프로필7</h4>
					    <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					    <a href="#" class="btn btn-primary">See Profile</a>
	    			</div>
	  			</div>
			    <div class="card col col-sm-4" style="width:400px;">
				    <img class="card-img-top" src="<%=request.getContextPath() %>/img/profile2.png" alt="Card image" style="width:100%">
				    <div class="card-body">
					    <h4 class="card-title">프로필8</h4>
					    <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					    <a href="#" class="btn btn-primary">See Profile</a>
	    			</div>
	  			</div>
			    <div class="card col col-sm-4" style="width:400px;">
				    <img class="card-img-top" src="<%=request.getContextPath() %>/img/profile3.png" alt="Card image" style="width:100%">
				    <div class="card-body">
					    <h4 class="card-title">프로필9</h4>
					    <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					    <a href="#" class="btn btn-primary">See Profile</a>
	    			</div>
	  			</div>
		</div>
	</div>

    </div>
    <div class="carousel-item">
		<div class="container">	
		<div class="row">
			    <div class="card col col-sm-4" style="width:400px;">
				    <img class="card-img-top" src="<%=request.getContextPath() %>/img/profile2.png" alt="Card image" style="width:100%">
				    <div class="card-body">
					    <h4 class="card-title">프로필1 </h4>
					    <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					    <a href="#" class="btn btn-primary">See Profile</a>
	    			</div>
	  			</div>
			    <div class="card col col-sm-4" style="width:400px;">
				    <img class="card-img-top" src="<%=request.getContextPath() %>/img/profile3.png" alt="Card image" style="width:100%">
				    <div class="card-body">
					    <h4 class="card-title">프로필2</h4>
					    <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					    <a href="#" class="btn btn-primary">See Profile</a>
	    			</div>
	  			</div>
			    <div class="card col col-sm-4" style="width:400px;">
				    <img class="card-img-top" src="<%=request.getContextPath() %>/img/profile1.png" alt="Card image" style="width:100%">
				    <div class="card-body">
					    <h4 class="card-title">프로필3</h4>
					    <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					    <a href="#" class="btn btn-primary">See Profile</a>
	    			</div>
	  			</div>
		</div>
	</div>

    </div>
    <div class="carousel-item">
		<div class="container">	
		<div class="row">
			    <div class="card col col-sm-4" style="width:400px;">
				    <img class="card-img-top" src="<%=request.getContextPath() %>/img/profile3.png" alt="Card image" style="width:100%">
				    <div class="card-body">
					    <h4 class="card-title">프로필4</h4>
					    <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					    <a href="#" class="btn btn-primary">See Profile</a>
	    			</div>
	  			</div>
			    <div class="card col col-sm-4" style="width:400px;">
				    <img class="card-img-top" src="<%=request.getContextPath() %>/img/profile1.png" alt="Card image" style="width:100%">
				    <div class="card-body">
					    <h4 class="card-title">프로필5</h4>
					    <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					    <a href="#" class="btn btn-primary">See Profile</a>
	    			</div>
	  			</div>
			    <div class="card col col-sm-4" style="width:400px;">
				    <img class="card-img-top" src="<%=request.getContextPath() %>/img/profile2.png" alt="Card image" style="width:100%">
				    <div class="card-body">
					    <h4 class="card-title">프로필6</h4>
					    <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					    <a href="#" class="btn btn-primary">See Profile</a>
	    			</div>
	  			</div>
		</div>
	</div>

    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon" style="background-color:gray"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon" style="background-color:gray"></span>
  </a>
</div>


<!-- 프로젝트 주문 시작!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div class="modal fade " id="myModal">
		<div class="modal-dialog">
			<div class="modal-content" id="customModalSize">
				<form id="order_form" method="post"
					action="<%=request.getContextPath()%>/ask/orderProjectOk.do"
					enctype="multipart/form-data">
					<!-- Modal Header start -->
					<button id="close" type="button" class="close" data-dismiss="modal"
						style="z-index: 20">X</button>

					<div id="percentBar_wrap">
						<div id="percent_bar" class="percent_bar">
							<span class="percent_spot" id="percent_spot">0%</span>
						</div>
					</div>
					<!-- Modal Header end -->

					<!-- Modal Body start -->
					<div id="modalBody_wrap" style="margin-top: 100px; height: 600px">
						<div class="modal-body row" style="padding: 0px; display: block">
							<div class="container" id="order_page_0">
								<div
									class="container col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12"
									style="height: 300px; width: 800px" id="banner">

								</div>
								<div
									class="container col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12"
									style="height: 300px; padding: 0px">
									<h2>딱 맞는 오더 제안을 받기 위해</h2>
									<h2>꼭 필요한 몇 가지 질문에 답해 주세요.</h2>
								</div>
							</div>
						</div>


						<!-- 오더 시작-->
						<div class="orderpages" id="order_page_1">
							<h1>어떤 분야의 작업자를 찾으시나요?</h1>
							<select id="workField" name="workField" class="custom-select"
								required style="height: 50px; width: 80%;">
								<option value disabled selected>분야를 선택하세요</option>
								<option value="웹/웹사이트 개발">웹사이트 개발</option>
								<option value="안드로이드 앱 개발">안드로이드앱</option>
								<option value="ios앱 개발">아이폰앱</option>
								<option value="쇼핑몰 개발">쇼핑몰 개발</option>
								<option value="워드프레스">워드프레스</option>
								<option value="서비스 기획 ">서비스 기획</option>
								<option value="응용프로그래밍">응용프로그래밍</option>
								<option value="서비스 유지보수">유지보수</option>
								<option value="임베디드">임베디드</option>
								<option value="매크로/VBA">매크로/VBA</option>
								<option value="PC조립 및 수리">PC조립/수리</option>
								<option value="챗봇">챗봇</option>
								<option value="기타">기타</option>
							</select>
							<div>
								<h1>프로젝트명을 입력해주세요</h1>
								<textarea placeholder="예시 : 온라인 쇼핑몰 간단한 페이지 디자인 요청드립니다"
									id="projectName" name="projectName"
									onkeyup="wordLengthCheck(this,100)" required></textarea>
							</div>
						</div>



						<div class="orderpages" id="order_page_2">
							<h1>오더에 필요한 인원을 입력해주세요</h1>
							<select onchange="membernumbermanually(this)" id="neededMember"
								name="neededMember" class="custom-select reset" required
								style="height: 50px; width: 80%;">
								<option value disabled selected>인원을 선택하세요</option>
								<option value="1">1명</option>
								<option value="2">2명</option>
								<option value="3">3명</option>
								<option value="4">4명</option>
								<option value="5">5명</option>
								<option value="6">6명</option>
								<option value="7">7명</option>
								<option value="8">8명</option>
								<option value="9">9명</option>
								<option value="10">10명</option>
								<option value="-1">직접 입력</option>
							</select>
							<div class="reset" id="member_number_manually_div"
								style="display: none">
								<h3>직접 입력해 주세요</h3>
								<input type="number" name="neededMember_manually"
									id="member_number_manually" class="numReset" min="1" max="999">명
							</div>

							<h1>프로젝트에 필요한 최소 경력을 입력하세요</h1>
							<select id="neededEXP" name="neededEXP" class="custom-select"
								required style="height: 50px; width: 80%;">
								<option value disabled selected>프로젝트에 필요한 경력을 선택해주세요</option>
								<option value="상관없음">상관없음</option>
								<option value="1년 이하">1년 이하</option>
								<option value="1년~3년">1년 이상 ~ 3년 이하</option>
								<option value="3년~5년">3년 이상 ~ 5년 이하</option>
								<option value="5년~7년">5년 이상 ~ 7년 이하</option>
								<option value="7년~10년">7년 이상 ~ 10년 이하</option>
								<option value="10년 이상">10년 이상</option>
							</select>
						</div>

						<div class="orderpages" id="order_page_3">
							<h1>예상하는 작업 기간을 입력해 주세요</h1>
							<div class="answer">
								<div class="row col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
									<div class="answer_radio">
										<input type="radio" name="workPeriod" id="radio_1" value="1"
											onclick="write_period_visible(this);"> 1일 <label
											for="radio_1" class="radiomark"></label>
									</div>
									<div class="answer_radio">
										<input type="radio" name="workPeriod" id="radio_2" value="2"
											onclick="write_period_visible(this);"> 2일 <label
											for="radio_2" class="radiomark"></label>
									</div>
									<div class="answer_radio">
										<input type="radio" name="workPeriod" id="radio_3" value="3"
											checked onclick="write_period_visible(this);"> 3일 <label
											for="radio_3" class="radiomark"></label>
									</div>
								</div>
								<div class="row col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
									<div class="answer_radio">
										<input type="radio" name="workPeriod" id="radio_4" value="4"
											onclick="write_period_visible(this);"> 4일 <label
											for="radio_4" class="radiomark"></label>
									</div>
									<div class="answer_radio">
										<input type="radio" name="workPeriod" id="radio_5" value="5"
											onclick="write_period_visible(this);"> 5일 <label
											for="radio_5" class="radiomark"></label>
									</div>
									<div class="answer_radio">
										<input type="radio" name="workPeriod" id="radio_6" value="6"
											onclick="write_period_visible(this);"> 6일 <label
											for="radio_6" class="radiomark"></label>
									</div>
								</div>
								<div class="row col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
									<div class="answer_radio">
										<input type="radio" name="workPeriod" id="radio_7" value="7"
											onclick="write_period_visible(this);"> 7일 <label
											for="radio_7" class="radiomark"></label>
									</div>
									<div class="answer_radio">
										<input type="radio" name="workPeriod" id="radio_8" value="8"
											onclick="write_period_visible(this);"> 8일 <label
											for="radio_8" class="radiomark"></label>
									</div>
									<div class="answer_radio">
										<input type="radio" name="workPeriod" id="radio_9" value="9"
											onclick="write_period_visible(this);"> 9일 <label
											for="radio_9" class="radiomark"></label>
									</div>
								</div>
								<div class="row col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
									<div class="answer_radio">
										<input type="radio" name="workPeriod" id="radio_0" value="0"
											onclick="write_period_visible(this);"> 협의가능 <label
											for="radio_0" class="radiomark"></label>
									</div>
									<div class="answer_radio">
										<input type="radio" name="workPeriod" id="radio_-1" value="-1"
											onclick="write_period_visible(this);">직접입력 <label
											for="radio_-1" class="radiomark"></label>
									</div>
								</div>
								<div class="write_period" id="period_div" style="display: none">
									<h3>직접 입력해 주세요</h3>
									<input type="number" name="workPeriod_manually"
										id="workPeriod_manually" class="resetPeriod" min="1" max="999">일
								</div>
							</div>
						</div>

						<div class="orderpages" id="order_page_4">
							<h1>예산은 얼마인가요?</h1>
							<div>
								<h3 style="margin: 20px 0 -10px">최소 희망금액</h3>
								<br> <input type="text" id="minPrice" name="minPrice"
									required value="5,000" maxlength="9" size="9"><span>원</span><br>
								<h3 style="margin: 20px 0 -10px">최대 희망금액</h3>
								<br> <input type="text" id="maxPrice" name="maxPrice"
									placeholder="협의가능" maxlength="9" size="9"><span>원</span>
								<br>
								<pre style="margin-top: 20px">최소 5,000원 이상 1,000원 단위로 입력 가능합니다. 
최대금액은 최소금액보다 작을 수 없습니다.</pre>
							</div>
						</div>

						<div class="orderpages" id="order_page_5">
							<h1>원하시는 근무형태를 선택해주세요</h1>
							<input style="zoom: 1.5" type="radio" class="" id="workForm1"
								name="workForm" value="파견" onclick="show_workPlace_wrap()">
							<label class="checkbox_custom" for="workForm1">파견</label> <input
								style="zoom: 1.5" type="radio" class="" id="workForm2"
								name="workForm" value="정규" onclick="show_workPlace_wrap()">
							<label class="checkbox_custom" for="workForm2">정규</label> <input
								style="zoom: 1.5" type="radio" class="" id="workForm3"
								name="workForm" value="재택" onclick="show_workPlace_wrap()">
							<label class="checkbox_custom" for="workForm3">재택</label> <input
								style="zoom: 1.5" type="radio" class="" id="workForm4"
								name="workForm" value="반상주" onclick="show_workPlace_wrap()">
							<label class="checkbox_custom" for="workForm4">반상주</label> <input
								style="zoom: 1.5" type="radio" class="" id="workForm5"
								name="workForm" value="기타" onclick="show_workPlace_wrap()">
							<label class="checkbox_custom" for="workForm5">기타</label>

							<div id="workPlace_wrap" style="display: none">
								<h1>근무 지역을 선택해주세요</h1>
								<input style="zoom: 1.5" type="radio" class="" id="workPlace1"
									name="workPlace" value="서울" onclick="show_workplaceDetail()">
								<label class="checkbox_custom" for="workPlace1">서울</label> <input
									style="zoom: 1.5" type="radio" class="" id="workPlace2"
									name="workPlace" value="경기" onclick="show_workplaceDetail()">
								<label class="checkbox_custom" for="workPlace2">경기</label> <input
									style="zoom: 1.5" type="radio" class="" id="workPlace3"
									name="workPlace" value="전라" onclick="show_workplaceDetail()">
								<label class="checkbox_custom" for="workPlace3">전라</label> <input
									style="zoom: 1.5" type="radio" class="" id="workPlace4"
									name="workPlace" value="경상" onclick="show_workplaceDetail()">
								<label class="checkbox_custom" for="workPlace4">경상</label> <input
									style="zoom: 1.5" type="radio" class="" id="workPlace5"
									name="workPlace" value="강원" onclick="show_workplaceDetail()">
								<label class="checkbox_custom" for="workPlace5">강원</label> <input
									style="zoom: 1.5" type="radio" class="" id="workPlace6"
									name="workPlace" value="제주" onclick="show_workplaceDetail()">
								<label class="checkbox_custom" for="workPlace6">제주</label> <input
									style="zoom: 1.5" type="radio" class="" id="workPlace7"
									name="workPlace" value="기타" onclick="show_workplaceDetail()">
								<label class="checkbox_custom" for="workPlace7">기타</label>
							</div>
							<div id="workPlaceDetail_wrap" style="display: none">
								<input type="text" id="workPlaceDetail" name="workPlaceDetail"
									placeholder="근무지역을 자세히 써주세요" style="width: 80%; height: 50px;">
							</div>
						</div>

						<div class="orderpages" id="order_page_6">
							<h1>작업에 대한 상세 정보를 입력해주세요</h1>
							<textarea id="projectDetail" name="projectDetail"
								onkeyup="wordLengthCheck(this,1000)" required>
프로젝트명:ooo개발 프로젝트<br>
분야:ooo개발자<br>
위치:서울시 oo구<br>
일정:xx월 중순~xx월 말 (xx개월)<br>
업무:<br>
필요 스킬 레벨:<br>
급여:oo원~협의<br>
현재진행상황:<br>
** oooo 경험자 우대<br>
** oooo 가능자 우대<br>
연락처:010-1234-5678<br>
이메일:itzProject@gmail.com<br>
								
지원시에는 희망비용/프로젝트 내용/우대 사항 등을 자세히 기재해주시면<br>
프로젝트 인재 매칭에 더욱 도움이 됩니다.<br>
								</textarea>
						</div>

						<div class="orderpages" id="order_page_7">

							<h1>사전 미팅이 필요하신가요?</h1>
							<div style="margin-left: -5%">
								<div
									style="float: left; width: 40%; margin: 10px; height: 200px; left: 10%; position: relative;">
									<input type="radio" name="meeting" id="meeting_yes" value="네"
										onclick="meetingAnswer(this);">네<label
										for="meeting_yes" class="radiomark"
										style="background-image:url('<%=request.getContextPath()%>/img/team.png');background-size:contain"></label>
								</div>
								<div
									style="float: left; width: 40%; margin: 10px; height: 200px; right: -10%;  position: relative">
									<input type="radio" name="meeting" id="meeting_no" value="아니오"
										checked onclick="meetingAnswer(this)" style="">아니오<label
										for="meeting_no" class="radiomark"
										style="background-image:url('<%=request.getContextPath()%>/img/workAlone.png');background-size:contain"></label>
								</div>
							</div>
							<div id="meeting_place_wrap" style="display: none;">
								<p style="margin-top: 30px; float: left; margin-left: 10%;">미팅
									지역을 선택해주세요</p>
								<div style="margin: 0 auto">
									<select id="meetingPlace" name="meetingPlace"
										class="custom-select" style="height: 50px; width: 80%;">
										<option value disabled selected>지역을 선택하세요</option>
										<option value="서울">서울</option>
										<option value="경기">경기</option>
										<option value="전라">전라</option>
										<option value="경상">경상</option>
										<option value="강원">강원</option>
										<option value="제주">제주</option>
										<option value="기타">기타</option>
									</select> <input type="text" id="meetingPlaceDetail"
										name="meetingPlaceDetail" placeholder="상세 지역을 입력해주세요"
										style="width: 80%; margin-top: 10px; height: 50px;">
								</div>
							</div>
						</div>

						<div class="orderpages" id="order_page_8">


							<h1>참고할 첨부파일을 등록해 주세요.<span class="badge badge-secondary">선택</span></h1>
							<div class="custom-file" style="width: 80%;">
								<input type="file" class="custom-file-input" id="file"
									name="file"> <label class="custom-file-label"
									for="file">파일을 선택해주세요</label>
							</div>
							<script>
								$(".custom-file-input").on(
										"change",
										function() {
											var fileName = $(this).val().split(
													"\\").pop();
											$(this).siblings(
													".custom-file-label")
													.addClass("selected").html(
															fileName);
										});
							</script>
							<h1 style="margin-top: 50px">참고할 url주소를 입력해주세요<span class="badge badge-secondary">선택</span></h1>
							<textarea placeholder="예시 : www.ooooo.com" id="urlAddress"
								name="urlAddress" onkeyup="wordLengthCheck(this,200)"
								style="height: 200px"></textarea>
						</div>

						<div class="orderpages" id="order_page_9">
							<h1>구인 마감 날짜를 선택해주세요</h1>
							<br> <br> <br> <input id="deadline"
								name="deadline" width="200px" required />
							<script>
								var today = new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate());
								$('#deadline').datepicker({
									uiLibrary : 'bootstrap4.4.1',
									format : "yyyy-mm-dd",
									minDate : today
								});
							</script>
						</div>

						<div class="orderpages" id="order_page_10">
							<h2>마지막 페이지..약관동의나 프로젝트 공개범위</h2>
							<h2>넣으면 될거같다.</h2>
							<textarea placeholder="!!!!!!!!" id="agree" name="agree"></textarea>
							<input type="submit" class="btn btn-primary btn-block"
								style="width: 80%; margin-left: 10%" value="제출하기">
						</div>
					</div>
				</form>

				<!-- 다음/ 이전 버튼-->
				<a class="pre_page" id="prevPage" href="javascript:void(0);"
					style="display: none" onclick="prevPage();">이전</a>
				<div>
					<button type="button" id="order_start"
						class="btn btn-lg btn-primary">의뢰 시작하기</button>
				</div>
				<!-- 다음/ 이전 버튼-->

			</div>
		</div>
		
	</div>
<style>
footer{
		background-color:#eee;
		text-align:center;
		padding:50px;
		width : 100%;
		float : left;
	}
	.info li{
		display:inline-block;
		margin:0 10px;
	}
	.info li:after{
		content:"|";  /* | :shift+\ */ 
		margin:0 20px;
	}
	.info li:nth-child(3):after,
	.info li:nth-child(5):after, /* <br>도 객체로 인식하기때문에 5번째로 불러야한다. */
	.info li:last-child:after{
		content:"";	
	}
	.top_btn{
		width:40px;
		height:40px;
		border-radius:40px;
		font-weight:bold;
		position:fixed;
		bottom:20px;
		right:20px;
		display:none;
	}
</style>
<script>
$(function(){
	//탑버튼 이벤트
    $(window).scroll( function(){     //스크롤 시      
            var scr_t = $(window).scrollTop();  //현재 스크롤 위치
            
        	//탑버튼
            if(scr_t > 400){
    			$(".top_btn").fadeIn()
    		}else{
    			$(".top_btn").fadeOut()
    		}
    });
    
    //탑버튼
    $(".top_btn").click(function(){
		$("body, html").stop().animate({"scrollTop":0},1000) 
	}); 
});
</script>
<footer>
	<ul class="info">
    	<li>(주) IT-z</li>
        <li>대표 : 김비트</li>  
        <li>사업자등록번호: 214-85-24928</li> <br>
        <li>서울시 서초구 강남대로 459 (서초동, 백암빌딩)</li> <br>
        <li>이메일 : it-z@gmail.com</li>  
        <li>대표전화 : 02.123.4567</li>  
        <li>팩스 : 02.1234.5678</li> 
    </ul> <!--info end-->
    
    <p class="copy">
    	&copy; 2020 IT-z All rights reserved
    </p>
</footer> 
</body>
</html>