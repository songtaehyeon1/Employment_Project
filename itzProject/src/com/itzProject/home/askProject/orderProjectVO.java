package com.itzProject.home.askProject;

public class orderProjectVO {
	private int projectNumber;
	private String corpno;
	private String corpName;
	private String applyList;//지원자 리스트
	private String workField;//어떤 분야의 작업자?
	private String projectType;//프로젝트 타입????????
	private String projectName;//프로젝트명
	private String workPeriod;//작업기간
	private String minPrice;//최저보수
	private String maxPrice;//최대보수
	private String meeting;//미팅여부
	private String meetingPlace;//미팅장소
	private String meetingPlaceDetail;
	private String neededEXP;//필요경력
	private String projectDeadline;//데드라인
	private String regDate;//글 등록일
	private String neededMember;//필요인원
	private String workForm;//작업형태 - 재택 .등등...
	private String workPlace;//근무지역
	private String workPlaceDetail;//상세 근무지역
	private String projectDetail;//프로젝트 상세설명
	private String urlAddress;//첨부 url 주소
	private String fileName;//첨부파일
	private String deadline;//공고 마감일
	private String agree;//약관 동의 여부
	private String neededMember_manually;//필요인원 직접입력
	private String workPeriod_manually;//프로젝트 작업 기간 직접입력
	private int hit;//조회수
	
	public orderProjectVO() {
		// TODO Auto-generated constructor stub
	}

	public int getProjectNumber() {
		return projectNumber;
	}

	public void setProjectNumber(int projectNumber) {
		this.projectNumber = projectNumber;
	}

	public String getCorpno() {
		return corpno;
	}

	public void setCorpno(String corpno) {
		this.corpno = corpno;
	}

	public String getCorpName() {
		return corpName;
	}

	public void setCorpName(String corpName) {
		this.corpName = corpName;
	}

	public String getApplyList() {
		return applyList;
	}

	public void setApplyList(String applyList) {
		this.applyList = applyList;
	}

	public String getWorkField() {
		return workField;
	}

	public void setWorkField(String workField) {
		this.workField = workField;
	}

	public String getProjectType() {
		return projectType;
	}

	public void setProjectType(String projectType) {
		this.projectType = projectType;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getWorkPeriod() {
		return workPeriod;
	}

	public void setWorkPeriod(String string) {
		this.workPeriod = string;
	}

	public String getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(String minPrice) {
		this.minPrice = minPrice;
	}

	public String getMaxPrice() {
		return maxPrice;
	}

	public void setMaxPrice(String maxPrice) {
		this.maxPrice = maxPrice;
	}

	public String getMeeting() {
		return meeting;
	}

	public void setMeeting(String meeting) {
		this.meeting = meeting;
	}

	public String getMeetingPlace() {
		return meetingPlace;
	}

	public void setMeetingPlace(String meetingPlace) {
		this.meetingPlace = meetingPlace;
	}

	public String getMeetingPlaceDetail() {
		return meetingPlaceDetail;
	}

	public void setMeetingPlaceDetail(String meetingPlaceDetail) {
		this.meetingPlaceDetail = meetingPlaceDetail;
	}

	public String getNeededEXP() {
		return neededEXP;
	}

	public void setNeededEXP(String neededEXP) {
		this.neededEXP = neededEXP;
	}

	public String getProjectDeadline() {
		return projectDeadline;
	}

	public void setProjectDeadline(String projectDeadline) {
		this.projectDeadline = projectDeadline;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getNeededMember() {
		return neededMember;
	}

	public void setNeededMember(String string) {
		this.neededMember = string;
	}

	public String getWorkForm() {
		return workForm;
	}
	
	public void setWorkForm(String string) {
		this.workForm = string;
	}

	public String getWorkPlace() {
		return workPlace;
	}

	public void setWorkPlace(String workPlace) {
		this.workPlace = workPlace;
	}

	public String getWorkPlaceDetail() {
		return workPlaceDetail;
	}

	public void setWorkPlaceDetail(String workPlaceDetail) {
		this.workPlaceDetail = workPlaceDetail;
	}

	public String getProjectDetail() {
		return projectDetail;
	}

	public void setProjectDetail(String projectDetail) {
		this.projectDetail = projectDetail;
	}

	public String getUrlAddress() {
		return urlAddress;
	}

	public void setUrlAddress(String urlAddress) {
		this.urlAddress = urlAddress;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getDeadline() {
		return deadline;
	}

	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}

	public String getAgree() {
		return agree;
	}

	public void setAgree(String agree) {
		this.agree = agree;
	}

	public String getNeededMember_manually() {
		return neededMember_manually;
	}

	public void setNeededMember_manually(String neededMember_manually) {
		this.neededMember_manually = neededMember_manually;
	}

	public String getWorkPeriod_manually() {
		return workPeriod_manually;
	}

	public void setWorkPeriod_manually(String workPeriod_manually) {
		this.workPeriod_manually = workPeriod_manually;
	}
	
	
}
