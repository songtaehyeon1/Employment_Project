package com.itzProject.home.person;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class CommandEmailCodeChk implements CommandService {

	public CommandEmailCodeChk() {
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String sesId = req.getSession().getId();
		String email_code = req.getParameter("email_code");
		System.out.println("code="+email_code);//
		System.out.println("sesid="+sesId);//
		if(sesId.equals(email_code)) {
			req.setAttribute("code", "yes");
		}else if(!sesId.equals(email_code)) {
			req.setAttribute("code", "no");
		};	
		return "/member/emailCode.jsp";
	}
}
