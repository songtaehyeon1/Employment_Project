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
	var tag4 = "";
	positionList
			.map(function(value, idx) {
				tag4 += "<div style='width: 100px; height: 20px;margin-bottom:10px'><input type='checkbox' name='position' value='"
						+ value + "'>" + value + "</div>";
			});
	$("#positionselect").append(tag4);

	var tag5 = "";
	position2List
			.map(function(value, idx) {
				tag5 += "<div style='width: 100px; height: 20px;margin-bottom:10px'><input type='checkbox' name='position2' value='"
						+ value + "'>" + value + "</div>";
			});
	$("#positionselect2").append(tag5);

	$(".nav-item").hover(function() {
		$(this).css("font-size", "1.3em");

	}, function() {
		$(this).css("font-size", "1.3em");
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
	$("input[name='user_recruit_start_date']").datepicker();
	$("input[name='user_recruit_end_date']").datepicker();
	$("input[name='user_paper_start_date']").datepicker();
	$("input[name='user_paper_end_date']").datepicker();
	$("input[name='user_interview_start_date']").datepicker();
	$("input[name='user_interview_end_date']").datepicker();
	$("input[name='user_interview_start_date2']").datepicker();
	$("input[name='user_interview_end_date2']").datepicker();
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
	$("#positionresult").click(function() {
		var a = "";
		if (!$("input[name='position']").is(":checked")) {
			alert("직급을 선택해 주세요");
		} else {
			$("input[name='position']:checked").each(function(idx) {
				a += $(this).val() + ","
			});
			$("input[name='position2']:checked").each(function() {
				a += $(this).val() + ","
			});
			a = a.substr(0, a.length - 1);
			$("#user_company_position").val(a);
			$("#position_modal_close").click();
		}

		$("input[name='position']").prop("checked", false);
		$("input[name='position2']").prop("checked", false);
	});
	$("input[name='position'],input[name='position2']").change(
			function() {
				var cnt = $("input[name='position']:checked").length
						+ $("input[name='position2']:checked").length;
				if (cnt > 3) {
					alert("선택은 3개까지 가능합니다.");
					$(this).prop("checked", false);
				}
			});

	$("input[name='job_type']").click(function() {

		var cnt = $("input[name='job_type']:checked").length;
		if (cnt > 3) {
			alert("선택은 3개까지 가능합니다.");
			$(this).prop("checked", false);
		}
		jobtypechk();
	});
	$("input[name='recruit_type']").click(function() {
		recruittypechk();
	});
	$("#paper_date_on").click(function() {

		if ($(this).is(":checked")) {
			$("#user_paper_start_date").attr("disabled", false);
			$("#user_paper_end_date").attr("disabled", false);
		} else {
			$("#user_paper_start_date").attr("disabled", true);
			$("#user_paper_end_date").attr("disabled", true);
		}

	});
	$("#interview_date_on").click(function() {

		if ($(this).is(":checked")) {
			$("#user_interview_start_date").attr("disabled", false);
			$("#user_interview_end_date").attr("disabled", false);
		} else {
			$("#user_interview_start_date").attr("disabled", true);
			$("#user_interview_end_date").attr("disabled", true);
		}

	});
	$("#interview_date_on2").click(function() {

		if ($(this).is(":checked")) {
			$("#user_interview_start_date2").attr("disabled", false);
			$("#user_interview_end_date2").attr("disabled", false);
		} else {
			$("#user_interview_start_date2").attr("disabled", true);
			$("#user_interview_end_date2").attr("disabled", true);
		}

	});
	
	$("#work_space").click(function() {
		if ($(this).is(":checked")) {
			$("#work_space_text").css("display", "block");
		} else {
			$("#work_space_text").css("display", "none");
		}
	});
	$("#work_position").click(function() {
		if ($(this).is(":checked")) {
			$("#user_company_position").css("display", "block");
		} else {
			$("#user_company_position").css("display", "none");
		}
	});
	
	
	$("#preferential").click(function() {
		if ($(this).is(":checked")) {
			$("#preferential_text").css("display", "block");
		} else {
			$("#preferential_text").css("display", "none");
		}
	});

	$("#select_sex").change(function() {
		var a = $(this).val();

		if (a == "성별무관") {
			$("#gender_law").css("display", "none");
		} else if (a == "남성") {
			$("#gender_law").css("display", "block");
		} else if (a == "여성") {
			$("#gender_law").css("display", "block");
		}
	});
	$("#select_age").change(function() {
		var a = $(this).val();
		if (a == "연령무관") {
			$("#age_law").css("display", "none");
			$("#start_age").attr("disabled", true);
			$("#end_age").attr("disabled", true);
		} else if (a == "연령제한") {
			$("#age_law").css("display", "block");
			$("#start_age").attr("disabled", false);
			$("#end_age").attr("disabled", false);
		}
	});

	$("#recruit_state").change(function() {
		var a = $(this).val();
		if (a == "마감일 지정") {
			$("#user_recruit_end_date").attr("disabled", false);
			$("#recruit_end_time").attr("disabled", false);

		} else if (a == "채용시 마감" || a == "상시 채용") {
			$("#user_recruit_end_date").attr("disabled", true);
			$("#recruit_end_time").attr("disabled", true);
			;
		}
	});
	$("#addgenderage").click(function() {
		$("#gender_age_content").toggle("fast", function() {
			if ($("#gender_age_content").css("display") == "none") {
				$("#addgenderage").html("성별,연령 추가입력▽");
			} else if ($("#gender_age_content").css("display") != "none") {
				$("#addgenderage").html("성별,연령 추가입력△");
			}
		});

	});

	$("#paper_save").click(function() {

		var a = $("#paper_title_change").val();

		$("#paper_title").html(a);
	});

	$("#interview_save").click(function() {

		var a = $("#interview_title_change").val();

		$("#interview_title").html(a);
	});
	$("#interview_save2").click(function() {

		var a = $("#interview_title_change2").val();

		$("#interview_title2").html(a);
	});
	$("#gohire").click(function() {
		$("a[href='#Registration']").click();
	});

	$("#job_search_btn").click(function() {
		$("#job_search").toggle("fast");
	});
	$("#qualification_salary").change(function() {
		var a = $(this).val();
		if (a == "연봉") {
			$("#salary_msg").html("최저시급 8,590원, 주 40시간 기준 최저연봉 약 21,543,720원");
			$("#not_year_salary").css("display", "none");
			$("#year_salary").css("display", "block");
		} else if (a == "월급") {
			$("#salary_msg").html("주 40시간 기준 최저월급 약 1,795,310원입니다.");
			$("#won_manwon").html("만원");
			$("#not_year_salary").css("display", "block");
			$("#year_salary").css("display", "none");
		} else if (a == "주급") {
			$("#salary_msg").html("주 40시간 기준 최저주급 약 343,600원입니다.");
			$("#won_manwon").html("만원");
			$("#not_year_salary").css("display", "block");
			$("#year_salary").css("display", "none");
		} else if (a == "일급") {
			$("#salary_msg").html("일 8시간 기준 최저일급 약 68,720원입니다.");
			$("#won_manwon").html("만원");
			$("#not_year_salary").css("display", "block");
			$("#year_salary").css("display", "none");
		} else if (a == "시급") {
			$("#salary_msg").html("최저시급 8,590원입니다.");
			$("#won_manwon").html("원");
			$("#not_year_salary").css("display", "block");
			$("#year_salary").css("display", "none");
		} else if (a == "건당") {
			$("#salary_msg").html("최저시급 8,590원입니다.");
			$("#won_manwon").html("원");
			$("#not_year_salary").css("display", "block");
			$("#year_salary").css("display", "none");
		}
		;
	});

});

