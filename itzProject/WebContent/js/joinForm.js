$(function(){
	//개인회원가입
	//개인회원가입 유효성 검사
	$(document).on("submit","#personFrm",function(){
		//이메일(아이디) 검사		
		if($("#person_email").val()==""){
			alert("이메일 주소를 입력해주세요.");
			return false;   
		}

		//이메일(아이디) 중복검사
//		if($("#idStatus").val()=="N"){
//			$("#warning").css("display","block");
//			return false;
//		}
			
		//이메일 인증코드 검사
		if($("#email_code").val()=="" || $("#email_code").val()==null){
			alert("이메일 인증요청 후 인증코드를 입력해주세요.");
			return false;
		}
		if($("#emailChkResult").val()=="no"){
			alert("이메일 인증코드의 인증확인을 진행해주세요.");
			return false;
		}
		
		//비밀번호 검사
		var reg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,20}$/;
		if($("#pwd").val()==""){
			alert("비밀번호를 입력해주세요.");
			return false; 
		}
		if(!reg.test($("#pwd").val())){
			alert("비밀번호는 8~20자의 최소 하나의 숫자, 영문 대소문자, 특수문자 조합으로 입력해주세요.");
			return false;
		}
		
		//비밀번호 재확인
		if($("#pwdChk").val()==""){
			alert("비밀번호 재확인을 입력해주세요.");
			return false; 
		}
		if($("#pwdChk").val()!=$("#pwd").val()){
			alert("비밀번호가 일치하지않습니다. 다시 입력해주세요.");
			return false;  
		}
	
		//이름 검사	
		if($("#name").val()==""){
			alert("이름을 입력해주세요.");
			return false; 
		}
		var reg = /^[가-힣]{2,7}$/;
		if(!reg.test($("#name").val())){
			alert("한글 이름 2~7자를 입력해주세요.");
			return false;
		}
		
		//생년월일 검사
		var reg = /^(19|20)[0-9]{2}$/;  //년도 정규식
		var regExp = /^[1-9]|[1-2][0-9]|3[0-1]$/;  //일 정규식
		if($("#year").val()=="" &&  $("#month").val()=="월" && $("#day").val()==""){
			alert("생년월일을 입력해주세요.");
			return false;  
		}
		
		if($("#year").val()==""){
			alert("년도(4자리)를 입력해주세요.");
			return false;   
		}else if(!reg.test($("#year").val())){
			alert("년도 4자를 다시 입력해주세요.");
			return false;
		}else if($("#month").val()=="월"){
			alert("월을 선택해주세요.");
			return false;  
		}else if($("#day").val()==""){
			alert("일을 입력해주세요.");
			return false;  
		}else if(!regExp.test($("#day").val())){
			alert("일을 다시 입력해주세요.");
			return false;
		}
		
		//휴대전화 검사
		var reg = /^01[0|1|6|7|8|9][0-9]{7,8}$/;
		//var reg = /^(010|011|016|017|018|019)[1][0-9]{9,10}$/;
		/*
		if($("#code").val()=="이동통신사"){
			alert("이동통신사를 선택해주세요.");
			return false;  
		}else*/if($("#tel").val()==""){
			alert("휴대전화번호를 입력해주세요.");
			return false;  
		}else if(!reg.test($("#tel").val())){			
			alert("휴대전화번호는 '-'없이 10~11자의 숫자만 입력해주세요.");
			return false;		
		}
		/*
		else if($("#num").val()==""){
			alert("인증번호를 입력해주세요.");
			return false;  
		}
		*/
		
		//약관동의
		if($("#checkAll").prop("checked")==false){
			alert("약관동의 전체동의 체크는 필수입니다.");
			return false;
		}

		return true;
	});//////////#personFrm 유효성검사

	//전체동의 체크박스
	$("#checkAll").change(function(){  
		$(".agree_article .form-check-label >input").prop("checked",this.checked);
	});
		
	//약관동의 상세보기 //토글로 바꾸자
	$(".view_indetail").on("click",function(){
		$(".agree_txt").css("display","block");
	});
		
	//////////기업회원가입
	//기업회원가입 유효성 검사

	//var hp = '01012345678';
	//hp = hp.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");

	//사업자등록번호 하이픈 자동처리 정규식
	$(document).on("keyup", "#corp_code", function(){
					//$('#id').val().replace(" ", "") -> 첫번째 공백 1개만 없어짐. 
					//$.trim($('#id').val()) -> 글자사이 공백은 안없어짐.﻿ 
					//$('#id').val().replace(/ /g, ''); -> 모든 공백 없어짐.﻿     //g :  global의 뜻, 전역 매칭을 한다. 전체 모든 문자열을 변경
					//$('#id').val().replace(/,/g, ''); -> 모든 콤마(,) 없어짐.﻿ 
			                                                                                                 //.replace("--", "-") 
		$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/([0-9]{3})([0-9]{2})([0-9]{5})?/, "$1-$2-$3") );
	});
	
	//기업회원가입 폼 
	$(document).on("submit","#corpFrm",function(){	
		//이메일(아이디) 검사		
		if($("#corp_code").val()==""){
			alert("사업자등록번호를 입력해주세요.");
			return false;   
		}

		//기업명 검사	
		if($("#company_name").val()==""){
			alert("기업명을 입력해주세요.");
			return false; 
		}
		var reg =  /^(?=.*[가-힣])[가-힣0-9]+$/; 
		if(!reg.test($("#company_name").val())){
			alert("기업명은 한글과 숫자로(숫자만 불가) 입력해주세요.");
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
		}else*/if($("#corp_charge_tel").val()==""){
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
		
		//이메일(아이디) 검사		
		if($("#corp_email").val()==""){
			alert("이메일 주소를 입력해주세요.");
			return false;   
		}

		//이메일 인증코드 검사
		if($("#corp_email_code").val()=="" || $("corp_email_code").val()==null){
			alert("이메일 인증요청 후 인증코드를 입력해주세요.");
			return false;
		}
//		if($("#emailChkResult").val()=="no"){
//			alert("이메일 인증코드의 인증확인을 진행해주세요.");
//			return false;
//		}
			
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
		
		//약관동의
		if($("#allCheck").prop("checked")==false){
			alert("약관동의 전체동의 체크는 필수입니다.");
			return false;
		}
		
		return true;
	});//////////#corpFrm 유효성검사
});//jquery


