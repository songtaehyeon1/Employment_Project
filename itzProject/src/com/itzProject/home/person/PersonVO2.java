package com.itzProject.home.person;

public class PersonVO2 {
	private int personno;
	private int resume_no;
	private int opentype;
	
	private String person_email;
	private String pwd;
	private String name;
	private String birth;
	private String gender;
	private String tel;
	private String agree;
	private String joindate;
	
	private String logStatus="0";
	
	public PersonVO2() {
	}
	
	public PersonVO2(int personno, int resume_no, int opentype, String person_email, String pwd, String name, String birth, String gender, String tel, String agree) {
		this.personno = personno;
		this.resume_no = resume_no;
		this.opentype = opentype;
		this.person_email = person_email;
		this.pwd = pwd;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.tel = tel;
		this.agree = agree;
		this.joindate = joindate;
	}

	public String toString() {
		return personno+"/"+resume_no+"/"+opentype+"/"+person_email+"/"+pwd+"/"+name+"/"+birth+"/"+gender+"/"+tel+"/"+agree+"/"+joindate;
	}

	public int getPersonno() {
		return personno;
	}

	public void setPersonno(int personno) {
		this.personno = personno;
	}

	public int getResume_no() {
		return resume_no;
	}

	public void setResume_no(int resume_no) {
		this.resume_no = resume_no;
	}

	public int getOpentype() {
		return opentype;
	}

	public void setOpentype(int opentype) {
		this.opentype = opentype;
	}

	public String getperson_email() {
		return person_email;
	}

	public void setperson_email(String person_email) {
		this.person_email = person_email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
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

	public String getLogStatus() {
		return logStatus;
	}

	public void setLogStatus(String logStatus) {
		this.logStatus = logStatus;
	}
	
}
