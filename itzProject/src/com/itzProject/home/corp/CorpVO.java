package com.itzProject.home.corp;

public class CorpVO {
	private int corp_no;
	private String corpcode;
	private String company_name;
	private String ceo_name;
	private String company_zipcode;
	private String company_addr1;
	private String company_addr2;
	private String job_category;
	private String choice_company;
	private String corp_charge;
	private String tel;
	private String corp_email;
	private String corp_pwd;
	private String agree;
	private String joindate;
	private String corp_pic;
	
	private String logStatus="0";
	
	public CorpVO() {
	}
	
	public CorpVO(int corp_no, String corpcode, String company_name, String ceo_name, String company_zipcode, String company_addr1, String company_addr2, String job_category, String choice_company, String corp_charge, String tel, String corp_email, String corp_pwd, String agree, String joindate, String corp_pic) {
		this.corp_no = corp_no;
		this.corpcode = corpcode;
		this.company_name = company_name;
		this.ceo_name = ceo_name;
		this.company_zipcode = company_zipcode;
		this.company_addr1 = company_addr1;
		this.company_addr2 = company_addr2;
		this.job_category = job_category;
		this.choice_company = choice_company;
		this.corp_charge = corp_charge;
		this.tel = tel;
		this.corp_email = corp_email;
		this.corp_pwd = corp_pwd;
		this.agree = agree;
		this.joindate = joindate;
		this.corp_pic = corp_pic;
	}
	
	public String toString() {
		return corp_no+"/"+corpcode+"/"+company_name+"/"+ceo_name+"/"+company_zipcode+"/"+company_addr1+"/"+company_addr2+"/"+job_category+"/"+choice_company+"/"+corp_charge+"/"+tel+"/"+corp_email+"/"+corp_pwd+"/"+agree+"/"+joindate+"/"+corp_pic;
	}

	public int getCorp_no() {
		return corp_no;
	}

	public void setCorp_no(int corp_no) {
		this.corp_no = corp_no;
	}

	public String getCorpcode() {
		return corpcode;
	}

	public void setCorpcode(String corpcode) {
		this.corpcode = corpcode;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getCeo_name() {
		return ceo_name;
	}

	public void setCeo_name(String ceo_name) {
		this.ceo_name = ceo_name;
	}

	public String getCompany_zipcode() {
		return company_zipcode;
	}

	public void setCompany_zipcode(String company_zipcode) {
		this.company_zipcode = company_zipcode;
	}

	public String getCompany_addr1() {
		return company_addr1;
	}

	public void setCompany_addr1(String company_addr1) {
		this.company_addr1 = company_addr1;
	}

	public String getCompany_addr2() {
		return company_addr2;
	}

	public void setCompany_addr2(String company_addr2) {
		this.company_addr2 = company_addr2;
	}

	public String getJob_category() {
		return job_category;
	}

	public void setJob_category(String job_category) {
		this.job_category = job_category;
	}

	public String getChoice_company() {
		return choice_company;
	}

	public void setChoice_company(String choice_company) {
		this.choice_company = choice_company;
	}

	public String getCorp_charge() {
		return corp_charge;
	}

	public void setCorp_charge(String corp_charge) {
		this.corp_charge = corp_charge;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getCorp_email() {
		return corp_email;
	}

	public void setCorp_email(String corp_email) {
		this.corp_email = corp_email;
	}

	public String getCorp_pwd() {
		return corp_pwd;
	}

	public void setCorp_pwd(String corp_pwd) {
		this.corp_pwd = corp_pwd;
	}

	public String getAgree() {
		return agree;
	}

	public void setAgree(String agree) {
		this.agree = agree;
	}

	public String getJoindate() {
		return joindate;
	}

	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}

	public String getCorp_pic() {
		return corp_pic;
	}

	public void setCorp_pic(String corp_pic) {
		this.corp_pic = corp_pic;
	}

	public String getLogStatus() {
		return logStatus;
	}

	public void setLogStatus(String logStatus) {
		this.logStatus = logStatus;
	}
}
