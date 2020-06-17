<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
	.container{
		margin-top:32px; 
	}
	small{padding-left:10px;}
	.find {width:40%;}
	.tablist{text-align:center;}
	.tablist b{font-size:1.5em;}
	.row{margin:0 auto;}
	form{	
		text-align:center; 
		border:1px solid #e8e8e8; 
		padding:20px;
		margin-bottom:32px;
	}
	table {
	    width:100%;
	    font-size:0.9em;  
	}
	thead{background-color:#e8e8e8;}
	thead td{
		font-size:1em;
		text-align:center; 
		font-weight:bold;
	}
	tr{border-bottom:1px solid #e5e5e5;}
	th{
		width:20%;
		text-align:left;
		background-color:#f9f9f9;  
		padding:10px;
	}
	td{
		text-align:left;
		padding:10px;
	}
	span div{
		margin-top:18px;
		width:100px;
		height:50px;
		text-align:center;
	}
	.btn-left{
		float:left;
		font-weight:bold; 
	}
	.btn-right{
		float:right;
		font-weight:bold;
	}
</style>
<script>
$(function(){
	//개인회원_아이디 찾기
	$(document).on("submit","#person_id",function(){
		//이메일(아이디) 검사	
		if($("#name").val()==""){
			alert("이름을 입력해주세요.");
			return false;   
		}
		//휴대전화 검사
		var reg = /^01[0|1|6|7|8|9][0-9]{7,8}$/;
		//var reg = /^(010|011|016|017|018|019)[1][0-9]{9,10}$/;
		/*if($("#code").val()=="이동통신사"){
			alert("이동통신사를 선택해주세요.");
			return false;  
		}else*/ if($("#tel").val()==""){
			alert("휴대전화번호를 입력해주세요.");
			return false;  
		}else if(!reg.test($("#tel").val())){			
			alert("휴대전화번호는 '-'없이 10~11자의 숫자만 입력해주세요.");
			return false;		
		}
		return true;
	});
	
	//개인회원_비밀번호 찾기
	$(document).on("submit","#person_pwd",function(){
		//이름 검사
		if($("#named").val()==""){
			alert("이름을 입력해주세요.");
			return false;   
		}
		//이메일(아이디) 검사	
		if($("#person_email").val()==""){
			alert("이메일 주소를 입력해주세요.");
			return false;   
		}
		return true;
	});
	
	//기업회원_아이디 찾기
	$(document).on("submit","#corp_id",function(){
		//이메일(아이디) 검사	
		if($("#corp_charge").val()==""){
			alert("이름(담당자명)을 입력해주세요.");
			return false;   
		}
		//휴대전화 검사
		var reg = /^01[0|1|6|7|8|9][0-9]{7,8}$/;
		//var reg = /^(010|011|016|017|018|019)[1][0-9]{9,10}$/;
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
		return true;
	});
	
	//기업회원_비밀번호 찾기
	$(document).on("submit","#corp_pwd",function(){
		//이름 검사
		if($("#corp_charge_name").val()==""){
			alert("이름(담당자명)을 입력해주세요.");
			return false;   
		}
		//이메일(아이디) 검사	
		if($("#corp_email").val()==""){
			alert("이메일 주소를 입력해주세요.");
			return false;   
		}
		return true;
	});
});

//개인회원
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

//휴대전화_이동통신사
function codelsitOption(){
	var tagOption=["이동통신사", "SKT", "KT", "LGU+", "알뜰폰"];    
	var tag="";
	for(i=0; i<tagOption.length; i++){
		tag += "<option value='"+tagOption[i]+"'+>" +tagOption[i] +"</option>";
	}
	document.getElementById("codelist").innerHTML = tag;
}

//기업회원
//휴대전화_자동 커서 이동
function cursorMove4(str){
	if(str!="이동통신사"){
		document.getElementById("corp_charge_tel").focus();	
	}
}
</script>

<body onload="codeOption(); codelsitOption();">
<div class="container find">
	<h2>아이디/비밀번호 찾기</h2>
	<p><small>가입한 아이디와 비밀번호를 잊으셨습니까?<br>회원구분별로 가입 시 입력한 본인정보를 입력해 주세요.</small></p>
  	<br>
  	<!-- Nav tabs -->
  	<ul class="nav nav-tabs nav-pills justify-content-center tablist" role="tablist">
  	
    	<li class="nav-item">
     		<a class="nav-link active" data-toggle="tab" href="#home"><b>개인회원</b></a>
   		</li>
    	<li class="nav-item">
      		<a class="nav-link" data-toggle="tab" href="#menu1"><b>기업회원</b></a>
    	</li>
  	</ul>

  	<!-- Tab panes -->
	<div class="tab-content">
		<!-- 개인회원 -->
		<div id="home" class="container tab-pane active"><br>
		<form method="post" id="person_id" name="person_id" action="">
			<div>
				<table>
					<thead align="center">
					    <tr>
					        <td colspan="2">아이디 찾기</td>
					    </tr>
					</thead>
					
					<tbody>
						<tr>
							<th scope="row">이름</th>
							<td>
								<input type="text" class="form-control" id="named" placeholder="이름" name="named" maxlength="20">
							</td>
						</tr>
						<tr>
							<th scope="row">
								<label for="lb_pw">휴대전화 번호</label>
							</th>
							<td>
								<div class="form-group input-group">
									<!-- 
									<select class="form-control col-sm-4" id="code" name="code" onchange="cursorMove3(this.value)">
									</select>
									 -->
									<input type="tel" class="form-control" id="tel" placeholder="'-'없이 숫자만 입력" name="tel" maxlength="11">
									<!-- 
									<div class="input-group-append">
										<button class="btn btn-secondary" type="submit">인증</button>
									</div>
									 -->
								</div>
								
								<!-- 
								<div class="form-group input-group">
									<input type="text" class="form-control" id="num" placeholder="인증번호" name="num">
									<div class="input-group-append">
										<button class="btn btn-outline-secondary" type="submit">확인</button>
									</div>
								</div>
								 -->
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<button type="submit" class="btn btn-primary btn-block">SMS로 이메일 주소 전송</button>
		</form>
		
		<form method="post" id="person_pwd" name="person_pwd" action="#">
			<div>
				<table>
					<thead align="center">
					    <tr>
					        <td colspan="2">비밀번호 찾기</td>
					    </tr>
					</thead>
					
					<tbody>
						<tr>
							<th scope="row">이름</th>
							<td>
								<input type="text" class="form-control" id="name" placeholder="이름" name="name" maxlength="20">
							</td>
						</tr>
						<tr>
							<th scope="row">이메일<br>(아이디)</th>
							<td>
								<input type="email" class="form-control" id="person_email" placeholder="이메일 주소" name="person_email">
								<small>가입 시 등록했던 이메일주소로 비밀번호 변경 URL이 전송됩니다.</small>
							</td>
						</tr>
						
					</tbody>
				</table>
			</div>
			
			<button type="submit" class="btn btn-primary btn-block">비밀번호 변경 URL 전송</button>
		</form>
		</div>

		<!-- 기업회원 -->
		<div id="menu1" class="container tab-pane fade"><br>
		    <form method="post" id="corp_id" name="corp_id" action="#">
			<div>
				<table>
					<thead align="center">
					    <tr>
					        <td colspan="2">아이디 찾기</td>
					    </tr>
					</thead>
					
					<tbody>
						<tr>
							<th scope="row">이름<br>(담당자명)</th>
							<td>
								<input type="text" class="form-control" id="corp_charge" placeholder="이름(담당자명)" name="corp_charge" maxlength="20">
							</td>
						</tr>
						<tr>
							<th scope="row">
								<label for="lb_pw">휴대전화 번호</label>
							</th>
							<td>
								<div class="form-group input-group">
									<!-- 
									<select class="form-control col-sm-4" id="codelist" name="codelist" onchange="cursorMove4(this.value)">
									</select>
									 -->
									<input type="tel" class="form-control" id="corp_charge_tel" placeholder="'-'없이 숫자만 입력" name="corp_charge_tel" maxlength="11">
									<!-- 
									<div class="input-group-append">
										<button class="btn btn-secondary" type="submit">인증</button>
									</div>
									 -->
								</div>
								
								<!--  
								<div class="form-group input-group">
									<input type="text" class="form-control" id="number" placeholder="인증번호" name="number">
									<div class="input-group-append">
										<button class="btn btn-outline-secondary" type="submit">확인</button>
									</div>
								</div>
								 -->
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<button type="submit" class="btn btn-primary btn-block">SMS로 이메일 주소 전송</button>
		</form>
		
		<form method="post" id="corp_pwd" name="corp_pwd" action="#">
			<div>
				<table>
					<thead align="center">
					    <tr>
					        <td colspan="2">비밀번호 찾기</td>
					    </tr>
					</thead>
					
					<tbody>
						<tr>
							<th scope="row">이름<br>(담당자명)</th>
							<td>
								<input type="text" class="form-control" id="corp_charge_name" placeholder="이름(담당자명)" name="corp_charge_name" maxlength="20">
							</td>
						</tr>
						<tr>
							<th scope="row">이메일<br>(아이디)</th>
							<td>
								<input type="email" class="form-control" id="corp_email" placeholder="이메일 주소" name="corp_email">
								<small>가입 시 등록했던 이메일주소로 비밀번호 변경 URL이 전송됩니다.</small>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<button type="submit" class="btn btn-primary btn-block">비밀번호 변경 URL 전송</button>
		</form>
		
		</div>
		</div>
	</div>
</div>
</body>