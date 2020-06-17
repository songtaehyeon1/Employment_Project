<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="<%=ctx%>/css/joinForm.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script></head>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="<%=ctx%>/js/joinForm.js"></script>
<script>
$(function(){
	//////////개인회원가입
	
	//ajax로 이메일 보내기(네이버 이용)
	
	//이메일 인증
	function personEmail(url, params, msg1, msg2){
		
		$.ajax({
			url : url,
			data : params,
			success : function(result){
				console.log("result="+result);
				var tag = result.split("<hr id='z'>");
				var id_email = null;
				id_email = tag[1].trim();
				console.log(id_email);
				if(id_email=='idOk'){     //이메일(아이디) 사용 불가
					$("#person_email").css('color', '#f00');  
					$("#caution").css("display","block");
					alert(msg2);					
				}else if(id_email=='mailOk'){     //이메일 인증코드 전송 성공
					alert(msg1);
				}else if(id_email=='yes'){     //이메일 인증확인 성공
					$("#emailChkResult").val("yes");
					alert(msg1);
				}else{     //이메일 인증확인 실패
					alert(msg2);
				}
			},
			error : function(){
				console.log("이메일 인증 에러...");
			}
		});
	}

	//이메일 인증요청 클릭 시 (이메일 인증코드 받기)
	$(".emailChk").click(function(){
		
		//이메일(아이디) 정규식 검사
		reg = /^\w{8,20}[@][a-zA-Z]{2,10}[.][a-zA-Z]{2,3}([.][a-zA-Z]{2,3})?$/;
		if($("#person_email").val()==""){     //이메일(아이디) 미입력 시
			alert("이메일 주소를 입력해주세요.");
		}else if(!reg.test($("#person_email").val())){     //이메일(아이디) 정규식 불일치 시
			alert("이메일 주소를 잘못 입력하였습니다.");
		}else{
			//이메일 인증코드 입력창 비활성화 → 활성화
			$("#email_code").attr('disabled', false);    
			
			//이메일 인증코드 받기
			var url ="<%=ctx%>/person/idCheck.do";
		
			//폼의 데이터를 직렬화 시키기
			var params = "person_email="+$("#person_email").val();
			var msg1 = "해당 이메일 주소로 인증코드를 전송하였습니다.";
			var msg2 = "이미 가입된 이메일 주소입니다.";
			personEmail(url, params, msg1, msg2);
		}
	});

	//이메일 인증하기
	$(document).on('click','.emailCodeChk',function(){			
		var url = "<%=ctx%>/person/emailCode.do";
			
		//폼의 데이터를 직렬화 시키기
		var params = "email_code="+$("#email_code").val(); 
		console.log("params="+params)
		var msg1 = "이메일 인증이 완료되었습니다.";
		var msg2 = "이메일 인증에 실패하였습니다.";
		personEmail(url, params, msg1, msg2);
	});  
	//////////ajax로 이메일 보내기(네이버 이용) 끝
	
	//////////기업회원가입
	
	//ajax로 이메일 보내기(네이버 이용)
	
	//이메일 인증

	function corpEmail(url, params, msg1, msg2){
		
		$.ajax({
			url : url,
			data : params,
			success : function(result){
				var tag = result.split("<hr id='z'>");
				var id_email = null;
				id_email = tag[1].trim();
				console.log(id_email);
				if(id_email=='idOk'){     //이메일(아이디) 사용 불가
					$("#corp_email").css('color', '#f00');  
					$("#caution").css("display","block");
					alert(msg2);				
				}else if(id_email=='mailOk'){     //이메일 인증코드 전송 성공
					alert(msg1);
				}else if(id_email=='yes'){     //이메일 인증확인 성공
					$("#emailCheckResult").val("yes");
					alert(msg1);
				}else{     //이메일 인증확인 실패
					alert(msg2);
				}
			},
			error : function(){
				console.log("이메일 인증 에러...");
			}
		});
	}

	//이메일 인증요청 클릭 시 (이메일 인증코드 받기)
	$(".emailCheck").click(function(){
		
		//이메일(아이디) 정규식 검사
		reg = /^\w{8,20}[@][a-zA-Z]{2,10}[.][a-zA-Z]{2,3}([.][a-zA-Z]{2,3})?$/;
		if($("#corp_email").val()==""){     //이메일(아이디) 미입력 시
			alert("이메일 주소를 입력해주세요.");
		}else if(!reg.test($("#corp_email").val())){     //이메일(아이디) 정규식 불일치 시
			alert("이메일 주소를 잘못 입력하였습니다.");
		}else{
			//이메일 인증코드 입력창 비활성화 → 활성화
			$("#corp_email_code").attr('disabled', false);    
			
			//이메일 인증코드 받기
			var url ="<%=ctx%>/corp/idCheck.do";
		
			//폼의 데이터를 직렬화 시키기
			var params = "corp_email="+$("#corp_email").val();
			var msg1 = "해당 이메일 주소로 인증코드를 전송하였습니다.";
			var msg2 = "이미 가입된 이메일 주소입니다.";
			corpEmail(url, params, msg1, msg2);
		}
	});
	
	//이메일 인증요청 버튼 비활성화 → 활성화
	$(document).on("keyup","#person_email",function(){		
		$(".emailChk").attr("disabled",false);
	});
	
	//이메일 인증요청 실패 (사용할 수 없는 이메일)
	$("#person_email").on('keyup', function() {
		$("#person_email").css('color', '#000');
		$("#warning").css("display","none");
	});	
	
	//이메일(아이디) 인증코드 입력값 인증확인 
	$("#email_code").on("keyup",function(){
		console.log("1234")
			//인증확인 버튼 비활성화 → 활성화
			$(".emailCodeChk").attr('disabled', false);
		
			//이메일(아이디) 인증확인 후 이메일(아이디) 수정 금지
			if($("#email_code").val()!=""){ 
				$("#person_email").on('keyup', function() {
					$("#email_code").val("");  //이메일 인증코드 입력값 지우기
					$(".emailCodeChk").attr('disabled', true);
				});		
			}
	});

	//이메일 인증하기
	$(document).on('click','.emailCodeCheck',function(){			
		var url = "<%=ctx%>/corp/emailCode.do";
			
		//폼의 데이터를 직렬화 시키기
		var params = "corp_email_code="+$("#corp_email_code").val(); 
		var msg1 = "이메일 인증이 완료되었습니다.";
		var msg2 = "이메일 인증에 실패하였습니다.";
		corpEmail(url, params, msg1, msg2);
	});  
	//////////ajax로 이메일 보내기(네이버 이용) 끝

	//이메일 인증요청 버튼 비활성화 → 활성화
	$(document).on("keyup","#corp_email",function(){		
		$(".emailCheck").attr("disabled",false);
	});
	
	//이메일 인증요청 실패 (사용할 수 없는 이메일)
	$("#corp_email").on('keyup', function() {
		$("#corp_email").css('color', '#000');
		$("#caution").css("display","none");
	});	
	
	//이메일(아이디) 인증코드 입력값 인증확인 
	$("#corp_email_code").on("keyup",function(){
			//인증확인 버튼 비활성화 → 활성화
			$(".emailCodeCheck").attr('disabled', false);
		
			//이메일(아이디) 인증확인 후 이메일(아이디) 수정 금지
			if($("#corp_email_code").val()!=""){ 
				$("#corp_email").on('keyup', function() {
					$("#corp_email_code").val("");  //이메일 인증코드 입력값 지우기
					$(".emailCodeCheck").attr('disabled', true);
				});		
			}
	});

});
</script>
</head>