function papercontentOpen() {
	$("#papercontent").toggle("fast", function() {
		if ($("#papercontent").css("display") == "none") {
			$("#openpaperContent").html("열기");
		} else if ($("#papercontent").css("display") != "none") {
			$("#openpaperContent").html("접기");
		}
	});

};

function interviewcontentOpen() {
	$("#interviewcontent").toggle("fast", function() {
		if ($("#interviewcontent").css("display") == "none") {
			$("#openinterviewContent").html("열기");
		} else if ($("#interviewcontent").css("display") != "none") {
			$("#openinterviewContent").html("접기");
		}
	});

};

function interviewcontentOpen2() {
	$("#interviewcontent2").toggle("fast", function() {
		if ($("#interviewcontent2").css("display") == "none") {
			$("#openinterviewContent2").html("열기");
		} else if ($("#interviewcontent2").css("display") != "none") {
			$("#openinterviewContent2").html("접기");
		}
	});

};

function jobtypechk() {
	if ($("#permanentchk").is(":checked")) {
		$("#permanentinfo").css("display", "block");
	} else {
		$("#permanentinfo").css("display", "none");
	}
	if ($("#contractchk").is(":checked")) {
		$("#contractinfo").css("display", "block");
	} else {
		$("#contractinfo").css("display", "none");
	}
	if ($("#internchk").is(":checked")) {
		$("#interninfo").css("display", "block");
	} else {
		$("#interninfo").css("display", "none");
	}
	if ($("#dispatchchk").is(":checked")) {
		$("#dispatchinfo").css("display", "block");
	} else {
		$("#dispatchinfo").css("display", "none");
	}
	if ($("#armychk").is(":checked")) {
		$("#armyinfo").css("display", "block");
	} else {
		$("#armyinfo").css("display", "none");
	}
};
function recruittypechk() {
	if ($("#homepagechk").is(":checked")) {
		$("#homepageinfo").css("display", "block");
	} else {
		$("#homepageinfo").css("display", "none");
	}

	if ($("#faxchk").is(":checked")) {
		$("#faxinfo").css("display", "block");
	} else {
		$("#faxinfo").css("display", "none");
	}
}
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

function fnMove(seq) {
	console.log(seq);
	var offset = $(seq).offset();
	$('html, body').animate({
		scrollTop : offset.top - 98
	}, 400);
};

function optionage() {
	var nowYear = new Date().getFullYear();
	for (var i = 18; i < 71; i++) {
		$("#start_age").append(
				"<option value='" + (nowYear - i + 1) + "'>" + i + "세("
						+ (nowYear - i + 1) + ")년생");
		$("#end_age").append(
				"<option value='" + (nowYear - i + 1) + "'>" + i + "세("
						+ (nowYear - i + 1) + ")년생");
	}
	for (var i = 0; i <= 24; i++) {
		$("#recruit_start_time").append("<option>" + i + "시</option>");
		$("#recruit_end_time").append("<option>" + i + "시</option>");
	}

}
