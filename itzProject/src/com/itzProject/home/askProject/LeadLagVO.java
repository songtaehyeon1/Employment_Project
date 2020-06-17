package com.itzProject.home.askProject;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class LeadLagVO {
	private int leadNo;
	private String leadSubject;
	private int lagNo;
	private String lagSubject;
	public LeadLagVO() {

	}
	public int getLeadNo() {
		return leadNo;
	}
	public void setLeadNo(int leadNo) {
		this.leadNo = leadNo;
	}
	public String getLeadSubject() {
		return leadSubject;
	}
	public void setLeadSubject(String leadSubject) {
		this.leadSubject = leadSubject;
	}
	public int getLagNo() {
		return lagNo;
	}
	public void setLagNo(int lagNo) {
		this.lagNo = lagNo;
	}
	public String getLagSubject() {
		return lagSubject;
	}
	public void setLagSubject(String lagSubject) {
		this.lagSubject = lagSubject;
	}
	
	
}
