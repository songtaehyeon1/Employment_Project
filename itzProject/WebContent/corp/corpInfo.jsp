<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
	.container{
		margin-top:32px; 
		width:40%;
	}
	small{padding-left:10px;}
	.content{border-top:2px solid #444;}
	form{margin-top:15px;}
	b{color:#666;}
	label{	
		width:100%;
		background-color:#F6F6F6;  
	}
	.lbl_email, .lbl_Birth, .lbl_tel{width:100%;}
	#email, #code{border-radius:5px;}
	.row{margin:0 auto;}
	.corp_account_tit{
		margin-bottom:10px;
	}
	.corp_tit, .corp_charge_tit{
		margin-top:50px; 
		margin-bottom:10px; 
	}
	#addr2{margin-top:5px;}
	#codelist{border-radius:5px;}
	span button{
		margin-top:38px;
		width:100px;
		height:50px;
		position:relative;
		left:200px;
	}
	.btnModify, .btnCancel{
		font-size:1em;
		font-weight:bold; 
	}
</style>

<script>
//우편번호 서비스
function openDaumZipAddress() {
	new daum.Postcode({
		oncomplete:function(data) {
			jQuery("#company_zipcode").val(data.zonecode);
			jQuery("#company_addr1").val(data.address);
			jQuery("#company_addr2").focus();
		}
	}).open();
}

//업종 선택
function jobOption(){
	var tagOption=["업종 선택", "솔루션·SI·ERP·CRM", "웹에이젼시", "쇼핑몰·오픈마켓", "포털·인터넷·컨텐츠", "네트워크·통신·모바일", "하드웨어·장비", "정보보안·백신", "IT컨설팅", "게임"];    
	var tag="";
	for(i=0; i<tagOption.length; i++){
		tag += "<option value='"+tagOption[i]+"'+>" +tagOption[i] +"</option>";
	}
	document.getElementById("job_categroy").innerHTML = tag;
	//업종 선택된 값 가져오기        //※jq06_select_attribute.html
	$("#job_categroy").children("option[value*='${vo.job_category}']").prop("selected",true);
}
/*
//휴대전화_이동통신사
function codelsitOption(){
	var tagOption=["이동통신사", "SKT", "KT", "LGU+", "알뜰폰"];    
	var tag="";
	for(i=0; i<tagOption.length; i++){
		tag += "<option value='"+tagOption[i]+"'+>" +tagOption[i] +"</option>";
	}
	document.getElementById("codelist").innerHTML = tag;
	//이동통신사 선택된 값 가져오기            
	$("#codelist").children("option[value*='']").prop("selected",true);
}

//휴대전화_자동 커서 이동
function cursorMove4(str){
	if(str!="이동통신사"){
		document.getElementById("corp_charge_tel").focus();	
	}
}
*/
//jquery
$(function(){ 
	$(document).on("submit","#corpInfoFrm",function(){	
		console.log(1);
		//비밀번호 검사
		var reg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,20}$/;
		if($("#corp_pwd").val()==""){
			alert("비밀번호를 입력해주세요.");
			return false; 
		}
		if(!reg.test($("#corp_pwd").val())){
			alert("비밀번호는 8~20자의 최소 하나의 숫자, 영문 대소문자, 특수문자 조합으로 입력해주세요.");
			return false;
		}
		
		//비밀번호 재확인
		if($("#corp_pwdChk").val()==""){
			alert("비밀번호 재확인을 입력해주세요.");
			return false; 
		}
		if($("#corp_pwdChk").val()!=$("#corp_pwd").val()){
			alert("비밀번호가 일치하지않습니다. 다시 입력해주세요.");
			return false;  
		}
		
		//대표자명 검사	
		if($("#ceo_name").val()==""){
			alert("대표자명을 입력해주세요.");
			return false; 
		}
		var reg = /^[가-힣]{2,7}$/;
		if(!reg.test($("#ceo_name").val())){
			alert("한글 이름 2~7자를 입력해주세요.");
			return false;
		}
		
		//회사주소 검사
		if($("#company_zipcode").val()=="" &&  $("#company_addr1").val()=="" && $("#company_addr2").val()==""){
			alert("회사주소를 입력해주세요.");
			return false;  
		}
		if($("#company_zipcode").val()==""){
			alert("우편번호를 입력해주세요.");
			return false;   
		}else if($("#company_addr2").val()==""){
			alert("상세주소를 입력해주세요.");
			return false;  
		}
		
		//업종 검사
		if($("#job_categroy").val()=="업종 선택"){
			alert("업종을 선택해주세요.");
			return false;  
		}
		
		//기업 구분 검사
		if($("#choice_company").val()==""){
			alert("기업구분을 선택해주세요.");
			return false;  
		}
		
		//담당자명 검사
		if($("#corp_charge").val()==""){
			alert("담당자명을 입력해주세요.");
			return false; 
		}
		var reg = /^[가-힣]{2,7}$/;
		if(!reg.test($("#corp_charge").val())){
			alert("한글 이름 2~7자를 입력해주세요.");
			return false;
		}
		
		//휴대전화 검사
		var reg = /^01[0|1|6|7|8|9][0-9]{7,8}$/;
		/*if($("#codelist").val()=="이동통신사"){
			alert("이동통신사를 선택해주세요.");
			return false;  
		}else*/ if($("#corp_charge_tel").val()==""){
			alert("휴대전화번호를 입력해주세요.");
			return false;  
		}else if(!reg.test($("#corp_charge_tel").val())){			
			alert("휴대전화번호는 '-'없이 10~11자의 숫자만 입력해주세요.");
			return false;		
		}
		/*
		else if($("#number").val()==""){
			alert("인증번호를 입력해주세요.");
			return false;  
		}
		*/
		
		return true;
	});
});
</script>

<body onload="jobOption();">
<nav class="navbar bg-primary">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#">
    <img src="img/main.jpgs" alt="logo" style="width:40px;">
  </a>
</nav>

<div class="container"><br>
	<h2>기업정보 수정</h2>
	<p><small>기업 정보를 수정·확인하실 수 있습니다.</small></p>
 
 	<div class="content">
	    <form method="post" id="corpInfoFrm" action="<%=ctx%>/corp/corpInfoEditOk.do">
	    	<div class="corp_account_tit"><strong>계정정보</strong></div>
			<div class="form-group input-group">
				<label for="corp_email" class="lbl_email">이메일(아이디)</label> 
				<div><b>${vo.corp_email}</b></div>
			</div>

			<div class="form-group">
				<label for="corp_pwd">비밀번호</label> 
				<input type="password" class="form-control" id="corp_pwd" placeholder="8~20자의 최소 하나의 숫자, 영문 대소문자, 특수문자 조합" name="corp_pwd" maxlength="20">
			</div>
			<div class="form-group">
				<label for="corp_pwdChk">비밀번호 재확인</label> 
				<input type="password" class="form-control" id="corp_pwdChk" placeholder="비밀번호 확인" name="corp_pwdChk" maxlength="20">
			</div>
	    
			<div class="corp_tit"><strong>기업정보</strong></div>
			<div class="form-group input-group">
				<label for="corp_code" class="lbl_email">사업자등록번호</label> 
				<div><b>${vo.corpcode}</b></div>
			</div>
			
			<div class="form-group">
				<label for="company_name">기업명</label> 
				<div><b>${vo.company_name}</b></div>
			</div>
			
			<div class="form-group">
				<label for="ceo_name">대표자명</label> 
				<input type="text" class="form-control" id="ceo_name" placeholder="대표자명" name="ceo_name" maxlength="20" value="${vo.ceo_name}">
			</div>
			
			<div class="form-group input-group">
				<label for="company_addr" class="lbl_addr">회사주소</label> 
				<input type="text" class="form-control" id="company_zipcode" placeholder="우편번호" name="company_zipcode" maxlength="20" readonly value="${vo.company_zipcode}">
				<div>
					<button class="btn btn-secondary searchAddr" type="button" onclick="openDaumZipAddress();">우편번호 찾기</button>
				</div>
			</div>
			
			<div class="form-group">
				<input type="text" class="form-control" id="company_addr1" placeholder="주소" name="company_addr1" maxlength="20" readonly value="${vo.company_addr1}">
				<input type="text" class="form-control" id="company_addr2" placeholder="상세주소" name="company_addr2" maxlength="20" value="${vo.company_addr2}">
			</div>
			
			<div class="form-group">
				<label for="job_categroy">업종</label> 
				<select class="form-control" id="job_categroy" name="job_categroy">
				</select> 
			</div>
			
			<div class="form-group">
				<label for="choice_company">기업구분</label> 
				<select class="form-control" id="choice_company" name="choice_company">
					<option value=""></option>
					<option value="일반" <c:if test="${vo.choice_company=='일반'}">selected</c:if>>일반</option>
					<option value="파견/도급/채용대행" <c:if test="${vo.choice_company=='파견/도급/채용대행'}">selected</c:if>>파견/도급/채용대행</option>
					<option value="헤드헌팅" <c:if test="${vo.choice_company=='헤드헌팅'}">selected</c:if>>헤드헌팅</option>
				</select> 
			</div>
			
			<div class="corp_charge_tit"><strong>담당자정보</strong></div>
			<div class="form-group">
				<label for="corp_charge">담당자명</label> 
				<input type="text" class="form-control" id="corp_charge" placeholder="담당자명" name="corp_charge" maxlength="20" value="${vo.corp_charge}">
			</div>
			
			<div class="form-group input-group">
				<label for="codelist" class="lbl_tel">휴대전화</label>
				<!-- 
				<select class="form-control col-sm-4" id="codelist" name="codelist" onchange="cursorMove4(this.value)">
				</select>
				 -->
				<input type="tel" class="form-control" id="corp_charge_tel" placeholder="'-'없이 숫자만 입력" name="corp_charge_tel" maxlength="11">
				<div class="input-group-append">
					<button class="btn btn-secondary" type="button">인증번호 전송</button>
				</div>
			</div>
			
			<!-- 
			<div class="form-group input-group">
				<input type="text" class="form-control" id="number" placeholder="인증번호" name="number">
				<div class="input-group-append">
					<button class="btn btn-outline-secondary" type="button">확인</button>
				</div>
			</div>
			 -->
			
			<span>
				<button type="submit" class="btn btn-primary btn-lg btnModify">수정하기</button>
				<button type="button" class="btn btn-secondary btn-lg btnCancel" onclick="location.href='<%=ctx%>/index.jsp'">취소</button>
			</span>
		</form>
	</div>
</div>