//////////개인회원가입 폼

//생년월일_월
function monthOption(){
	var optionTag="<option>"+"월"+"</option>";             
	for(i=1; i<=12; i++){
		optionTag += "<option value='"+i+"'>" +i +"</option>";
	}
	document.getElementById("month").innerHTML = optionTag;
}

/*
//휴대전화_이동통신사
function codeOption(){
	var tagOption=["이동통신사", "SKT", "KT", "LGU+", "알뜰폰"];    
	var tag="";
	for(i=0; i<tagOption.length; i++){
		tag += "<option value='"+tagOption[i]+"'+>" +tagOption[i] +"</option>";
	}
	document.getElementById("code").innerHTML = tag;
}

//휴대전화_자동 커서 이동
function cursorMove3(str) {
	if(str!="이동통신사"){
		document.getElementById("tel").focus();	
	}
}
*/

//생년월일_자동 커서 이동1
function cursorMove1(){
		var inputYear = document.getElementById("year").value;
		if(inputYear.length==4){  //year에 4글자가 입력되면
			//(자동)커서 이동 : year  → month 
			document.getElementById("month").focus();  //focus() 함수
		}
}
//생년월일_자동 커서 이동2
function cursorMove2(month) {
	if(month!="월"){
		document.getElementById("day").focus();
	}
}

//////////기업회원가입 폼

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
		tag += "<option>"+tagOption[i]+"</option>";
	}
	document.getElementById("job_categroy").innerHTML = tag;
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
}

//휴대전화_자동 커서 이동
function cursorMove4(str){
	if(str!="이동통신사"){
		document.getElementById("corp_charge_tel").focus();	
	}
}

*/