var certificateSq = 0;
var selfinfoSq = 0;
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
	$("#e_school_location").append(tag);
	$("#m_school_location").append(tag);
	$("#u_school_location").append(tag);
	$("#company_location").append(tag);

	var tag2 = ""
	majorList.map(function(value, idx) {
		tag2 += "<option value='" + value + "'>" + value + "</option>"
	});
	$("#h_school_major").append(tag2);
	var tag3 = "";
	mainmajorList.map(function(value, idx) {
		tag3 += "<option value='" + value + "' <c:if test='${schooltype =='U' && svo.main_major_type =='"+value+"'}'>selected</c:if>>" + value + "</option>"
	});
	$("#u_main_major_type").append(tag3);
	$("#u_sub_major_type").append(tag3);

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

	$("input[id ^='openresume']")
			.click(
					function() {
						if ($(this).is(":checked")) {
							$("label[for^='openresume']")
									.html(
											"이력서 공개중");

						} else {
							$("label[for^='openresume']")
									.html(
											"이력서 비공개");
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

	$("input[name='gender']").change(function() {
		infochk();
	});

	$("input[name='userschool_type']").change(function() {
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

	$("input[name='school_start']").datepicker();
	$("input[name='school_end']").datepicker();

	$("input[name='h_school_start']").datepicker();
	$("input[name='h_school_end']").datepicker();

	$("input[name='company_start']").datepicker();
	$("input[name='company_end']").datepicker();

	
	
	$("#addcertificate")
			.click(
					function() {
						var a = $("#certificateform").clone();
						var b = $("div[id *= 'certificateform']").length;
						var c = "certificateform" + certificateSq;
						certificateSq++;
						a.attr("id", c);
						$(a).children().children("select").attr("name","certificate_type")
						$("#certificateinfoContent").append(a);
						if (b != 1) {
							$("#" + c)
									.prepend(
											"<button type='button' class='btn btn-secondary float-right mr-5' name='close_certificateform' onclick='closecerti()' >삭제</button>");
						}
						;
						$("#" + c).css("display", "block");
						
						console.log($("#"+ c).children().children("div:eq(1)").children("input"));
						$("#"+ c).children().children("div:eq(1)").children("input").attr("name","a_certificate_name");
						$("#"+ c).children().children("div:eq(2)").children("input").attr("name","a_certificate_organ");
						$("#"+ c).children().children("div:eq(3)").children("select").attr("name","a_pass_type");
						$("#"+ c).children().children("div:eq(4)").children("input").attr("name","a_certificate_date");
						$("#" + c + " input[name *='certificate_date']")
						.datepicker();

						
					});
	$("#addselfintro")
			.click(
					function() {
						var a = $("#selfintroform").clone();
						var b = $("div[id *= 'selfintroform']").length;
						var c = "selfintroform" + selfinfoSq;
						selfinfoSq++;
						a.attr("id", c);
						$(a).children("input").attr("name","selfinfo_title");
						$(a).children("textarea").attr("name","selfinfo_content");
						$("#selfintrocontent").append(a);
						if (b != 1) {
							$("#" + c)
									.prepend(
											"<button type='button' class='btn btn-secondary float-right' name='close_selfintro' onclick='closecerti()' >삭제</button>");
						}
						;
						$("#" + c).css("display", "block");
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
					$("#company_position").val(a);
					$("#position_modal_close").click();
				} else if ($("input[name='position']").is(":checked")) {
					var a = $("input[name='position']:checked").val();
					$("#company_position").val(a);
					$("#position_modal_close").click();
				}
				$("input[name='position']").prop("checked", false);
				$("input[name='position2']").prop("checked", false);

			});

	$('#content').keyup(function(e) {
		var content = $(this).val();
		$('#counter').html("(" + content.length + " / 최대 1000자)"); // 글자수 실시간
		// 카운팅

		if (content.length > 1000) {
			alert("최대 1000자까지 입력 가능합니다.");
			$(this).val(content.substring(0, 1000));
			$('#counter').html("(1000 / 최대 1000자)");
		}
	});
	

});



function countText() {
	var content = $(event.target).val();
	$(event.target).next().children("span").html(
			"(" + content.length + " / 최대 1000자)");
	if (content.length > 1000) {
		alert("최대 1000자까지 입력 가능합니다.");
		$(event.target).val(content.substring(0, 1000));
		$(event.target).next().children().html("(1000 / 최대 1000자)");
	}
}
function openform() {
	
};
function certificatechange() {
	var d = $(event.target);
	var a = $(event.target).parent().parent().children(".certificate_type1");
	var b = $(event.target).parent().parent().children(".certificate_type2");
	var c = $(event.target).parent().parent().children(".certificate_type3");
	if ($(d).val() == "c_type1") {
		$(a).css("display", "block");
		$(a).children("div:eq(0)").children("input").attr("name","a_certificate_name");
		$(a).children("div:eq(1)").children("input").attr("name","a_certificate_organ");
		$(a).children("div:eq(2)").children("select").attr("name","a_pass_type");
		$(a).children("div:eq(3)").children("input").attr("name","a_certificate_date");
	
		$(b).css("display", "none");
		$(b).children("div:eq(0)").children("select").attr("name","");
		$(b).children("div:eq(1)").children("input").attr("name","");
		$(b).children("div:eq(2)").children("input").attr("name","");
		$(b).children("div:eq(3)").children("input").attr("name","");
		$(b).children("div:eq(4)").children("select").attr("name","");
		$(b).children("div:eq(5)").children("input").attr("name","");
		$(c).css("display", "none");
		$(c).children("div:eq(0)").children("input").attr("name","");
		$(c).children("div:eq(1)").children("input").attr("name","");
		$(c).children("div:eq(2)").children("input").attr("name","");
	} else if ($(d).val() == "c_type2") {
		$(a).css("display", "none");
		$(a).children("div:eq(0)").children("input").attr("name","");
		$(a).children("div:eq(1)").children("input").attr("name","");
		$(a).children("div:eq(2)").children("select").attr("name","");
		$(a).children("div:eq(3)").children("input").attr("name","");
		$(b).css("display", "block");
		$(b).children("div:eq(0)").children("select").attr("name","b_language_type");
		$(b).children("div:eq(1)").children("input").attr("name","b_certificate_name");
		$(b).children("div:eq(2)").children("input").attr("name","b_certificate_score");
		$(b).children("div:eq(3)").children("input").attr("name","b_certificate_level");
		$(b).children("div:eq(4)").children("select").attr("name","b_pass_type");
		$(b).children("div:eq(5)").children("input").attr("name","b_certificate_date");
		$(c).css("display", "none");
		$(c).children("div:eq(0)").children("input").attr("name","");
		$(c).children("div:eq(1)").children("input").attr("name","");
		$(c).children("div:eq(2)").children("input").attr("name","");

	} else if ($(d).val() == "c_type3") {
		$(a).css("display", "none");
		$(a).children("div:eq(0)").children("input").attr("name","");
		$(a).children("div:eq(1)").children("input").attr("name","");
		$(a).children("div:eq(2)").children("select").attr("name","");
		$(a).children("div:eq(3)").children("input").attr("name","");
		$(b).css("display", "none");
		$(b).children("div:eq(0)").children("select").attr("name","");
		$(b).children("div:eq(1)").children("input").attr("name","");
		$(b).children("div:eq(2)").children("input").attr("name","");
		$(b).children("div:eq(3)").children("input").attr("name","");
		$(b).children("div:eq(4)").children("select").attr("name","");
		$(b).children("div:eq(5)").children("input").attr("name","");
		$(c).css("display", "block");
		$(c).children("div:eq(0)").children("input").attr("name","c_certificate_name");
		$(c).children("div:eq(1)").children("input").attr("name","c_certificate_organ");
		$(c).children("div:eq(2)").children("input").attr("name","c_certificate_date");
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
		document.getElementById("certificateBtn").innerHTML = "추가+";
		var cell = document.getElementById("certificateinfoContent");
		while ( cell.hasChildNodes() ) { 
			cell.removeChild( cell.firstChild ); 
		}

		
	}
	if (document.getElementById("careerdescriptionChk").checked) {
		document.getElementById("careerdescriptioninfo").style.display = "block";
		document.getElementById("careerdescriptionBtn").className = "btn-outline-primary"
		document.getElementById("careerdescriptionBtn").innerHTML = "제거-"
		document.getElementById("content").name="content";
	} else {
		document.getElementById("careerdescriptioninfo").style.display = "none";
		document.getElementById("careerdescriptionBtn").className = "btn-primary"
		document.getElementById("careerdescriptionBtn").innerHTML = "추가+"
		document.getElementById("content").name="";
		
	}
	if (document.getElementById("portfolioChk").checked) {
		document.getElementById("portfolioinfo").style.display = "block";
		document.getElementById("portfolioBtn").className = "btn-outline-primary"
		document.getElementById("portfolioBtn").innerHTML = "제거-"
		document.getElementById("imgInp").name="url";
	} else {
		document.getElementById("portfolioinfo").style.display = "none";
		document.getElementById("portfolioBtn").className = "btn-primary"
		document.getElementById("portfolioBtn").innerHTML = "추가+"
		document.getElementById("imgInp").name="";
	}
	if (document.getElementById("selfintroChk").checked) {
		document.getElementById("selfintroinfo").style.display = "block";
		document.getElementById("selfintroBtn").className = "btn-outline-primary"
		document.getElementById("selfintroBtn").innerHTML = "제거-"
	} else {
		document.getElementById("selfintroinfo").style.display = "none";
		document.getElementById("selfintroBtn").className = "btn-primary"
		document.getElementById("selfintroBtn").innerHTML = "추가+"
		var cell = document.getElementById("selfintrocontent");
		while ( cell.hasChildNodes() ) { 
			cell.removeChild( cell.firstChild ); 
		}
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

	if ($("#elementaryschool").is(":checked")) {// 초등학교선택
		$("#elementaryschoolinfo").css("display", "block");
		$("#e_school_name").attr("name", "school_name");
		$("#e_school_location").attr("name", "school_location");
		$("#e_school_start").attr("name", "school_start");
		$("#e_school_end").attr("name", "school_end");
		$("#e_school_end_type").attr("name", "school_end_type");

		$("#middleschoolinfo").css("display", "none");
		$("#m_school_name").attr("name", "");
		$("#m_school_location").attr("name", "");
		$("#m_school_start").attr("name", "");
		$("#m_school_end").attr("name", "");
		$("#m_school_end_type").attr("name", "");

		$("#highschoolinfo").css("display", "none");
		$("#h_school_name").attr("name", "");
		$("#h_school_major").attr("name", "");
		$("#h_school_start").attr("name", "");
		$("#h_school_end").attr("name", "");
		$("#h_school_end_type").attr("name", "");

		$("#universityinfo").css("display", "none");
		$("#u_schooltype").attr("name", "");
		$("#u_school_name").attr("name", "");
		$("#u_school_location").attr("name", "");
		$("#u_school_start").attr("name", "");
		$("#u_school_start_type").attr("name", "");
		$("#u_school_end").attr("name", "");
		$("#u_school_end_type").attr("name", "");
		$("#u_main_major_type").attr("name", "");
		$("#u_main_major_name").attr("name", "");
		$("#u_sub_type").attr("name", "");
		$("#u_sub_major_type").attr("name", "");
		$("#u_sub_major_name").attr("name", "");
		$("#u_day_and_night").attr("name", "");
		$("#u_score").attr("name", "");
		$("#u_score_type").attr("name", "");
		$("#u_graduation_work").attr("name", "");

	} else if ($("#middleschool").is(":checked")) {
		$("#middleschoolinfo").css("display", "block");
		$("#m_school_name").attr("name", "school_name");
		$("#m_school_location").attr("name", "school_location");
		$("#m_school_start").attr("name", "school_start");
		$("#m_school_end").attr("name", "school_end");
		$("#m_school_end_type").attr("name", "school_end_type");

		$("#elementaryschoolinfo").css("display", "none");
		$("#e_school_name").attr("name", "");
		$("#e_school_location").attr("name", "");
		$("#e_school_start").attr("name", "");
		$("#e_school_end").attr("name", "");
		$("#e_school_end_type").attr("name", "");

		$("#highschoolinfo").css("display", "none");
		$("#h_school_name").attr("name", "");
		$("#h_school_major").attr("name", "");
		$("#h_school_start").attr("name", "");
		$("#h_school_end").attr("name", "");
		$("#h_school_end_type").attr("name", "");

		$("#universityinfo").css("display", "none");
		$("#u_schooltype").attr("name", "");
		$("#u_school_name").attr("name", "");
		$("#u_school_location").attr("name", "");
		$("#u_school_start").attr("name", "");
		$("#u_school_start_type").attr("name", "");
		$("#u_school_end").attr("name", "");
		$("#u_school_end_type").attr("name", "");
		$("#u_main_major_type").attr("name", "");
		$("#u_main_major_name").attr("name", "");
		$("#u_sub_type").attr("name", "");
		$("#u_sub_major_type").attr("name", "");
		$("#u_sub_major_name").attr("name", "");
		$("#u_day_and_night").attr("name", "");
		$("#u_score").attr("name", "");
		$("#u_score_type").attr("name", "");
		$("#u_graduation_work").attr("name", "");

	} else if ($("#highschool").is(":checked")) {
		$("#highschoolinfo").css("display", "block");
		$("#h_school_name").attr("name", "h_school_name");
		$("#h_school_major").attr("name", "h_school_major");
		$("#h_school_start").attr("name", "h_school_start");
		$("#h_school_end").attr("name", "h_school_end");
		$("#h_school_end_type").attr("name", "h_school_end_type");

		$("#elementaryschoolinfo").css("display", "none");
		$("#e_school_name").attr("name", "");
		$("#e_school_location").attr("name", "");
		$("#e_school_start").attr("name", "");
		$("#e_school_end").attr("name", "");
		$("#e_school_end_type").attr("name", "");

		$("#middleschoolinfo").css("display", "none");
		$("#m_school_name").attr("name", "");
		$("#m_school_location").attr("name", "");
		$("#m_school_start").attr("name", "");
		$("#m_school_end").attr("name", "");
		$("#m_school_end_type").attr("name", "");

		$("#universityinfo").css("display", "none");
		$("#u_schooltype").attr("name", "");
		$("#u_school_name").attr("name", "");
		$("#u_school_location").attr("name", "");
		$("#u_school_start").attr("name", "");
		$("#u_school_start_type").attr("name", "");
		$("#u_school_end").attr("name", "");
		$("#u_school_end_type").attr("name", "");
		$("#u_main_major_type").attr("name", "");
		$("#u_main_major_name").attr("name", "");
		$("#u_sub_type").attr("name", "");
		$("#u_sub_major_type").attr("name", "");
		$("#u_sub_major_name").attr("name", "");
		$("#u_day_and_night").attr("name", "");
		$("#u_score").attr("name", "");
		$("#u_score_type").attr("name", "");
		$("#u_graduation_work").attr("name", "");
	} else if ($("#university").is(":checked")) {
		$("#highschoolinfo").css("display", "block");
		$("#h_school_name").attr("name", "h_school_name");
		$("#h_school_major").attr("name", "h_school_major");
		$("#h_school_start").attr("name", "h_school_start");
		$("#h_school_end").attr("name", "h_school_end");
		$("#h_school_end_type").attr("name", "h_school_end_type");

		$("#universityinfo").css("display", "block");
		$("#u_schooltype").attr("name", "schooltype");
		$("#u_school_name").attr("name", "school_name");
		$("#u_school_location").attr("name", "school_location");
		$("#u_school_start").attr("name", "school_start");
		$("#u_school_start_type").attr("name", "school_start_type");
		$("#u_school_end").attr("name", "school_end");
		$("#u_school_end_type").attr("name", "school_end_type");
		$("#u_main_major_type").attr("name", "main_major_type");
		$("#u_main_major_name").attr("name", "main_major_name");
		$("#u_sub_type").attr("name", "sub_type");
		$("#u_sub_major_type").attr("name", "sub_major_type");
		$("#u_sub_major_name").attr("name", "sub_major_name");
		$("#u_day_and_night").attr("name", "day_and_night");
		$("#u_score").attr("name", "score");
		$("#u_score_type").attr("name", "score_type");
		$("#u_graduation_work").attr("name", "graduation_work");

		$("#elementaryschoolinfo").css("display", "none");
		$("#e_school_name").attr("name", "");
		$("#e_school_location").attr("name", "");
		$("#e_school_start").attr("name", "");
		$("#e_school_end").attr("name", "");
		$("#e_school_end_type").attr("name", "");

		$("#middleschoolinfo").css("display", "none");
		$("#m_school_name").attr("name", "");
		$("#m_school_location").attr("name", "");
		$("#m_school_start").attr("name", "");
		$("#m_school_end").attr("name", "");
		$("#m_school_end_type").attr("name", "");

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
