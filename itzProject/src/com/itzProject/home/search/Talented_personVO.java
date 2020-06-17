package com.itzProject.home.search;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Talented_personVO {

	private String userImg;
	private String userName;
	private String gender;
	
	private Date birth;
	private String birthY;
	
	private int age;
	private int careerYear;
	private String title;
	private String schoolType;
	private String companyLocation;
	private String occupation_type;
	private String h_major;
	private String u_major;
	private String u_majorEndType;
	
	public Talented_personVO() {
	}

	public String getUserImg() {
		return userImg;
	}

	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		if(gender.equals("M")) {
			this.gender = "³²";
		}else if(gender.equals("F")) {
			this.gender = "¿©";
		}
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		Calendar c = Calendar.getInstance();
		this.age = c.getWeekYear() - Integer.parseInt(birth.toString().substring(0, birth.toString().indexOf("-")));
		
		SimpleDateFormat sd = new SimpleDateFormat("yyyy");
		String date = sd.format(birth);
		this.birthY = date;
		
		this.birth = birth;
	}

	public String getBirthY() {
		return birthY;
	}

	public void setBirthY(String birthY) {
		this.birthY = birthY;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getCareerYear() {
		return careerYear;
	}

	public void setCareerYear(int careerYear) {
		this.careerYear = careerYear;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSchoolType() {
		return schoolType;
	}

	public void setSchoolType(String schoolType) {
		this.schoolType = schoolType;
	}

	public String getCompanyLocation() {
		return companyLocation;
	}

	public void setCompanyLocation(String companyLocation) {
		this.companyLocation = companyLocation;
	}

	public String getOccupation_type() {
		return occupation_type;
	}

	public void setOccupation_type(String occupation_type) {
		this.occupation_type = occupation_type;
	}

	public String getH_major() {
		return h_major;
	}

	public void setH_major(String h_major) {
		this.h_major = h_major;
	}

	public String getU_major() {
		return u_major;
	}

	public void setU_major(String u_major) {
		this.u_major = u_major;
	}

	public String getU_majorEndType() {
		return u_majorEndType;
	}

	public void setU_majorEndType(String u_majorEndType) {
		this.u_majorEndType = u_majorEndType;
	}

}