<body onload="monthOption(); jobOption();"> 
<div class="container join">
	<h2><a href="<%=ctx%>/index.do"><img src=""/></a></h2>
  	<br>
  	<!-- Nav tabs -->
  	<ul class="nav nav-tabs nav-pills justify-content-center tablist" role="tablist">
  	
    	<li class="nav-item">
     		<a class="nav-link active" data-toggle="tab" href="#home"><b>개인회원가입</b><br>만15세이상가능</a>
   		</li>
    	<li class="nav-item">
      		<a class="nav-link" data-toggle="tab" href="#menu1"><b>기업회원가입</b><br>무료회원가입!</a>
    	</li>
  	</ul>

  	<!-- Tab panes -->
	<div class="tab-content">
		<!-- 개인회원가입 -->
		<div id="home" class="container tab-pane active"><br>
		<form method="post" id="personFrm" name="personFrm" action="<%=ctx%>/person/joinOk.do">
			<div class="form-group input-group">
				<label for="person_eamil" class="lbl_email">이메일(아이디)</label> 
				<small><code id="warning">사용 할 수 없는 이메일 주소입니다.</code></small> 
				<input type="email" class="form-control" id="person_email" placeholder="이메일 주소" name="person_email"> 
				<!-- 아이디 중복검사 여부 설정 --> 
				<input type="hidden" id="idStatus" value="N"/>
				<div class="input-group-append">
					<button type="button" class="btn btn-outline-secondary emailChk" disabled>인증요청</button> 
				</div>
			</div>
			
			<div class="form-group input-group">
				<label for="email_code" class="lbl_email">이메일 인증코드</label>
				<small>메일함을 확인하여 이메일 인증코드를 입력해주세요.</small>
				<input type="text" class="form-control" id="email_code" placeholder="인증코드" name="email_code" disabled>
				<!-- 이메일 인증확인 여부 설정 -->
				<input type="hidden" id="emailChkResult" name="emailChkResult" value="no"/>
				<div class="input-group-append">
					<button class="btn btn-secondary emailCodeChk" type="button" disabled>인증확인</button>
				</div>
			</div>
	
			<div class="form-group">
				<label for="pwd">비밀번호</label> 
				<input type="password" class="form-control" id="pwd" placeholder="8~20자의 최소 하나의 숫자, 영문 대소문자, 특수문자 조합" name="pwd" maxlength="20">
			</div>
			<div class="form-group">
				<label for="pwdChk">비밀번호 재확인</label> 
				<input type="password" class="form-control" id="pwdChk" placeholder="비밀번호 확인" name="pwdChk" maxlength="20">
			</div>
	
			<div class="form-group">
				<label for="text">이름</label> 
				<input type="text" class="form-control" id="name" placeholder="이름" name="name" maxlength="20">
			</div>
	
			<div class="form-group row">
				<label for="text" class="lbl_Birth">생년월일</label> 
				<input type="text" class="form-control col-sm-4" id="year" placeholder="년(4자)" name="year" maxlength="4" onkeyup="cursorMove1()"> 
				<select class="form-control col-sm-4" id="month" name="monthlist" onchange="cursorMove2(this.value)">
				</select> 
				<input type="text" class="form-control col-sm-4" id="day" placeholder="일" name="day" maxlength="2">
			</div>
			
			<div class="form-group">
				<label for="gender">성별</label> 
				<br>
				<div class="btn-group btn-group-toggle" data-toggle="buttons">
					<label class="btn btn-light">
						<input type="radio" class="form-check-input" id="male" name="gender" value="남자" checked> 남자
					</label>
					<label class="btn btn-light">
						<input type="radio" class="form-check-input" id="female" name="gender" value="여자"> 여자
					</label>
				</div>
			</div>
			
			<div class="form-group input-group">
				<label for="tel" class="lbl_tel">휴대전화</label>
				<!--
				<select class="form-control col-sm-4" id="code" name="code" onchange="cursorMove3(this.value)">
				</select>
				 -->
				<input type="tel" class="form-control" id="tel" placeholder="'-'없이 숫자만 입력" name="tel" maxlength="11">
				<!-- 
				<div class="input-group-append">
					<button class="btn btn-secondary" type="button">인증번호 전송</button>
				</div>
				 -->
			</div>
			
			<!--
			<div class="form-group input-group">
				<input type="text" class="form-control" id="num" placeholder="인증번호" name="num">
				<div class="input-group-append">
					<button class="btn btn-outline-secondary" type="button">확인</button>
				</div>
			</div> 
			 -->
			
			<div class="agree_tit"><strong>약관동의</strong></div>
			<div class="agree_article">
				<div class="form-check">
			    	<label class="form-check-label" for="checkAll">
			        	<input type="checkbox" class="form-check-input" id="checkAll" name="option1" value="전체동의">전체동의
			      	</label>
			    </div>
			    <div class="form-check">
		        	<label class="form-check-label" for="check1">
		        		<input type="checkbox" class="form-check-input" id="check1" name="option2" value="개인회원 약관에 동의">개인회원 약관에 동의
		      		</label>
		      		<a href="#" class="view_indetail" target="_blank">상세보기</a>
		      		<div class="agree_txt">
		      			<textarea rows="5" cols="73" readonly></textarea>
		      		</div>
			    </div>
			    <div class="form-check">
		        	<label class="form-check-label" for="check2">
		        		<input type="checkbox" class="form-check-input" id="check2" name="option3" value="개인정보 수집 및 이용에 동의">개인정보 수집 및 이용에 동의
		      		</label>
		      		<a href="#" class="view_indetail" target="_blank">상세보기</a>
			    </div>
				<div class="form-check">
		        	<label class="form-check-label" for="check3">
		        		<input type="checkbox" class="form-check-input" id="check3" name="option4" value="개인정보 제 3자 제공 및 위탁사항 이용약관">개인정보 제 3자 제공 및 위탁사항 이용약관
		      		</label>
		      		<a href="#" class="view_indetail" target="_blank">상세보기</a>
			    </div>
			</div>
			
			<button type="submit" class="btn btn-primary btn-block">가입하기</button>
		</form>
		</div>

		<!-- 기업회원가입 -->
		<div id="menu1" class="container tab-pane fade"><br>
		    <form method="post" id="corpFrm" name="corpFrm" action="<%=ctx%>/corp/joinOk.do">
		    <div class="corp_tit"><strong>기업인증</strong></div>
			<div class="form-group input-group">
				<label for="corp_code" class="lbl_email">사업자등록번호</label> 
				<!-- <small><code>올바른 사업자번호가 아닙니다.</code></small> -->
				<input type="text" class="form-control" id="corp_code" placeholder="'-'없이 숫자만 입력" name="corp_code" maxlength="12">
				<!--
				<div class="input-group-append">
					<button class="btn btn-secondary" type="submit">인증</button>
				</div> 
				 -->
			</div>
			
			<div class="form-group">
				<label for="company_name">기업명</label> 
				<input type="text" class="form-control" id="company_name" placeholder="기업명" name="company_name" maxlength="20">
			</div>
			
			<div class="form-group">
				<label for="ceo_name">대표자명</label> 
				<input type="text" class="form-control" id="ceo_name" placeholder="대표자명" name="ceo_name" maxlength="20">
			</div>
			
			<div class="form-group input-group">
				<label for="company_addr" class="lbl_addr">회사주소</label> 
				<input type="text" class="form-control" id="company_zipcode" placeholder="우편번호" name="company_zipcode" maxlength="20" readonly>
				<div>
					<button class="btn btn-secondary searchAddr" type="button" onclick="openDaumZipAddress();">우편번호 찾기</button>
				</div>
			</div>
			
			<div class="form-group">
				<input type="text" class="form-control" id="company_addr1" placeholder="주소" name="company_addr1" maxlength="20" readonly>
				<input type="text" class="form-control" id="company_addr2" placeholder="상세주소" name="company_addr2" maxlength="20">
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
					<option value="일반">일반</option>
					<option value="파견/도급/채용대행">파견/도급/채용대행</option>
					<option value="헤드헌팅">헤드헌팅</option>
				</select> 
			</div>
			
			<div class="corp_charge_tit"><strong>인사담당자인증</strong></div>
			<div class="form-group">
				<label for="corp_charge">담당자명</label> 
				<input type="text" class="form-control" id="corp_charge" placeholder="담당자명" name="corp_charge" maxlength="20">
			</div>
			
			<div class="form-group input-group">
				<label for="corp_charge_tel" class="lbl_tel">휴대전화</label>
				<!-- 
				<select class="form-control col-sm-4" id="codelist" name="codelist" onchange="cursorMove4(this.value)">
				</select>
				-->
				<input type="tel" class="form-control col-sm-8" id="corp_charge_tel" placeholder="'-'없이 숫자만 입력" name="corp_charge_tel" maxlength="11">
				<!-- 
				<div class="input-group-append">
					<button class="btn btn-secondary" type="button">인증번호 전송</button>
				</div>
				 -->
			</div>
			
			<!-- 
			<div class="form-group input-group">
				<input type="text" class="form-control" id="number" placeholder="인증번호" name="number">
				<div class="input-group-append">
					<button class="btn btn-outline-secondary" type="button">확인</button>
				</div>
			</div>
			-->
			 
			<div class="corp_account_tit"><strong>ID/PW</strong></div>
			<div class="form-group input-group">
				<label for="corp_email" class="lbl_email">이메일(아이디)</label> 
				<small><code id="caution">사용 할 수 없는 이메일 주소입니다.</code></small> 
				<input type="email" class="form-control" id="corp_email" placeholder="이메일 주소" name="corp_email">
				<!-- 아이디 중복검사 여부 설정 --> 
				<input type="hidden" id="idState" value="N"/>
				<div class="input-group-append">
					<button class="btn btn-outline-secondary emailCheck" type="button" disabled>인증요청</button>
				</div>
			</div>
	
			<div class="form-group input-group">
				<label for="corp_email_code" class="lbl_email">이메일 인증코드</label>
				<small>메일함을 확인하여 이메일 인증코드를 입력해주세요.</small>
				<input type="text" class="form-control" id="corp_email_code" placeholder="인증코드" name="corp_email_code" disabled>
				<!-- 이메일 인증확인 여부 설정 -->
				<input type="hidden" id="emailCheckResult" name="emailCheckResult" value="no"/>
				<div class="input-group-append">
					<button class="btn btn-secondary emailCodeCheck" type="button" disabled>인증확인</button>
				</div>
			</div>

			<div class="form-group">
				<label for="corp_pwd">비밀번호</label> 
				<input type="password" class="form-control" id="corp_pwd" placeholder="6~16자의 영문 대소문자, 숫자, 특수문자 중 2가지 이상 조합" name="corp_pwd" maxlength="20">
			</div>
			<div class="form-group">
				<label for="corp_pwdChk">비밀번호 재확인</label> 
				<input type="password" class="form-control" id="corp_pwdChk" placeholder="비밀번호 확인" name="corp_pwdChk" maxlength="20">
			</div>
			
			<div class="corp_agree_tit"><strong>약관동의</strong></div>
			<div class="agree_article">
			<div class="form-check">
		    	<label class="form-check-label" for="allCheck">
		        	<input type="checkbox" class="form-check-input" id="allCheck" name="allCheck" value="something">전체동의
		      	</label>
		    </div>
		    <div class="form-check">
	        	<label class="form-check-label" for="chk1">
	        		<input type="checkbox" class="form-check-input" id="chk1" name="chk1" value="something">기업회원 약관에 동의
	      		</label>
	      		<a href="#" class="view_indetail" target="_blank">상세보기</a>
		    </div>
		    <div class="form-check">
	        	<label class="form-check-label" for="chk2">
	        		<input type="checkbox" class="form-check-input" id="chk2" name="chk2" value="something">개인정보 수집 및 이용에 동의
	      		</label>
	      		<a href="#" class="view_indetail" target="_blank">상세보기</a>
		    </div>
			<div class="form-check">
	        	<label class="form-check-label" for="chk3">
	        		<input type="checkbox" class="form-check-input" id="chk3" name="chk3" value="something">개인정보 제 3자 제공 및 위탁사항 이용약관
	      		</label>
	      		<a href="#" class="view_indetail" target="_blank">상세보기</a>
		    </div>
			</div>
			
			<button class="btn btn-primary btn-block">가입하기</button>
		</form>
		</div>
	</div>
</div>
</body>
</html>