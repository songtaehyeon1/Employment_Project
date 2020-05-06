$(function() {
	var locationList = [ '서울', '경기', '광주', '대구', '대전', '부산', '울산', '인천', '강원',
			'경남', '경북', '전남', '충북', '충남', '제주', '세종' ];
	var majorList = [ '문과계열', '이과계열', '전문(실업)계', '예체능계', '특성화/마이스터고', '특수목적고' ];
	var mainmajorList = [ '어문학', '영어/영문', '중어/중문', '일어/일문', '국어/국문', '인문과학',
			'사회과학', '상경계열', '경제/경영', '회계학', '법학계열', '사범계열', '종교학', '생활과학',
			'예/체능', '자연과학계열', '농수산/해양/축산', '수학/통계학', '물리/천문/기상학', '화학/생물',
			'공학계열', '전기/전자/정보통신공학', '컴퓨터/시스템공학', '금속/비금속공학' ];
	var positionList = [ '인턴/수습', '사원', '주임', '계장', '대리', '과장', '차장', '부장',
			'감사', '이사', '상무', '전무', '부사장', '사장', '임원', '연구원', '주임연구원', '선임연구원',
			'책임연구원', '수석연구원', '연구소장' ];
	var position2List = [ '팀원', '팀장', '실장', '총무', '지점장', '지사장', '파트장', '그룹장',
			'센터장', '매니저', '본부장', '사업부장', '원장', '국장', '임시직/프리랜서' ];
	var tag = "";
	locationList.map(function(value, idx) {
		tag += "<option value='" + value + "'>" + value + "</option>"
	});
	$("#select_elementary_school_location").append(tag);
	$("#select_middle_school_location").append(tag);
	$("#select_university_location").append(tag);
	$("#select_company_location").append(tag);

	var tag2 = ""
	majorList.map(function(value, idx) {
		tag2 += "<option value='" + value + "'>" + value + "</option>"
	});
	$("#select_high_school_major").append(tag2);
	var tag3 = "";
	mainmajorList.map(function(value, idx) {
		tag3 += "<option value='" + value + "'>" + value + "</option>"
	});
	$("#select_university_main_major").append(tag3);
	$("#select_university_sub_major").append(tag3);

	var tag4 = "";
	positionList
			.map(function(value, idx) {
				tag4 += "<div style='width: 100px; height: 20px;margin-bottom:10px'><input type='radio' name='position' value='"
						+ value + "'>" + value + "</div>";
			});
	$("#positionselect").append(tag4);

	var tag5 = "";
	position2List
			.map(function(value, idx) {
				tag5 += "<div style='width: 100px; height: 20px;margin-bottom:10px'><input type='radio' name='position2' value='"
						+ value + "'>" + value + "</div>";
			});
	$("#positionselect2").append(tag5);

	$("#careerdescriptionta").prop("placeholder",
			"최근 경력부터 역순으로 작성하며 주요업무 내용 단위로 본인의 역할과 객관적인 성과를 작성해보세요");

	$("div[name *= companys]").hover(function() {
		$(this).css("border", "1px solid #007bff");

	}, function() {
		$(this).css("border", "0px");
	});

	$(".nav-item").hover(function() {
		$(this).css("font-size", "1.3em");

	}, function() {
		$(this).css("font-size", "1.3em");
	});
	
	$("#openresume1").click(function() {
		if ($(this).is(":checked")) {
			$("label[for='openresume1']").html("이력서 공개중<span class='badge badge-sm'>이력서 공개 2020.05.01</span>");
			
		} else {
			$("label[for='openresume1']").html("이력서 비공개<span class='badge badge-sm'>이력서 공개하고 인사담당자의 입사제의를 받아보세요!</span>");
		}

	});

	$("#state1").change(function() {
		$(this).closest("li").css("border", "2px lightblue solid");
		$("#state2").closest("li").css("border", "0px");
		$("#state3").closest("li").css("border", "0px");
		$("#selectresume").css("display", "block");
		$("#noselectresume").css("display", "none");

	});
	$("#state2").change(function() {
		$(this).closest("li").css("border", "2px lightblue solid");
		$("#state1").closest("li").css("border", "0px");
		$("#state3").closest("li").css("border", "0px");
		$("#selectresume").css("display", "block");
		$("#noselectresume").css("display", "none");
	});
	$("#state3").change(function() {
		$(this).closest("li").css("border", "2px lightblue solid");
		$("#state2").closest("li").css("border", "0px");
		$("#state1").closest("li").css("border", "0px");
		$("#selectresume").css("display", "none");
		$("#noselectresume").css("display", "block");
	});

	$("#selectresume1").change(function() {
		$(this).parent().parent().css("border", "2px lightblue solid");
		$("#selectresume2").parent().parent().css("border", "0px");
		$("#selectresume3").parent().parent().css("border", "0px");

	});
	$("#selectresume2").change(function() {
		$(this).parent().parent().css("border", "2px lightblue solid");
		$("#selectresume1").parent().parent().css("border", "0px");
		$("#selectresume3").parent().parent().css("border", "0px");

	});
	$("#selectresume3").change(function() {
		$(this).parent().parent().css("border", "2px lightblue solid");
		$("#selectresume2").parent().parent().css("border", "0px");
		$("#selectresume1").parent().parent().css("border", "0px");

	});

	$('#certificateBtn').click(function() {
		$('#certificateChk').prop('checked', function() {
			return !$("#certificateChk").prop('checked');
		});
		infochk();
		if ($("#certificateChk").is(":checked")) {
			fnMove("#certificateinfo");
		}
	});

	$('#portfolioBtn').click(function() {
		$('#portfolioChk').prop('checked', function() {
			return !$("#portfolioChk").prop('checked');
		});
		infochk();
		if ($("#portfolioChk").is(":checked")) {
			fnMove("#portfolioinfo");
		}
	});

	$('#careerdescriptionBtn').click(function() {
		$('#careerdescriptionChk').prop('checked', function() {
			return !$("#careerdescriptionChk").prop('checked');
		});
		infochk();
		if ($("#careerdescriptionChk").is(":checked")) {
			fnMove("#careerdescriptioninfo");
		}
	});

	$('#selfintroBtn').click(function() {
		$('#selfintroChk').prop('checked', function() {
			return !$("#selfintroChk").prop('checked');
		});
		infochk();
		if ($("#selfintroChk").is(":checked")) {
			fnMove("#selfintroinfo");
		}

	});

	$("input[name='sex']").change(function() {
		infochk();
	});

	$("input[name='schools']").change(function() {
		infochk();
	});
	$("input[name='careerselect']").change(function() {
		infochk();
	});

	$.datepicker.setDefaults({
		dateFormat : 'yy-mm-dd' // Input Display Format 변경
		,
		showOtherMonths : true // 빈 공간에 현재월의 앞뒤월의 날짜를 표시
		,
		showMonthAfterYear : true // 년도 먼저 나오고, 뒤에 월 표시
		,
		changeYear : true // 콤보박스에서 년 선택 가능
		,
		changeMonth : true // 콤보박스에서 월 선택 가능
		// ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을
		// 누르거나 input을 클릭하면 달력 표시
		,
		// buttonImage :
		// "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif"
		// //버튼 이미지 경로
		// ,
		// buttonImageOnly : false //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
		// ,
		buttonText : "선택" // 버튼에 마우스 갖다 댔을 때 표시되는 텍스트
		,
		yearSuffix : "년" // 달력의 년도 부분 뒤에 붙는 텍스트
		,
		monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8', '9', '10',
				'11', '12' ] // 달력의 월 부분 텍스트
		,
		monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월',
				'10월', '11월', '12월' ] // 달력의 월 부분 Tooltip 텍스트
		,
		dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ] // 달력의 요일 부분 텍스트
		,
		dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일' ]
	// 달력의 요일 부분 Tooltip 텍스트
	// ,minDate: "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
	// ,maxDate: "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)
	});

	$("input[name='user_elementary_school_start_date']").datepicker();
	$("input[name='user_elementary_school_end_date']").datepicker();
	$("input[name='user_middle_school_start_date']").datepicker();
	$("input[name='user_middle_school_end_date']").datepicker();
	$("input[name='user_high_school_start_date']").datepicker();
	$("input[name='user_high_school_end_date']").datepicker();
	$("input[name='user_university_start_date']").datepicker();
	$("input[name='user_university_end_date']").datepicker();
	$("input[name='user_company_start_date']").datepicker();
	$("input[name='user_company_end_date']").datepicker();
	$("input[name='user_certificate_type1_date']").datepicker();
	$("input[name='user_certificate_type2_date']").datepicker();
	$("input[name='user_certificate_type3_date']").datepicker();
	$("#picdel").click(function() {
		var a = confirm("삭제하시겠습니까?");
		if (a) {
			$("#havePic").css("display", "none");
			$("#noPic").css("display", "block");
		}
	});
	$("#addPicBtn").click(function() {
		$("#addPic").click();
	});

	$("#addmajor").click(function() {
		$("#submajor").css("display", "block");
		$("#addmajor").css("display", "none");
	});
	$("#delmajor").click(function() {
		$("#submajor").css("display", "none");
		$("#addmajor").css("display", "block");
	});
	$("#positionresult").click(
			function() {
				if (!$("input[name='position']").is(":checked")) {
					alert("직급을 선택해 주세요");
				} else if ($("input[name='position']").is(":checked")
						&& $("input[name='position2']").is(":checked")) {
					var a = $("input[name='position']:checked").val() + "/"
							+ $("input[name='position2']:checked").val();
					$("#user_company_position").val(a);
					$("#position_modal_close").click();
				} else if ($("input[name='position']").is(":checked")) {
					var a = $("input[name='position']:checked").val();
					$("#user_company_position").val(a);
					$("#position_modal_close").click();
				}
				$("input[name='position']").prop("checked", false);
				$("input[name='position2']").prop("checked", false);

			});

	$('#careerdescriptionta').keyup(function(e) {
		var content = $(this).val();
		$('#counter').html("(" + content.length + " / 최대 1000자)"); // 글자수 실시간
		// 카운팅

		if (content.length > 1000) {
			alert("최대 1000자까지 입력 가능합니다.");
			$(this).val(content.substring(0, 1000));
			$('#counter').html("(1000 / 최대 1000자)");
		}
	});
	$('#selfintrota').keyup(function(e) {
		var content = $(this).val();
		$('#counter2').html("(" + content.length + " / 최대 1000자)"); // 글자수 실시간
		// 카운팅

		if (content.length > 1000) {
			alert("최대 1000자까지 입력 가능합니다.");
			$(this).val(content.substring(0, 1000));
			$('#counter2').html("(1000 / 최대 1000자)");
		}
	});
	$("#addcertificate")
			.click(
					function() {
						var a = $("#certificateform").clone();
						var b = $("div[id *= 'certificateform']").length;
						var c = "certificateform" + b;
						a.prop("id", c);
						$("#certificateinfoContent").append(a);
						if (b != 1) {
							$("#" + c)
									.prepend(
											"<button class='btn btn-secondary float-right mr-5' name='close_certificateform' onclick='closecerti()' >삭제</button>");
						}
						;
						$("#" + c).css("display", "block");
					});
	$("#addselfintro")
			.click(
					function() {
						var a = $("#selfintroform").clone();
						var b = $("div[id *= 'selfintroform']").length;
						var c = "selfintroform" + b;
						a.prop("id", c);
						$("#selfintrocontent").append(a);
						if (b != 1) {
							$("#" + c)
									.prepend(
											"<button class='btn btn-secondary float-right' name='close_selfintro' onclick='closecerti()' >삭제</button>");
						}
						;
						$("#" + c).css("display", "block");
					});

});

function openform() {
	$("#addcertificate").click();
	$("#addselfintro").click();
	$("#openresume1").click();$("#openresume1").click();
};
function certificatechange() {
	var d = $(event.target);
	var a = $(event.target).parent().parent().children(".certificate_type1");
	var b = $(event.target).parent().parent().children(".certificate_type2");
	var c = $(event.target).parent().parent().children(".certificate_type3");

	if ($(d).val() == "자격증/면허증") {
		$(a).css("display", "block");
		$(b).css("display", "none");
		$(c).css("display", "none");
	} else if ($(d).val() == "어학시험") {
		$(a).css("display", "none");
		$(b).css("display", "block");
		$(c).css("display", "none");

	} else if ($(d).val() == "수상내역/공모전") {
		$(a).css("display", "none");
		$(b).css("display", "none");
		$(c).css("display", "block");
	}
	;

}
function closecerti() {
	var result = confirm("삭제하시면 입력하신 정보가 다 사라집니다. 그래도 삭제하시겠습니까? ");
	var a = event.target;
	var b = $(a).parent();
	if (result) {
		$(b).remove();
	}
	;

}
function infochk() {
	$("#state1").change();
	if (document.getElementById("certificateChk").checked) {
		document.getElementById("certificateinfo").style.display = "block";
		document.getElementById("certificateBtn").className = "btn-outline-primary"
		document.getElementById("certificateBtn").innerHTML = "제거-"
	} else {
		document.getElementById("certificateinfo").style.display = "none";
		document.getElementById("certificateBtn").className = "btn-primary"
		document.getElementById("certificateBtn").innerHTML = "추가+"
	}
	if (document.getElementById("careerdescriptionChk").checked) {
		document.getElementById("careerdescriptioninfo").style.display = "block";
		document.getElementById("careerdescriptionBtn").className = "btn-outline-primary"
		document.getElementById("careerdescriptionBtn").innerHTML = "제거-"
	} else {
		document.getElementById("careerdescriptioninfo").style.display = "none";
		document.getElementById("careerdescriptionBtn").className = "btn-primary"
		document.getElementById("careerdescriptionBtn").innerHTML = "추가+"
	}
	if (document.getElementById("portfolioChk").checked) {
		document.getElementById("portfolioinfo").style.display = "block";
		document.getElementById("portfolioBtn").className = "btn-outline-primary"
		document.getElementById("portfolioBtn").innerHTML = "제거-"
	} else {
		document.getElementById("portfolioinfo").style.display = "none";
		document.getElementById("portfolioBtn").className = "btn-primary"
		document.getElementById("portfolioBtn").innerHTML = "추가+"
	}
	if (document.getElementById("selfintroChk").checked) {
		document.getElementById("selfintroinfo").style.display = "block";
		document.getElementById("selfintroBtn").className = "btn-outline-primary"
		document.getElementById("selfintroBtn").innerHTML = "제거-"
	} else {
		document.getElementById("selfintroinfo").style.display = "none";
		document.getElementById("selfintroBtn").className = "btn-primary"
		document.getElementById("selfintroBtn").innerHTML = "추가+"
	}
	if ($("#male").is(":checked")) {
		$("#male").siblings().css("background-color", "lightblue");

	} else {
		$("#male").siblings().css("background-color", "white");
	}
	;

	if ($("#female").is(":checked")) {
		$("#female").siblings().css("background-color", "lightblue");

	} else {
		$("#female").siblings().css("background-color", "white");
	}
	;

	if ($("#elementaryschool").is(":checked")) {
		$("#elementaryschoolinfo").css("display", "block");
		$("#middleschoolinfo").css("display", "none");
		$("#highschoolinfo").css("display", "none");
		$("#universityinfo").css("display", "none");
	} else if ($("#middleschool").is(":checked")) {
		$("#middleschoolinfo").css("display", "block");
		$("#elementaryschoolinfo").css("display", "none");
		$("#highschoolinfo").css("display", "none");
		$("#universityinfo").css("display", "none");
	} else if ($("#highschool").is(":checked")) {
		$("#highschoolinfo").css("display", "block");
		$("#elementaryschoolinfo").css("display", "none");
		$("#middleschoolinfo").css("display", "none");
		$("#universityinfo").css("display", "none");
	} else if ($("#university").is(":checked")) {
		$("#highschoolinfo").css("display", "block");
		$("#universityinfo").css("display", "block");
		$("#elementaryschoolinfo").css("display", "none");
		$("#middleschoolinfo").css("display", "none");
	}
	;
	if ($("#new").is(":checked")) {
		$("#experienceinfo").css("display", "none");
	} else if ($("#experience").is(":checked")) {
		$("#experienceinfo").css("display", "block");
	}
	;
};
function fnMove(seq) {
	var offset = $(seq).offset();
	$('html, body').animate({
		scrollTop : offset.top - 98
	}, 400);
};

$(function() {
	$("#imgInp").on('change', function() {
		readURL(this);
	});
});

function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();

		reader.onload = function(e) {
			$('#blah').attr('src', e.target.result);
		}

		reader.readAsDataURL(input.files[0]);
	}
}
// 이력서화면
function gosituation() {
	$("a[href *='situation']").click();
}
function gostate() {
	$("a[href *='state']").click();
}

function goresume() {
	$("a[href *='Registration']").click();
}
// 스크랩 화면
function gointerest() {
	$("a[href *='interest']").click();
}
function gorecently() {
	$("a[href *='recently']").click();
}
function gorecomand() {
	$("a[href *='recomand']").click();
}
function gosearchjob() {
	$("a[href *='searchjob']").click();
}
function setChildValue(index) {
	window.location.href = "resume.html?index=" + index;
}
function setapplyValue(index) {
	window.location.href = "apply.html?index=" + index;
}
function setscrapValue(index) {
	window.location.href = "scrap.html?index=" + index;
}
